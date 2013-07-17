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

package uy.gub.imm.sae.exception;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.ApplicationException;

@ApplicationException(rollback=true)
public class ErrorAccionException extends AccionException {


	private static final long serialVersionUID = -1435404652467824082L;
	private List<String> codigosErrorMensajes;
	private String nombreAccion;

	/**
	 * Las listas deben tener un tama�o > 0.
	 * @param codigoError
	 * @param mensajes     son los mensajes de error de la accion
	 */
	public ErrorAccionException(String codigoError, List<String> mensajes) {
		super(codigoError,null, mensajes);
		
		if (mensajes ==  null ||
			mensajes.size() == 0) {
			throw new RuntimeException("La lista de mensajes debe tener a lo menos un elemento");
		}
	}

	public ErrorAccionException(String codigoError, List<String> mensajes,  List<String> codigosErrorMensajes, String nombreAccion) {
		super(codigoError,null, mensajes);
		
		this.codigosErrorMensajes = codigosErrorMensajes;
		if(this.codigosErrorMensajes == null){
			this.codigosErrorMensajes = new ArrayList<String>();
		}
		this.nombreAccion = nombreAccion;
		
		if (mensajes ==  null ||
			mensajes.size() == 0) {
			throw new RuntimeException("La lista de mensajes debe tener a lo menos un elemento");
			
		}
	}

	public List<String> getCodigosErrorMensajes() {
		return codigosErrorMensajes;
	}

	public void setCodigosErrorMensajes(List<String> codigosErrorMensajes) {
		this.codigosErrorMensajes = codigosErrorMensajes;
	}

	public String getNombreAccion() {
		return nombreAccion;
	}

	public void setNombreAccion(String nombreAccion) {
		this.nombreAccion = nombreAccion;
	}
	
}
