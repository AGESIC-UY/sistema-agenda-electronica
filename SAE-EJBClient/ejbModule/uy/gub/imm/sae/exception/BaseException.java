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


public abstract class BaseException extends Exception {


	private String codigoError;
	
	public BaseException(String codigoError) {
		super();
		this.codigoError = codigoError;
	}
	
	public BaseException(String codigoError, String message) {
		super(message);
		this.codigoError = codigoError;
	}

	public BaseException(String codigoError, Throwable cause) {
		super(cause);
		this.codigoError = codigoError;
	}
	
	public BaseException(String codigoError, String message, Throwable cause) {
		super(message, cause);
		this.codigoError = codigoError;
	}

	public String getCodigoError() {
		return codigoError;
	}
}
