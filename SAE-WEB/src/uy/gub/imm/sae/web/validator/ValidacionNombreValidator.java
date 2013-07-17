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

package uy.gub.imm.sae.web.validator;

import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import uy.gub.imm.sae.business.ejb.facade.Validaciones;
import uy.gub.imm.sae.exception.ApplicationException;

public class ValidacionNombreValidator extends ValidacionesAgenda implements Validator   {
	
//	@EJB(name="ejb/ValidacionesBean")
	@EJB(mappedName="SAE-EAR/ValidacionesBean/remote")
	private Validaciones validacionEJB;
	
	
	public ValidacionNombreValidator(){
		
			try {
				InitialContext intCtx = new InitialContext();
				validacionEJB = (Validaciones) intCtx.lookup("SAE-EAR/ValidacionesBean/remote");
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
	}
	
	
	public void validate(FacesContext arg0, UIComponent arg1, Object arg2)
			throws ValidatorException {
		
		String nombre = (String) arg2; 
		try {
				boolean existeNombre = validacionEJB.existeValidacionPorNombre(nombre);
				if (existeNombre){
					
					FacesMessage message = new FacesMessage(
							"Ya existe otra validación con ese nombre.",
							"Ya existe otra validación con ese nombre.");
					message.setSeverity(FacesMessage.SEVERITY_ERROR);
					throw new ValidatorException(message);
				}
		} catch (ApplicationException ae) {
			FacesMessage message = new FacesMessage(
					ae.getMessage(),
					ae.getMessage());
			message.setSeverity(FacesMessage.SEVERITY_ERROR);
			throw new ValidatorException(message);
		
		}
		
	}

}
