package uy.gub.imm.sae.test.business;
/*
 * SAE - Sistema de Agenda Electronica
 * Copyright (C) 2009  IMM - Intendencia Municipal de Montevideo
 *
 * This file is part of SAE.

 * SAE is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.ejb.EJB;
import javax.persistence.EntityManager;

import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.junit.Test;
import org.junit.runner.RunWith;

import uy.gub.imm.sae.business.ejb.facade.AgendaGeneral;
import uy.gub.imm.sae.business.ejb.facade.AgendarReservas;
import uy.gub.imm.sae.business.ejb.facade.Recursos;
import uy.gub.imm.sae.common.Utiles;
import uy.gub.imm.sae.common.VentanaDeTiempo;
import uy.gub.imm.sae.common.enumerados.Estado;
import uy.gub.imm.sae.entity.Agenda;
import uy.gub.imm.sae.entity.AgrupacionDato;
import uy.gub.imm.sae.entity.DatoASolicitar;
import uy.gub.imm.sae.entity.Disponibilidad;
import uy.gub.imm.sae.entity.Recurso;
import uy.gub.imm.sae.entity.Reserva;
import uy.gub.imm.sae.exception.AccesoMultipleException;
import uy.gub.imm.sae.exception.ApplicationException;
import uy.gub.imm.sae.exception.BusinessException;
import uy.gub.imm.sae.exception.UserCommitException;
import uy.gub.imm.sae.exception.UserException;
import uy.gub.imm.sae.exception.ValidacionException;
import uy.gub.imm.sae.test.utils.TestContextManagerEJBClient;
import uy.gub.imm.sae.test.utils.ejb.TestContextManagerService;

@RunWith(Arquillian.class)
public class AgendarReservasTest {

	private static final String agendaNombre = "test-a01";
	private static final String prefijoRecursoNombre = "recurso";
	private static final String recursoNombre = prefijoRecursoNombre + "1";

	private static Date ayer;
	private static Date hoy;
	private static Date ahora;
	private static Date maniana;
	private static Date pasadoManiana;

	
	@EJB(mappedName = "test/TestContextManagerBean/remote")
	private TestContextManagerService testManager;

	
	@EJB(mappedName = "SAE-EAR/AgendaGeneralBean/local")
	private AgendaGeneral ejbAgendaGeneral;
	@EJB(mappedName = "SAE-EAR/AgendarReservasBean/local")
	private AgendarReservas ejbAgendasReservas;
	@EJB(mappedName = "SAE-EAR/RecursosBean/local")
	private Recursos ejbRecursos;

	@Deployment
	public static JavaArchive createTestArchive() {

		return TestContextManagerEJBClient.getInstance().createTestContextManagerServiceArtifact();

	}

	@Test
	public void test() {
		
		TestContextManagerEJBClient.getInstance();
		
		TestContextManagerEJBClient.getInstance().ejbLogin();
		
		
		try {
			initContext();		
		
			
			
			
			
			//1- Obtengo la agenda
			Agenda agenda = ejbAgendasReservas.consultarAgendaPorNombre(agendaNombre);

			//2- Obtengo el recurso
			Recurso recurso = ejbAgendasReservas.consultarRecursoPorNombre(agenda, recursoNombre);
			assertTrue(recurso != null);
			assertEquals(recursoNombre, recurso.getNombre());
			
			//3- Obtengo la ventana del calendario
			VentanaDeTiempo ventana = ejbAgendasReservas.obtenerVentanaCalendarioIntranet(recurso);
			//La ventana debe indicar: hoy, mañana,pasadoMañana.
			assertTrue(ventana.getFechaFinal().after(ventana.getFechaInicial()));
			assertEquals(hoy, ventana.getFechaInicial());
			assertEquals(pasadoManiana, ventana.getFechaFinal());

			//3.1- Modifico la ventana para que abarque ayer, asi chequeo que no se obtengan cupos 
			//     para dias del pasado o anteriores al inicio de disponibilidades
			ventana.setFechaInicial(ayer);
			
			//4- Obtengo los cupos X dia para todo el calendario
			List<Integer> cuposXdia = ejbAgendasReservas.obtenerCuposPorDia(recurso, ventana);
			//Son 4 dias de -1, x, 0|120 y 0|120 cupos donde x < 120 pues es hoy y dependiendo de la hora del testing descarta los de la mañana
			//En el caso de los de 120 alguno puede ser 0 si cae en un domingo
			assertEquals(4, cuposXdia.size());
			assertEquals(Integer.valueOf(-1), cuposXdia.get(0));
			assertTrue(cuposXdia.get(1) < 120); //Si estamos dentro del horario en que se generó disponibilidades.
			assertTrue(Integer.valueOf(120) == cuposXdia.get(2) || Integer.valueOf(120) == cuposXdia.get(3));

			//5- Obtengo las disponibilidades para un dia puntual dentro del calendario
			Date dia = cuposXdia.get(2)!= 0 ? maniana : pasadoManiana;
			VentanaDeTiempo ventanaManiana = new VentanaDeTiempo();
			ventanaManiana.setFechaInicial(dia);
			ventanaManiana.setFechaFinal(Utiles.time2FinDelDia(dia));
			List<Disponibilidad> disponibiliades = ejbAgendasReservas.obtenerDisponibilidades(recurso, ventanaManiana);
			assertEquals(24, disponibiliades.size());
			Disponibilidad d1 = disponibiliades.get(0);  // 9:00
			Disponibilidad d2 = disponibiliades.get(8);  //13:00
			Disponibilidad d3 = disponibiliades.get(13); //14:30
			Calendar cal = new GregorianCalendar();
			cal.setTime(d1.getHoraInicio());
			assertEquals(9, cal.get(Calendar.HOUR_OF_DAY));
			assertEquals(0, cal.get(Calendar.MINUTE));
			assertEquals(dia, d1.getFecha());
			cal.setTime(d2.getHoraInicio());
			assertEquals(13, cal.get(Calendar.HOUR_OF_DAY));
			assertEquals(0, cal.get(Calendar.MINUTE));
			assertEquals(dia, d2.getFecha());
			cal.setTime(d3.getHoraInicio());
			assertEquals(14, cal.get(Calendar.HOUR_OF_DAY));
			assertEquals(30, cal.get(Calendar.MINUTE));
			assertEquals(dia, d3.getFecha());

			//6- Marco la reserva
			Reserva reserva1 = ejbAgendasReservas.marcarReserva(d1);
			assertEquals(Estado.P, reserva1.getEstado());
			assertEquals(1, reserva1.getDisponibilidades().size());
			assertEquals(d1.getId(), reserva1.getDisponibilidades().get(0).getId());

			//7- Intento marcar nuevamente, pero ahora ya no tendré cupos y fallará
			try {
				ejbAgendasReservas.marcarReserva(d1);
				fail();
			} catch (UserCommitException e) {
				assertEquals("AE10069", e.getCodigoError());
			} catch (BusinessException e) {
				e.printStackTrace();
				fail();
			} catch (UserException e) {
				e.printStackTrace();
				fail();
			}
			
			//8- Desmarco la reserva
			ejbAgendasReservas.desmarcarReserva(reserva1);
			
			//9- Marco la reserva ahora con éxito.
			reserva1 = ejbAgendasReservas.marcarReserva(d1);
			assertEquals(Estado.P, reserva1.getEstado());
			assertEquals(1, reserva1.getDisponibilidades().size());
			assertEquals(d1.getId(), reserva1.getDisponibilidades().get(0).getId());
			
			//10- Consulto los campos del recurso
			List<AgrupacionDato> agrupaciones = ejbRecursos.consultarDefinicionDeCampos(recurso);
			List<DatoASolicitar> campos = new ArrayList<DatoASolicitar>();
			for(AgrupacionDato agrupacion: agrupaciones) {
				campos.addAll(agrupacion.getDatosASolicitar());
			}
			assertEquals(0, campos.size());
			
			/*
			assertEquals("Campo 1", campos.get(0).getNombre());
			
			//11- Cargo los datos de la reserva
			Set<DatoReserva> datosDeLaReserva = new HashSet<DatoReserva>();
			DatoReserva dato1 = new DatoReserva();
			dato1.setDatoASolicitar(campos.get(0));
			dato1.setValor("valor 1");
			datosDeLaReserva.add(dato1);
			reserva1.setDatosReserva(datosDeLaReserva);
			*/
			
			//12- Confirmo la reserva
			ejbAgendasReservas.confirmarReserva(reserva1,false,false);
			EntityManager em = testManager.getEntityManager();
			reserva1 = em.find(Reserva.class, reserva1.getId());
			assertEquals(Estado.R, reserva1.getEstado());
			assertEquals(0, reserva1.getDatosReserva().size());
			//assertEquals("valor 1", reserva1.getDatosReserva().iterator().next().getValor());
			
			
			
			//13- Chequeo disminución de cupos

			
			
		} catch (ApplicationException e) {
			throw new RuntimeException(e);
		} catch (BusinessException e) {
			throw new RuntimeException(e);
		} catch (ValidacionException e) {
			throw new RuntimeException(e);
		} catch (AccesoMultipleException e) {
			throw new RuntimeException(e);
		} catch (UserException e) {
			throw new RuntimeException(e);
		} finally {
			TestContextManagerEJBClient.getInstance().ejbLogout();
		}
	}

	
	private void initContext() {
		
		Calendar cal = Calendar.getInstance();
		hoy = cal.getTime();
		cal.add(Calendar.DAY_OF_MONTH, -1);
		ayer = cal.getTime();
		cal.add(Calendar.DAY_OF_MONTH, 2);
		maniana = cal.getTime();
		cal.add(Calendar.DAY_OF_MONTH, 1);
		pasadoManiana = cal.getTime();

		testManager.cleanContext(agendaNombre);
		testManager.setupContext(agendaNombre, prefijoRecursoNombre, 1);
	}
	
	


	/*
	 * Chequeo caso en que no hay disp
	 */
	/*
	@Test
	public void chequeoVentanaCalendarioNula() {
		
		EntityManager em = testManager.getEntityManager();
		
		@SuppressWarnings("unused")
		Recurso recurso2 = (Recurso) em.createQuery(
		"select r from Recurso r " +
		"where  r.nombre = :rn and r.agenda.nombre = :an"
		)
		.setParameter("rn", "Recurso 2")
		.setParameter("an", "AGENDA TEST 1")
		.getSingleResult();

		//Debe devolver una ventana anulada, es decir, con fecha fin anterior a la fecha de inicio.
		try {
			VentanaDeTiempo ventana = ejbAgendasReservas.obtenerVentanaCalendarioInternet(recurso2);
			assertEquals(maniana, ventana.getFechaInicial());
			assertEquals(hoy, ventana.getFechaFinal());
		} catch (Exception e) {
			e.printStackTrace();
			fail();
		}
	}
	
	
	@BeforeClass
	public static void loadData() {

		unloadData();

		EntityManager em = getEntityManager();
		em.getTransaction().begin();
		
		try {

//		TimeZone tzMontevideo = TimeZone.getTimeZone("America/Montevideo");
	//	int rawOffset = tzMontevideo.getRawOffset();
	//	int hour = rawOffset / (60*60*1000);
	//	int min = Math.abs(rawOffset / (60*1000)) % 60;
	//	TimeZone.setDefault(tzMontevideo);

		
		ahora = new Date();

		Calendar cal = new GregorianCalendar();

		cal.setTime(ahora);
		hoy = Utiles.time2InicioDelDia(cal.getTime());
		
		cal.setTime(ahora);
		cal.add(Calendar.DATE, -1);
		ayer = Utiles.time2InicioDelDia(cal.getTime());
		
		cal.setTime(ahora);
		cal.add(Calendar.DATE, 1);
		maniana = Utiles.time2InicioDelDia(cal.getTime());

		cal.setTime(ahora);
		cal.add(Calendar.DATE, 2);
		pasadoManiana = Utiles.time2InicioDelDia(cal.getTime());

		Agenda a = new Agenda();
		a.setNombre("AGENDA TEST 1");
		a = getAgendasEJB().crearAgenda(a);
		
		Recurso r0 = new Recurso();
		r0.setNombre("Recurso 0");
		r0.setFechaInicio(ayer);
		r0.setFechaInicioDisp(maniana);
		r0.setVentanaDiasMinimos(5);
		r0.setVentanaCuposMinimos(0);
		r0.setCantDiasAGenerar(10);
		r0.setReservaMultiple(false);
		r0 = getRecursosEJB().crearRecurso(a, r0);
		getRecursosEJB().eliminarRecurso(r0);

		Recurso r1 = new Recurso();
		r1.setNombre("Recurso 1");
		r1.setFechaInicio(ayer);
		r1.setFechaInicioDisp(maniana);
		r1.setVentanaDiasMinimos(5);
		r1.setVentanaCuposMinimos(0);
		r1.setCantDiasAGenerar(10);
		r1.setReservaMultiple(false);
		r1 = getRecursosEJB().crearRecurso(a, r1);
		AgrupacionDato ag = new AgrupacionDato();
		ag.setNombre("Grupo 1");
		ag.setOrden(1);
		ag = getRecursosEJB().agregarAgrupacionDato(r1, ag);
		DatoASolicitar campo1 = new DatoASolicitar();
		campo1.setNombre("Campo 1");
		campo1.setEtiqueta("Etiqueta 1");
		campo1.setTipo(Tipo.STRING);
		campo1.setRequerido(false);
		campo1.setEsClave(false);
		campo1.setLargo(30);
		campo1.setFila(1);
		campo1.setColumna(1);
		getRecursosEJB().agregarDatoASolicitar(r1, ag, campo1);
		
		Recurso r2 = new Recurso();
		r2.setNombre("Recurso 2");
		r2.setFechaInicio(ahora);
		r2.setFechaInicioDisp(maniana);
		r2.setFechaFinDisp(pasadoManiana);
		r2.setVentanaDiasMinimos(5);
		r2.setVentanaCuposMinimos(0);
		r2.setCantDiasAGenerar(10);
		r2.setReservaMultiple(false);
		r2 = getRecursosEJB().crearRecurso(a, r2);
		
		Recurso r3 = new Recurso();
		r3.setNombre("Recurso 3");
		r3.setFechaInicio(maniana);
		r3.setFechaInicioDisp(maniana);
		r3.setFechaFinDisp(pasadoManiana);
		r3.setVentanaDiasMinimos(5);
		r3.setVentanaCuposMinimos(0);
		r3.setCantDiasAGenerar(10);
		r3.setReservaMultiple(false);
		r3 = getRecursosEJB().crearRecurso(a, r3);

		VentanaDeTiempo v = new VentanaDeTiempo();
		v.setFechaInicial(ayer);
		v.setFechaFinal(pasadoManiana);
		r1 = em.find(Recurso.class, r1.getId());
		generarDisponibilidades(em, r1, v);
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.getTransaction().commit();
		}
	}


	//@AfterClass
	@SuppressWarnings("unchecked")
	public static void unloadData() {
		
		EntityManager em = getEntityManager();
		em.getTransaction().begin();
		
		try {
			
		Agenda a = (Agenda)em.createQuery("from Agenda a where a.nombre = :n")
			.setParameter("n", "AGENDA TEST 1")
			.getSingleResult();
		
		//TODO quitar hacerlo por recurso
		List<Reserva> reservas = em.createQuery(
				"select r " +
				"from Reserva r join r.disponibilidades d " +
				"where d.recurso.agenda = :a ")
				.setParameter("a", a)
				.getResultList();
		
		for (Reserva reserva: reservas) {
			reserva.getDisponibilidades().clear();
			for(DatoReserva dato: reserva.getDatosReserva()) {
				em.remove(dato);
			}
			em.remove(reserva);
		}
		em.flush(); //Necesito vaciar la relacion n a n para que el delete masivo no viole restricciones de integridad
		

		//Borro disponibilidades, recursos, agrupacion de datos, datos a solicitar y valores posibles
		for(Recurso r : a.getRecursos()) {
			
			//Borro disponibilidades
			em.createQuery("delete from Disponibilidad d where d.recurso = :r")
			.setParameter("r", r)
			.executeUpdate();
			
			//Borro datos a solicitar y agrupaciones
			for(AgrupacionDato agrupacion: r.getAgrupacionDatos()) {
				for(DatoASolicitar campo: agrupacion.getDatosASolicitar()) {
					for (ValorPosible valor: campo.getValoresPosibles()) {
						em.remove(valor);
					}
					em.remove(campo);
				}
				em.remove(agrupacion);
			}
			
			//Borro el recurso
			em.remove(r);
		}
		em.flush();
		
		//Borro la agenda
		em.remove(a);
		
		} catch (Exception e) {
			//e.printStackTrace();
		} finally {
			em.getTransaction().commit();
		}
	}

	*/


	
}
