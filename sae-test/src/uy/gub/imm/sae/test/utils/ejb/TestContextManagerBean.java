package uy.gub.imm.sae.test.utils.ejb;

import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import uy.gub.imm.sae.business.ejb.facade.AgendaGeneral;
import uy.gub.imm.sae.business.ejb.facade.Agendas;
import uy.gub.imm.sae.business.ejb.facade.Disponibilidades;
import uy.gub.imm.sae.business.ejb.facade.Recursos;
import uy.gub.imm.sae.entity.Agenda;
import uy.gub.imm.sae.entity.Recurso;

@Stateless
public class TestContextManagerBean implements TestContextManagerLocal, TestContextManagerRemote {

	@PersistenceContext(unitName = "SAE-EJB-TEST")
	private EntityManager entityManager;

	@Resource
	private SessionContext ctx;

	@EJB(mappedName = "SAE-EAR/AgendaGeneralBean/remote")
	private AgendaGeneral agendaGeneralEJB;
	@EJB(mappedName = "SAE-EAR/AgendasBean/remote")
	private Agendas agendasEJB;
	@EJB(mappedName = "SAE-EAR/RecursosBean/remote")
	private Recursos recursosEJB;
	@EJB(mappedName = "SAE-EAR/DisponibilidadesBean/remote")
	private Disponibilidades disponibilidadesEJB;
	
	@Override
	public void setupContext(String agendaNombre, String prefijoRecursoNombre, int cantRecursos) {

		
		try {

			Agenda a = new Agenda();
			a.setNombre(agendaNombre);
			a.setDescripcion("Desc " + agendaNombre);
			a = agendasEJB.crearAgenda(a);

			Date hoy = new Date();
			
			for (int i = 1; i <= cantRecursos; i++) {
				Recurso r = new Recurso();
				r.setNombre(prefijoRecursoNombre + i);
				r.setDescripcion("Desc " + prefijoRecursoNombre + i);
				r.setFechaInicio(hoy);
				r.setFechaInicioDisp(hoy);
				r.setDiasInicioVentanaInternet(0);
				r.setDiasVentanaInternet(20);
				r.setDiasInicioVentanaIntranet(0);
				r.setDiasVentanaIntranet(20);
				r.setVentanaCuposMinimos(0);
				r.setCantDiasAGenerar(1000);
				r.setMostrarNumeroEnLlamador(true);
				r.setMostrarNumeroEnTicket(true);
				r.setReservaMultiple(false);
				r.setSabadoEsHabil(true);
				
				recursosEJB.crearRecurso(a, r);
				
			}


			int cupo = 10;
			int frecuencia = 30;
			Calendar cal = Calendar.getInstance();
			cal.set(Calendar.MINUTE,0);
			cal.set(Calendar.SECOND, 0);
			cal.set(Calendar.MILLISECOND,0);

			hoy = cal.getTime();
			cal.set(Calendar.HOUR_OF_DAY, 9);
			Date horaDesde = cal.getTime();
			cal.set(Calendar.HOUR_OF_DAY, 15);
			Date horaHasta = cal.getTime();
			
			for (Recurso recurso : agendaGeneralEJB.consultarRecursos(a)) {
				
				disponibilidadesEJB.generarDisponibilidadesNuevas(recurso, hoy, horaDesde, horaHasta, frecuencia, cupo);

			}

			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}

	@Override
	public void cleanContext(String agendaNombre) {

		try {
			Agenda a = (Agenda) entityManager
					.createQuery("from Agenda a where a.nombre = :nombre")
					.setParameter("nombre", agendaNombre).getSingleResult();

			for (Recurso rec : a.getRecursos()) {

				entityManager
						.createNativeQuery(
								"delete from ae_reservas_disponibilidades "
										+ "where aedi_id in (select id from ae_disponibilidades where aere_id = :rId)")
						.setParameter("rId", rec.getId()).executeUpdate();

				entityManager
						.createNativeQuery(
								"delete from ae_disponibilidades where aere_id = :rId")
						.setParameter("rId", rec.getId()).executeUpdate();

				entityManager
						.createQuery(
								"delete from DatoDelRecurso info where info.recurso.id = :rId")
						.setParameter("rId", rec.getId()).executeUpdate();

				// Borrar reservas colgadas
				// Borrar asociacion de validacions y datos a solicitar y
				// valores

				if (rec.getTextoRecurso() != null)
					entityManager.remove(rec.getTextoRecurso());
				entityManager.remove(rec);
			}

			if (a.getTextoAgenda() != null)
				entityManager.remove(a.getTextoAgenda());
			entityManager.remove(a);

		} catch (NoResultException e) {

		}
	}

}
