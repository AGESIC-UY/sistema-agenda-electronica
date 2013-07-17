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

package uy.gub.imm.sae.web.mbean.administracion;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

import javax.ejb.EJB;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;

import uy.gub.imm.sae.business.ejb.facade.Disponibilidades;
import uy.gub.imm.sae.common.DisponibilidadReserva;
import uy.gub.imm.sae.common.Utiles;
import uy.gub.imm.sae.common.VentanaDeTiempo;
import uy.gub.imm.sae.common.enumerados.Dia;
import uy.gub.imm.sae.web.common.BaseMBean;
import uy.gub.imm.sae.web.common.CeldaDia;

public class DispSemanalMBean extends BaseMBean {

	public static final String MSG_ID = "pantalla";
	
	@EJB(mappedName="SAE-EAR/DisponibilidadesBean/remote")
	Disponibilidades disponibilidadesBean;
	
	private SessionMBean sessionMBean;

	private Date semanaPatron;
	private List<List<Object>> horariosSemanales;
	
	private Date periodoDesde;
	private Date periodoHasta;
	
	public SessionMBean getSessionMBean() {
		return sessionMBean;
	}
	public void setSessionMBean(SessionMBean sessionMBean) {
		this.sessionMBean = sessionMBean;
	}


	public void beforePhase(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			sessionMBean.setPantallaTitulo("Generar disponibilidades basados en una semana");
		}
	}
	
	
	public Date getSemanaPatron() {
		return semanaPatron;
	}
	public void setSemanaPatron(Date semanaPatron) {
		this.semanaPatron = semanaPatron;
	}
	
	public void consultarSemana(ActionEvent event) {

		if (sessionMBean.getRecursoMarcado() == null) {
			addErrorMessage("Debe seleccionar un recurso", MSG_ID);
			FacesContext.getCurrentInstance().renderResponse();
		}

		if (semanaPatron == null) {
			addErrorMessage("Debe seleccionar una semana como patrón", MSG_ID);
		}
		else {
			VentanaDeTiempo semana = obtenerSemana(semanaPatron);

			horariosSemanales = null;
			
			try {
				List<DisponibilidadReserva> disponibilidades = disponibilidadesBean.obtenerDisponibilidadesReservas(sessionMBean.getRecursoMarcado(), semana);
				horariosSemanales = armarHorariosSemanales(disponibilidades);
				
			} catch (Exception e) {
				addErrorMessage(e, MSG_ID);
			}
		}
	}
	
	private VentanaDeTiempo obtenerSemana(Date dia) {

		Calendar c = Calendar.getInstance();
		c.setTime(dia);
		c.set(Calendar.DAY_OF_WEEK, c.getFirstDayOfWeek());
		Date semanaInicio = Utiles.time2InicioDelDia(c.getTime());

		c.set(Calendar.DAY_OF_WEEK, c.getFirstDayOfWeek() + 6);
		Date semanaFin = Utiles.time2FinDelDia(c.getTime());
		
		VentanaDeTiempo v = new VentanaDeTiempo();
		v.setFechaInicial(semanaInicio);
		v.setFechaFinal(semanaFin);
		
		return v;
	}
	
	public List<List<Object>> getHorariosSemanales() {
		return horariosSemanales;
	}
	
	public List<Dia> getDiasDeLaSemana() {
		
		List<Dia> dias = new ArrayList<Dia>();
		for (Dia d : Dia.values()) {
			dias.add(d);
		}
		return dias;
	}
	
	public Date getPeriodoDesde() {
		return periodoDesde;
	}
	public void setPeriodoDesde(Date periodoDesde) {
		this.periodoDesde = periodoDesde;
	}
	public Date getPeriodoHasta() {
		return periodoHasta;
	}
	public void setPeriodoHasta(Date periodoHasta) {
		this.periodoHasta = periodoHasta;
	}

	
	public void generar(ActionEvent event) {
		

		if (sessionMBean.getRecursoMarcado() == null) {
			addErrorMessage("Debe seleccionar un recurso", MSG_ID);
			FacesContext.getCurrentInstance().renderResponse();
		}


		if (semanaPatron == null) {
			addErrorMessage("Debe seleccionar una semana como patrón", MSG_ID);
		}
		else if (periodoDesde == null || periodoHasta == null) {
			addErrorMessage("Debe indicar un período para la generación de disponibilidades", MSG_ID);
		}
		else if (periodoDesde.after(periodoHasta)) {
			addErrorMessage("La fecha hasta debe ser igual o posterior que la fecha desde", MSG_ID);
		}
		else {
			VentanaDeTiempo semana = obtenerSemana(semanaPatron);
			boolean haySolapamiento = !(semana.getFechaFinal().before(periodoDesde) || semana.getFechaInicial().after(periodoHasta));
			
			if (haySolapamiento) {
				addErrorMessage("El período de generación se solapa con la semana elegida", MSG_ID);
			}
			else {
				
				VentanaDeTiempo periodo = new VentanaDeTiempo();
				periodo.setFechaInicial(periodoDesde);
				periodo.setFechaFinal(periodoHasta);
				
				try {
					disponibilidadesBean.generarPatronSemana(sessionMBean.getRecursoMarcado(), semana, periodo);
				} catch (Exception e) {
					addErrorMessage(e, MSG_ID);
				}
				
			}
		}
	}
	
	private List<List<Object>> armarHorariosSemanales(List<DisponibilidadReserva> disponibilidades) {
		
		//Esta lista de horas representa la primer columna de la matriz de horarios semanales
		//y por lo tanto determina la cantidad de filas de la matriz.
		List<Date> horas = obtenerHorasInicioFin(disponibilidades);
		
		//Matriz de horarios semanales inicializada con cada hora por fila
		List<List<Object>> matrizHorarios = armarHorariosSemanalesVacios(horas);
		
		//Se completan las celdas de la matriz configurando para cada <hora,dia> los valores respectivos
		//del objeto CeldaDia de forma tal que represente correctamente la disponibilidad que cae en dicho intervalo de tiempo.
		llenarHorariosSemanales(matrizHorarios, disponibilidades);
		
		return matrizHorarios;
	}

	//Obtiene todas las horas de inicio y fin ordenadas y sin repetidos para la lista de disponibilidades.
	private List<Date> obtenerHorasInicioFin(List<DisponibilidadReserva> disponibilidades) {
		
		Date hoy = Calendar.getInstance().getTime();
		
		SortedSet<Date> horas = new TreeSet<Date>();

		for (DisponibilidadReserva dr : disponibilidades) {
			Date i = setDia(dr.getHoraInicio(), hoy);
			if (! horas.contains(i)) {
				horas.add(i);
			}
			
			Date f = setDia(dr.getHoraFin(), hoy);
			if (! horas.contains(f)) {
				horas.add(f);
			}
		}
		
		List<Date> listaHoras = new ArrayList<Date>(horas.size());
		for (Date h : horas) {
			listaHoras.add(h);
		}
		
		return listaHoras;
	}
	
	//Crea la matriz de horas x diasDeLaSemana con tantas filas como horas y 7 columnas para cada dia.
	//En la primer columna incluye las horas respectivas
	private List<List<Object>> armarHorariosSemanalesVacios(List<Date> horas) {
		
		List<List<Object>> matriz = new ArrayList<List<Object>>(horas.size());
		for (Date h : horas) {
			List<Object> horarioSemanal = new ArrayList<Object>(8);
			horarioSemanal.add(h);
			for (int i = 0; i < 7; i++) {
				horarioSemanal.add(new CeldaDia());
			}
			matriz.add(horarioSemanal);
		}
		return matriz;
	}
	
	//Para cada celda <hora,dia> de la matriz (CeldaDia) se configura el objeto CeldaDia respectivo
	//de forma tal que represente correctamente la disponibilidad que cae en dicho intervalo de tiempo.
	private void llenarHorariosSemanales(List<List<Object>> horariosSemanales, List<DisponibilidadReserva> disponibilidades) {
	
		//Armo indice por hora para acceder orden 1 a las filas de la matriz
		Map<Date, Integer> filaIndice = new HashMap<Date, Integer>();
		for (int i = 0; i < horariosSemanales.size(); i++) {
			filaIndice.put((Date)horariosSemanales.get(i).get(0), i);
		}
		
		//Armo indice por dia para acceder orden 1 a las columnas de la matriz
		//Comienza en 1 pues la primer columna son las horas y el resto son los dias de lunes a domingo
		Map<Integer, Integer> columnaIndice = new HashMap<Integer, Integer>();
		columnaIndice.put(Calendar.MONDAY, 1);
		columnaIndice.put(Calendar.TUESDAY, 2);
		columnaIndice.put(Calendar.WEDNESDAY, 3);
		columnaIndice.put(Calendar.THURSDAY, 4);
		columnaIndice.put(Calendar.FRIDAY, 5);
		columnaIndice.put(Calendar.SATURDAY, 6);
		columnaIndice.put(Calendar.SUNDAY, 7);
	
		Date dia = null;
		if (! horariosSemanales.isEmpty()) {
			dia = (Date) horariosSemanales.get(0).get(0);
		}
		
		boolean esPar = false;
		
		//Para cada disponibilidad lleno las celdas que correspondan
		for (DisponibilidadReserva d : disponibilidades) {
			
			//Calculo el rango de filas
			Date horaI = setDia(d.getHoraInicio(), dia);
			Date horaF = setDia(d.getHoraFin(), dia);
			Integer filaI = filaIndice.get(horaI);
			Integer filaF = filaIndice.get(horaF) - 1; //La celda de horaFin no pertenece a esta disponibilidad
			
			//Calculo la columna
			Calendar cal = Calendar.getInstance();
			cal.setTime(d.getFecha());
			Integer columna = columnaIndice.get(cal.get(Calendar.DAY_OF_WEEK));
			
			for(int fila = filaI; fila <= filaF; fila++) {
				CeldaDia celda = (CeldaDia)horariosSemanales.get(fila).get(columna);
				
				celda.setEsGrupo(true);
				celda.setEsGrupoPar(esPar);
				
				if (fila == filaI) {
					celda.setPrimera(true);
					celda.setContenido(d.getCupo().toString());
				}
				
				if (fila == filaF) {
					celda.setUltima(true);
					esPar = ! esPar; //Al cambiar de grupo, cambio el estado par/impar
				}
				
			}
		}
	}

	private Date setDia(Date hora, Date dia) {

		Calendar calHora = Calendar.getInstance();
		calHora.setTime(hora);

		Calendar calDia = Calendar.getInstance();
		calDia.setTime(dia);

		calHora.set(Calendar.YEAR, calDia.get(Calendar.YEAR));
		calHora.set(Calendar.DAY_OF_YEAR, calDia.get(Calendar.DAY_OF_YEAR));
		
		return calHora.getTime();
	}
}
