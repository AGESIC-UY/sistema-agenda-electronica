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

import org.richfaces.component.UIDataTable;

import uy.gub.imm.sae.business.ejb.facade.Recursos;
import uy.gub.imm.sae.entity.ValorPosible;
import uy.gub.imm.sae.web.common.BaseMBean;

public class DatoASolicitarValoresMBean extends BaseMBean {
	public static final String MSG_ID = "pantalla";

	@EJB(mappedName="SAE-EAR/RecursosBean/remote")
	private Recursos recursosEJB;

	private DatoASSessionMBean datoASSessionMBean;

	private UIDataTable valoresDataTableModif;


	
	public DatoASSessionMBean getDatoASSessionMBean() {
		return datoASSessionMBean;
	}
	public void setDatoASSessionMBean(DatoASSessionMBean datoASSessionMBean) {
		this.datoASSessionMBean = datoASSessionMBean;
	}
	public UIDataTable getValoresDataTableModif() {
		return valoresDataTableModif;
	}
	public void setValoresDataTableModif(UIDataTable valoresDataTable) {
		this.valoresDataTableModif = valoresDataTable;
	}

	



	/*
	 * MODIFICACION DE VALOR POSIBLE
	 *  
	 */

	public void seleccionarValor(ActionEvent e) {
		
		ValorPosible v = (ValorPosible) this.getValoresDataTableModif().getRowData();
		
		if (v != null) {
			datoASSessionMBean.setValorDelDatoSeleccionado(v);
			datoASSessionMBean.setMostrarModifValor(true);
			datoASSessionMBean.setMostrarAgregarValor(false);
		}
		else {
			datoASSessionMBean.setValorDelDatoSeleccionado(null);
			datoASSessionMBean.setMostrarModifValor(false);
			datoASSessionMBean.setMostrarAgregarValor(false);
		}
	}

	
	public void modificarValor(ActionEvent event) {
		
		if (datoASSessionMBean.getValorDelDatoSeleccionado() != null) {			

				try {
					recursosEJB.modificarValorPosible(datoASSessionMBean.getValorDelDatoSeleccionado());
					addInfoMessage("Valor Posible modificado correctamente.", MSG_ID); 				

				} catch (Exception e) {
					addErrorMessage(e, MSG_ID);
				}

				try {
					datoASSessionMBean.getDatoSeleccionado().setValoresPosibles(null);
					List<ValorPosible> valoresFromDB = recursosEJB.consultarValoresPosibles(datoASSessionMBean.getDatoSeleccionado());
					datoASSessionMBean.getDatoSeleccionado().setValoresPosibles(valoresFromDB);					
					
				} catch (Exception e) {
					addErrorMessage(e, MSG_ID);
				}
		}
		else {
			addErrorMessage("Debe seleccionar un valor posible", MSG_ID);
		}
	}
	
	
	public void cancelarModificarValor(ActionEvent event) {
		
		datoASSessionMBean.setValorDelDatoSeleccionado(null);
		datoASSessionMBean.setMostrarModifValor(false);
	}

	

	
	
	/*
	 * ELIMINACION DE VALOR POSIBLE
	 * 
	 */

	public void seleccionarValorParaEliminar(ActionEvent e) {
		
		datoASSessionMBean.setValorDelDatoSeleccionado(
				(ValorPosible) this.getValoresDataTableModif().getRowData()
		);
		
		datoASSessionMBean.setMostrarAgregarValor(false);
		datoASSessionMBean.setMostrarModifValor(false);
	}

	
	public void eliminarValor(ActionEvent event) {
		
		ValorPosible v = datoASSessionMBean.getValorDelDatoSeleccionado();
		
		if (v != null) {
			try {
				recursosEJB.eliminarValorPosible(v);

				addInfoMessage("Valor posible eliminado correctamente.", MSG_ID);
			} catch (Exception e) {
				addErrorMessage(e, MSG_ID);
			}
		
			try {
				datoASSessionMBean.getDatoSeleccionado().setValoresPosibles(null);
				List<ValorPosible> valoresFromDB = recursosEJB.consultarValoresPosibles(datoASSessionMBean.getDatoSeleccionado());
				datoASSessionMBean.getDatoSeleccionado().setValoresPosibles(valoresFromDB);					
				
			} catch (Exception e1) {
				addErrorMessage(e1, MSG_ID);
			}

		}
		else {
			addErrorMessage("Debe seleccionar un valor posible", MSG_ID);
		}
	}



	
	
	/*
	 * CREACION DE VALOR POSIBLE
	 * 
	 */
	
	public void mostrarCrearValor(ActionEvent e) {
		
		datoASSessionMBean.setValorDelDatoSeleccionado(new ValorPosible());
		
		datoASSessionMBean.setMostrarAgregarValor(true);
		datoASSessionMBean.setMostrarModifValor(false);
	}
	
	public void crearValor(ActionEvent e) {
		
		ValorPosible vp = datoASSessionMBean.getValorDelDatoSeleccionado();
		
		if(vp.getEtiqueta() == null || vp.getEtiqueta().equals("")){
			addErrorMessage("El nombre del Valor Posible es obligatorio", MSG_ID);
		}
		else {
			try {
				recursosEJB.agregarValorPosible(datoASSessionMBean.getDatoSeleccionado(), vp);
				addInfoMessage("Valor posible creado correctamente.", MSG_ID);
				
				//Se blanquea la info en la página
				datoASSessionMBean.setValorDelDatoSeleccionado(new ValorPosible());

				
				try {
					datoASSessionMBean.getDatoSeleccionado().setValoresPosibles(null);
					List<ValorPosible> valoresFromDB = recursosEJB.consultarValoresPosibles(datoASSessionMBean.getDatoSeleccionado());
					datoASSessionMBean.getDatoSeleccionado().setValoresPosibles(valoresFromDB);					
					
				} catch (Exception e1) {
					addErrorMessage(e1, MSG_ID);
				}
				
			} catch (Exception ex) {
				addErrorMessage(ex, MSG_ID);
			}
		}
	}

	
	public void cancelarCrearValor(ActionEvent event) {

		datoASSessionMBean.setValorDelDatoSeleccionado(null);
		datoASSessionMBean.setMostrarAgregarValor(false);
	}


}
