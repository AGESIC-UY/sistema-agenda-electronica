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

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.event.ActionEvent;
import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;

import uy.gub.imm.sae.business.ejb.facade.Agendas;
import uy.gub.imm.sae.entity.TextoAgenda;
import uy.gub.imm.sae.web.common.BaseMBean;

public class TextoAgendaMBean  extends BaseMBean{

	public static final String MSG_ID = "pantalla";

	
	@EJB(name="ejb/AgendasBean")
	private Agendas agendasEJB;

	public SessionMBean sessionMBean;
	public TextoAgenda textoAux = new TextoAgenda();
	
	
	public TextoAgenda getTextoAux() {
		return textoAux;
	}
	public void setTextoAux(TextoAgenda textoAux) {
		this.textoAux = textoAux;
	}
	public SessionMBean getSessionMBean() {
		return sessionMBean;
	}
	public void setSessionMBean(SessionMBean sessionMBean) {
		this.sessionMBean = sessionMBean;
	}

	@PostConstruct
	public void initTextoAg(){
		//Se controla que se haya Marcado una agenda para trabajar con los textos
		if (sessionMBean.getAgendaMarcada() == null){
			addErrorMessage("Debe tener una agenda seleccionada", MSG_ID);
		}
		else
		{
			textoAux.setAgenda(sessionMBean.getAgendaMarcada());
			textoAux.setTextoPaso1(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoPaso1());
			textoAux.setTextoPaso2(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoPaso2());
			textoAux.setTextoPaso3(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoPaso3());
			textoAux.setTextoSelecRecurso(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoSelecRecurso());
			textoAux.setTextoTicketConf(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoTicketConf());
		}
	}
	/**************************************************************************/
	/*                   Action  de Texto Agenda  (navegación)                 */	
	/**************************************************************************/	
	
	
	public void guardar(ActionEvent e) {
		
		if (sessionMBean.getAgendaMarcada() != null) {
 			try {
 				sessionMBean.getAgendaMarcada().getTextoAgenda().setTextoPaso1(textoAux.getTextoPaso1());
 				sessionMBean.getAgendaMarcada().getTextoAgenda().setTextoPaso2(textoAux.getTextoPaso2());
 				sessionMBean.getAgendaMarcada().getTextoAgenda().setTextoPaso3(textoAux.getTextoPaso3());
 				sessionMBean.getAgendaMarcada().getTextoAgenda().setTextoSelecRecurso(textoAux.getTextoSelecRecurso());
 				sessionMBean.getAgendaMarcada().getTextoAgenda().setTextoTicketConf(textoAux.getTextoTicketConf());
				agendasEJB.modificarAgenda(sessionMBean.getAgendaMarcada());
				addInfoMessage("Agenda modificada correctamente.", MSG_ID); 
 			} catch (Exception ex) {
 				addErrorMessage(ex, MSG_ID);
 			}
		}
		else {
			addErrorMessage("Debe seleccionar una agenda", MSG_ID);
		}
		
	}
	
	public void cancelar(ActionEvent e) {
		if (sessionMBean.getAgendaMarcada() == null){
			addErrorMessage("Debe tener una agenda seleccionada", MSG_ID);
		}
		else
		{
			textoAux.setTextoPaso1(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoPaso1());
			textoAux.setTextoPaso2(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoPaso2());
			textoAux.setTextoPaso3(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoPaso3());
			textoAux.setTextoSelecRecurso(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoSelecRecurso());
			textoAux.setTextoTicketConf(sessionMBean.getAgendaMarcada().getTextoAgenda().getTextoTicketConf());
		}
	}

	
	public Agendas getAgendasEJB() {
		return agendasEJB;
	}
	public void setAgendasEJB(Agendas agendasEJB) {
		this.agendasEJB = agendasEJB;
	}
	
	public void beforePhaseModifTexto(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			sessionMBean.setPantallaTitulo("Modificar Textos Agenda");
		}
	}

}
