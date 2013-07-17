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

package uy.gub.imm.sae.common.factories.ejb;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import uy.gub.imm.sae.exception.ApplicationException;

public class LookupAnonimoLocalBusinessLocator extends LookupLocalBusinessLocator {

	
	private static final String NOMBRE_DIR_PROPS_CREDENCIALES_USUARIO_ANONIMO = "/conf/props/";
	private static final String NOMBRE_ARCH_PROPS_CREDENCIALES_USUARIO_ANONIMO = "sae-users.properties";
	private static final String NOMBRE_ARCH_PROPS_USUARIO_ANONIMO = "usuario-anonimo.properties";
	private static final String USUARIO_ANONIMO = "usuario";
	
	protected String getUsuarioAnonimo() throws ApplicationException{
		try {
			String dirConf = System.getProperty("jboss.server.home.dir");
			String dirArchsConf = dirConf.replace('\\', '/') + NOMBRE_DIR_PROPS_CREDENCIALES_USUARIO_ANONIMO;			
			FileInputStream file = new FileInputStream(dirArchsConf + NOMBRE_ARCH_PROPS_USUARIO_ANONIMO);
			Properties props = new Properties();
			props.load(file);
			file.close();
			
			String result = null;
			Object value = (String)props.get(USUARIO_ANONIMO);
			if(value!=null){
				result = value.toString();
			}
			return result;
			
		} catch (IOException e) {
			throw new ApplicationException("-1", "Imposible obtener password de usuario anonimo", e);
		}
	}
	
	protected String getPasswordUsuarioAnonimo(String usuario) throws ApplicationException{
		// lee la password del usuario anonimo del .properties donde estan los usuarios y roles por defecto
		
		try {
			String dirConf = System.getProperty("jboss.server.home.dir");
			String dirArchsConf = dirConf.replace('\\', '/') + NOMBRE_DIR_PROPS_CREDENCIALES_USUARIO_ANONIMO;			
			FileInputStream file = new FileInputStream(dirArchsConf + NOMBRE_ARCH_PROPS_CREDENCIALES_USUARIO_ANONIMO);
			Properties props = new Properties();
			props.load(file);
			file.close();
			
			String result = null;
			Object value = (String)props.get(usuario);
			if(value!=null){
				result = value.toString();
			}
			return result;
			
		} catch (IOException e) {
			throw new ApplicationException("-1", "Imposible obtener password de usuario anonimo", e);
		}
	}
	
	@Override
	protected Context getContext() throws ApplicationException {

		String usuario_anonimo = getUsuarioAnonimo();
		
		try {
			Properties prop = new Properties();
			prop.put(Context.INITIAL_CONTEXT_FACTORY, "org.jboss.security.jndi.JndiLoginInitialContextFactory");
			prop.put(Context.URL_PKG_PREFIXES, "org.jboss.naming:org.jnp.interfaces");
			prop.put(Context.SECURITY_PRINCIPAL, usuario_anonimo);
			prop.put(Context.SECURITY_CREDENTIALS, getPasswordUsuarioAnonimo(usuario_anonimo));			
			return new InitialContext(prop);
			
	    } catch (NamingException e) {
	    	throw new ApplicationException("-1", "Imposible crear contexto para usuario anonimo", e);
	    } catch (Exception e) {
			throw new ApplicationException("-1", "Imposible crear contexto para usuario anonimo", e);
		}
	}
	
}
