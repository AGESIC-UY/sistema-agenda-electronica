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

import java.util.List;

import javax.ejb.EJB;
import javax.faces.event.ActionEvent;
import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;

import uy.gub.imm.sae.business.ejb.facade.AgendaGeneral;
import uy.gub.imm.sae.business.ejb.facade.Agendas;
import uy.gub.imm.sae.entity.Agenda;
import uy.gub.imm.sae.web.common.BaseMBean;
import uy.gub.imm.sae.web.common.RowList;

public class AgendaMBean extends BaseMBean {

	public static final String MSG_ID = "pantalla";
	
	@EJB(name="ejb/AgendaGeneralBean")
	private AgendaGeneral generalEJB;
	
	@EJB(name="ejb/AgendasBean")
	private Agendas agendasEJB;
	
	private SessionMBean sessionMBean;
	private AgendaSessionMBean agendaSessionMBean;
	private Agenda agendaNueva;
	private RowList<Agenda> agendasSeleccion;

	public SessionMBean getSessionMBean() {
		return sessionMBean;
	}
	public void setSessionMBean(SessionMBean sessionMBean) {
		this.sessionMBean = sessionMBean;
	}


	//Lista de agendas para seleccionar en la eliminacion/modificacion.
	public RowList<Agenda> getAgendasSeleccion() {
		if (agendasSeleccion == null) {
			try {
				List<Agenda> entidades;
				entidades = generalEJB.consultarAgendas();
				agendasSeleccion = new RowList<Agenda>(entidades);
			} catch (Exception e) {
				addErrorMessage(e, MSG_ID);
			}
		}
		return agendasSeleccion;
	}		

	
	public Agenda getAgendaNueva() {

		if (agendaNueva == null) {
			agendaNueva = new Agenda();
		}
		return agendaNueva;
	}

	
	//Agenda seleccionada para eliminacion/modificacion
	public Agenda getAgendaSeleccionada() {
		return sessionMBean.getAgendaSeleccionada();
	}

	
	public void crear(ActionEvent e) {
		
		if(getAgendaNueva().getNombre() == null || getAgendaNueva().getNombre().equals("")){
			addErrorMessage("El nombre de la agenda es obligatorio", MSG_ID);
		}
		else {
			try {
				agendasEJB.crearAgenda(getAgendaNueva());
				sessionMBean.cargarAgendas();
				agendasSeleccion = null;
				agendaNueva = null;
				addInfoMessage("Agenda creada correctamente.", "pantalla");
				
			} catch (Exception ex) {
				addErrorMessage(ex, "pantalla");
			}
		}
	}

	
	public void eliminar(ActionEvent event) {
		
		if (getAgendasSeleccion().getSelectedRow() != null) {
 			try {
 				agendasEJB.eliminarAgenda(getAgendasSeleccion().getSelectedRow().getData());
				sessionMBean.cargarAgendas();
 				agendasSeleccion = null;
				addInfoMessage("Agenda eliminada correctamente.", MSG_ID);
			} catch (Exception e) {
 				addErrorMessage(e, MSG_ID);
 			}
		}
		else {
			addErrorMessage("Debe seleccionar una agenda", MSG_ID);
		}
		
	}

	
	public String modificar() {

		if (getAgendasSeleccion().getSelectedRow() != null) {
			sessionMBean.setAgendaSeleccionada(getAgendasSeleccion().getSelectedRow().getData());
			return "modificar";
		}
		else {
			sessionMBean.setAgendaSeleccionada(null);
			addErrorMessage("Debe seleccionar una agenda", MSG_ID);
			return null;
		}
	}

	
	public String guardar() {
		if (sessionMBean.getAgendaSeleccionada() != null) {
 			try {
 				agendasEJB.modificarAgenda(sessionMBean.getAgendaSeleccionada());
				sessionMBean.cargarAgendas();
 				agendasSeleccion = null;
 				sessionMBean.setAgendaSeleccionada(null);
				addInfoMessage("Agenda modificada correctamente.", MSG_ID);
				return "guardar";
 			} catch (Exception e) {
 				addErrorMessage(e, MSG_ID);
 			}
		}
		else {
			addErrorMessage("Debe seleccionar una agenda", MSG_ID);
		}
		
		return null;
	}
	public AgendaSessionMBean getAgendaSessionMBean() {
		return agendaSessionMBean;
	}
	public void setAgendaSessionMBean(AgendaSessionMBean agendaSessionMBean) {
		this.agendaSessionMBean = agendaSessionMBean;
	}

	//setearlo en <f:view beforePhase de la pagina.
	public void beforePhaseCrear(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			sessionMBean.setPantallaTitulo("Crear agenda");
		}
	}

	public void beforePhaseModificarConsultar(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			sessionMBean.setPantallaTitulo("Modificar agenda");
		}
	}
	
	public void beforePhaseModificar(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			//sessionMBean.setPantallaTitulo("Modificar agenda");
		}
	}
	
	public void beforePhaseEliminar(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			sessionMBean.setPantallaTitulo("Eliminar agenda");
		}
	}

	public void beforePhaseConsultar(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			sessionMBean.setPantallaTitulo("Consultar agenda");
		}
	}

}
