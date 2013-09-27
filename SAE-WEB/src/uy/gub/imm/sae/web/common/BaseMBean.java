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

package uy.gub.imm.sae.web.common;

import java.io.IOException;
import java.util.TimeZone;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.protocol.HttpContext;
import org.apache.log4j.Logger;

import uy.gub.imm.sae.common.SAEProfile;
import uy.gub.imm.sae.exception.ApplicationException;
import uy.gub.imm.sae.exception.BusinessException;
import uy.gub.imm.sae.exception.UserException;

public abstract class BaseMBean {

	protected static final String FORM_ID = "form";
	
	/** 
	 * Si el error sucede en capa de negocio y/o en la lógica del presentación 
	 * de forma tal que permite volver a una página coherente, se utiliza este mensaje de error genérico 
	 * que se le desplega al usuario en un componente message general.
	 */
	private static final String MENSAJE_MANTENIMIENTO = "Sistema en mantenimiento, por favor intente más tarde.";
	
	/**
	 * Si el error que sucede no es esperado o 
	 * no pude mostrarse una pagina coherente con el mensaje anterior, 
	 * entonces se realiza un redirect a la pagina de error 
	 * configurada en el faces-config para este outcome
	 */
	static protected String ERROR_PAGE_OUTCOME = "error";
	
	private Logger logger = Logger.getLogger(this.getClass());
	
	private static InitialContext ctx;
	
	public TimeZone getTimeZone() {
		return TimeZone.getDefault();
	}
	
	protected void addErrorMessage (Exception e) {
		addErrorMessage(e, FORM_ID);
	}

	protected void addErrorMessage (String mensaje) {
		addErrorMessage(new UserException("-1", mensaje), FORM_ID);
	}

	protected void addErrorMessage (String mensaje, String idComponente) {
		addErrorMessage(new UserException("-1", mensaje), idComponente);
	}

	protected void addErrorMessage (Exception e, String idComponente) {
		FacesMessage m;

		if (e instanceof UserException) {
			UserException ue = (UserException) e;
			m = new FacesMessage(FacesMessage.SEVERITY_ERROR, ue.getMessage(), null);
			if (e.getCause() != null) {
				System.err.println(e.getCause().getMessage());
			}
		}
		else if (e instanceof BusinessException) {
			BusinessException be = (BusinessException) e;
			m = new FacesMessage(FacesMessage.SEVERITY_ERROR, MENSAJE_MANTENIMIENTO, null);
			System.err.println(BusinessException.class.getName() + ": " + be.getMessage());
			if (be.getCause() != null) {
				System.err.println("    " + be.getCause().getClass().getName() + ": " + be.getCause().getMessage());
			}
			e.printStackTrace(System.err);
			
		}
		else {
			m = new FacesMessage(FacesMessage.SEVERITY_ERROR, MENSAJE_MANTENIMIENTO , null);
			e.printStackTrace(System.err);
		}
		FacesContext.getCurrentInstance().addMessage(idComponente, m);
	}

	protected void addInfoMessage (String mensaje) {
		addInfoMessage(mensaje, FORM_ID);
	}
	
	protected void addInfoMessage (String mensaje, String idComponente) {
		FacesMessage m;
		m = new FacesMessage(FacesMessage.SEVERITY_INFO, mensaje, null);
		FacesContext.getCurrentInstance().addMessage(idComponente, m);
	}
	
	protected static InitialContext getContext() throws ApplicationException {

	    //Patron singleton, inicialización lazy
	    if (ctx == null) {
	        try {
	            ctx = new InitialContext();
	        } catch (NamingException e) {
	            throw new ApplicationException("-1", "No se pudo obtener el contexto inicial", e);
	        }
	    }
	    return ctx;
	}
	
	public Boolean getEsIntranet() {
		return SAEProfile.getInstance().getEnvironment().equals(SAEProfile.Escenario.BACKEND);	
	}

	/**
	 * Redirecciona a la pagina asociada al respectivo outcome
	 * segun lo configurado en las reglas de navegacion del faces-config
	 * */
	protected void redirect(String from_outcome) {

		FacesContext fc = FacesContext.getCurrentInstance();
		if (! fc.getResponseComplete()) {
			//ServletContext servletCtx = (ServletContext) fc.getExternalContext().getContext();
			//fc.getExternalContext().redirect(servletCtx.getContextPath() + from_outcome);
			fc.getApplication().getNavigationHandler().handleNavigation(fc, null, from_outcome);
			fc.responseComplete();
		}
	}
	
	
	/**
	 * Deshabilta el cache del navegador para la pagina que se esta respondiendo.
	 */
	protected void disableBrowserCache(PhaseEvent phaseEvent) { 

		if (phaseEvent.getPhaseId() == PhaseId.RENDER_RESPONSE) {
	        FacesContext facesContext = phaseEvent.getFacesContext();
	        HttpServletResponse response = (HttpServletResponse) facesContext.getExternalContext().getResponse();
	        response.addHeader("Pragma", "no-cache");
	        response.addHeader("Cache-Control", "no-cache");
	        response.addHeader("Cache-Control", "no-store");
	        response.addHeader("Cache-Control", "must-revalidate");
	        response.addHeader("Expires", "Mon, 1 Jan 2006 05:00:00 GMT"); //en el pasado
		}
	}

	protected Logger getLogger() {
		return logger;
	}
	
	
	
}
