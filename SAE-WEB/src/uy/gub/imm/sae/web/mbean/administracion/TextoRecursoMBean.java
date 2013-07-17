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

import uy.gub.imm.sae.business.ejb.facade.Recursos;
import uy.gub.imm.sae.entity.TextoRecurso;
import uy.gub.imm.sae.web.common.BaseMBean;

public class TextoRecursoMBean  extends BaseMBean {

	public static final String MSG_ID = "pantalla";


	@EJB(mappedName="SAE-EAR/RecursosBean/remote")
	private Recursos recursosEJB;
	private SessionMBean sessionMBean;
	private TextoRecurso textoRec = new TextoRecurso();
	
	
	public Recursos getRecursosEJB() {
		return recursosEJB;
	}
	public void setRecursosEJB(Recursos recursosEJB) {
		this.recursosEJB = recursosEJB;
	}

	public TextoRecurso getTextoRec() {
		return textoRec;
	}
	public void setTextoRec(TextoRecurso textoRec) {
		this.textoRec = textoRec;
	}
	public SessionMBean getSessionMBean() {
		return sessionMBean;
	}
	public void setSessionMBean(SessionMBean sessionMBean) {
		this.sessionMBean = sessionMBean;
	}


	@PostConstruct
	public void initTextoRec(){
		//Se controla que se haya Marcado un recurso para trabajar con los textos
		if (sessionMBean.getRecursoMarcado() == null){
			addErrorMessage("Debe tener un recurso seleccionado", MSG_ID);
		}
		else 
		{
			textoRec.setRecurso(sessionMBean.getRecursoMarcado());
			textoRec.setTextoPaso2(sessionMBean.getRecursoMarcado().getTextoRecurso().getTextoPaso2());
			textoRec.setTextoPaso3(sessionMBean.getRecursoMarcado().getTextoRecurso().getTextoPaso3());
			textoRec.setTituloCiudadanoEnLlamador(sessionMBean.getRecursoMarcado().getTextoRecurso().getTituloCiudadanoEnLlamador());
			textoRec.setTituloPuestoEnLlamador(sessionMBean.getRecursoMarcado().getTextoRecurso().getTituloPuestoEnLlamador());
			textoRec.setTicketEtiquetaUno(sessionMBean.getRecursoMarcado().getTextoRecurso().getTicketEtiquetaUno());
			textoRec.setTicketEtiquetaDos(sessionMBean.getRecursoMarcado().getTextoRecurso().getTicketEtiquetaDos());
			textoRec.setValorEtiquetaUno(sessionMBean.getRecursoMarcado().getTextoRecurso().getValorEtiquetaUno());
			textoRec.setValorEtiquetaDos(sessionMBean.getRecursoMarcado().getTextoRecurso().getValorEtiquetaDos());
		}
	}


	public void guardar(ActionEvent e) {

		if (sessionMBean.getRecursoMarcado() != null) {
			try {
				sessionMBean.getRecursoMarcado().getTextoRecurso().setTextoPaso2(textoRec.getTextoPaso2());
				sessionMBean.getRecursoMarcado().getTextoRecurso().setTextoPaso3(textoRec.getTextoPaso3());
				sessionMBean.getRecursoMarcado().getTextoRecurso().setTituloCiudadanoEnLlamador(textoRec.getTituloCiudadanoEnLlamador());
				sessionMBean.getRecursoMarcado().getTextoRecurso().setTituloPuestoEnLlamador(textoRec.getTituloPuestoEnLlamador());
				sessionMBean.getRecursoMarcado().getTextoRecurso().setTicketEtiquetaUno(textoRec.getTicketEtiquetaUno());
				sessionMBean.getRecursoMarcado().getTextoRecurso().setTicketEtiquetaDos(textoRec.getTicketEtiquetaDos());
				sessionMBean.getRecursoMarcado().getTextoRecurso().setValorEtiquetaUno(textoRec.getValorEtiquetaUno());
				sessionMBean.getRecursoMarcado().getTextoRecurso().setValorEtiquetaDos(textoRec.getValorEtiquetaDos());
				
				recursosEJB.modificarRecurso(sessionMBean.getRecursoMarcado());
				addInfoMessage("Recurso modificado correctamente.", MSG_ID); 
			} catch (Exception ex) {
				addErrorMessage(ex, MSG_ID);
			}
		}
		else {
			addErrorMessage("Debe seleccionar un recurso", MSG_ID);
		}

	}


	public void cancelar(ActionEvent event) {
		if (sessionMBean.getRecursoMarcado() == null){
			addErrorMessage("Debe tener un recurso seleccionado", MSG_ID);
		}
		else 
		{
			textoRec.setRecurso(sessionMBean.getRecursoMarcado());
			textoRec.setTextoPaso2(sessionMBean.getRecursoMarcado().getTextoRecurso().getTextoPaso2());
			textoRec.setTextoPaso3(sessionMBean.getRecursoMarcado().getTextoRecurso().getTextoPaso3());
			textoRec.setTituloCiudadanoEnLlamador(sessionMBean.getRecursoMarcado().getTextoRecurso().getTituloCiudadanoEnLlamador());
			textoRec.setTituloPuestoEnLlamador(sessionMBean.getRecursoMarcado().getTextoRecurso().getTituloPuestoEnLlamador());
			textoRec.setTicketEtiquetaUno(sessionMBean.getRecursoMarcado().getTextoRecurso().getTicketEtiquetaUno());
			textoRec.setTicketEtiquetaDos(sessionMBean.getRecursoMarcado().getTextoRecurso().getTicketEtiquetaDos());
			textoRec.setValorEtiquetaUno(sessionMBean.getRecursoMarcado().getTextoRecurso().getValorEtiquetaUno());
			textoRec.setValorEtiquetaDos(sessionMBean.getRecursoMarcado().getTextoRecurso().getValorEtiquetaDos());
		}
	}




	public void beforePhaseModifTexto(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			sessionMBean.setPantallaTitulo("Modificar Textos del Recurso");
		}
	}

}
