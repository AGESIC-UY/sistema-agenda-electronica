/*
 * SAE - Sistema de Agenda Electrónica
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

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;
import javax.servlet.http.HttpServletRequest;

import uy.gub.imm.sae.business.ejb.facade.AgendaGeneral;
import uy.gub.imm.sae.business.ejb.facade.Recursos;
import uy.gub.imm.sae.entity.Agenda;
import uy.gub.imm.sae.entity.DatoASolicitar;
import uy.gub.imm.sae.entity.DatoDelRecurso;
import uy.gub.imm.sae.entity.Recurso;
import uy.gub.imm.sae.web.common.RowList;
import uy.gub.imm.sae.web.common.RowListMultipleSelect;
import uy.gub.imm.sae.web.common.RowMultipleSelect;
import uy.gub.imm.sae.web.common.SessionCleanerMBean;


public class SessionMBean extends SessionCleanerMBean {
	
	public static final String MSG_ID = "pantalla";
		
	@EJB(mappedName="SAE-EAR/AgendaGeneralBean/remote")
	private AgendaGeneral generalEJB;
	@EJB(mappedName="SAE-EAR/RecursosBean/remote")
	private Recursos recursosEJB;


	//Pagina que se debe desplegar en la sección "pantalla" de la pagina principal
	private String viewId;
	private String pantallaTitulo;
	
	//Lista de Agenda y recurso seleccionados para trabajar sobre el resto de los elementos.
	private RowList<Agenda> agendas;
	private RowList<Recurso> recursos;
	private RowList<DatoDelRecurso> datosDelRecurso;
//	private RowList<AgrupacionDato> agrupacionesDatos;
	/** Lista de recursos con soporte para multiple selección para construir el llamador */
	private RowListMultipleSelect<Recurso> recursosMultipleSelect;

	
	//Agenda/Recurso seleccionados para modificacion
	// es necesario pues al navegar de la pagina modificarConsultar a modificar se pierde
	// la row seleccionada en la tabla de agendas/recursos :(
	private Agenda agendaSeleccionada;
	private Recurso recursoSeleccionado;
	private DatoDelRecurso datoDelRecursoSeleccionado;
//	private AgrupacionDato agrupacionDatoSeleccionada;
	//private CupoPorDia cupoPorDiaSeleccionado;	

	//Booleana para saber si se despliega la tabla de Dato del Recurso
	private Boolean mostrarDato = true;
	//Booleana para saber si se despliega la tabla para agregar Dato del Recurso
	private Boolean mostrarAgregarDato = false;

	//Booleana para saber si se despliega la tabla de modificación de Agrupaciones
	private Boolean mostrarAgrupacion = false;
	//Booleana para saber si se despliega la tabla para agregar Agrupaciones
	private Boolean mostrarAgregarAgrupacion = false;
	
	//Booleana para saber si se utiliza llamador o no
	private Boolean mostrarLlamador = true;
	
	// Variables para redirigir a sitio de Reservas
	private static final String URL_BASE_TO_FORWARD_RESERVA = "/agendarReserva/Paso1.xhtml?agenda=";

	private DatosUrlToForwardReserva datosUrlToForwardReserva = new DatosUrlToForwardReserva();
	
	
	private int pagina;
	
	private Map<String, DatoASolicitar> datosASolicitar;
	
	//Numero de puesto asignado al usuario en el momento de atender reservas con el modulo Llamador
	private Integer puesto = 0;
	
	public int getPagina() {
		return pagina;
	}
	public void setPagina(int pagina) {
		this.pagina = pagina;
	}

	public String getViewId() {
		if (viewId == null) {
			viewId = "/administracion/inicio.xhtml";
		}
		return viewId;
	}
	public void setViewId(String viewId) {
		this.viewId = viewId;
	}
	
	public String getPantallaTitulo() {
		return pantallaTitulo;
	}
	
	public void setPantallaTitulo(String pantallaTitulo) {
		this.pantallaTitulo = pantallaTitulo;
	}

	public void beforePhaseInicio(PhaseEvent event) {

		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {
			setPantallaTitulo("Inicio");
		}
	}

	public void beforePhaseSeleccionAgendaRecurso(PhaseEvent event) {
		if (event.getPhaseId() == PhaseId.RENDER_RESPONSE) {					
			setPantallaTitulo("Selección de Agenda y Recurso");			
		}
	}
	
	
	public RowList<Agenda> getAgendas() {
		return agendas;
	}

	
	//Agenda seleccionada en pantalla de selección de agendas y recursos
	public Agenda getAgendaMarcada() {
		if (agendas != null && agendas.getSelectedRow() != null){
			return agendas.getSelectedRow().getData();
		}
		else {
			return null;
		}
	}

	public void desmarcarAgenda(){
		agendas.setSelectedRow(null);
	}

	
	public RowList<Recurso> getRecursos() {
		return recursos;
	}
	
	/** Retorno el rowlist con soporte para seleccion multiple siempre con el recurso marcado con el que se está trabajando.
	 * El recurso marcado es el que utiliza como prioritario para armar el llamador. 
	 */
	public RowListMultipleSelect<Recurso> getRecursosMultipleSelect() {
		if (recursosMultipleSelect != null) {
			for(RowMultipleSelect<Recurso> row : recursosMultipleSelect) {
				if(row.getData().equals(getRecursoMarcado()) && !row.getSelected()) { 
					row.setSelected(true);
				}
			}
		}
		return recursosMultipleSelect;
	}
	
	public void setRecursosMultipleSelect(RowListMultipleSelect<Recurso> recursosMultipleSelect) {
		this.recursosMultipleSelect = recursosMultipleSelect;
	}
	
	//Recurso seleccionado en pantalla de selección de agendas y recursos	
	public Recurso getRecursoMarcado() {
		if (recursos != null && recursos.getSelectedRow() != null){
			return recursos.getSelectedRow().getData();
		}
		else {
			return null;
		}
	}
	
	/** Retorna los recursos marcados para el llamador */
	public List<Recurso> getRecursosMarcados() {
		List<Recurso> recursos = null;
		if (recursosMultipleSelect != null ){
			recursos = new ArrayList<Recurso>();
			for (RowMultipleSelect<Recurso> row : recursosMultipleSelect.getSelectedRows()) {
				recursos.add(row.getData());
			}
		}
		return recursos;
	}
	
	public void desmarcarRecurso(){
		recursos.setSelectedRow(null);
	}

	public RowList<DatoDelRecurso> getDatosDelRecurso() {
		cargarDatosDelRecurso();
		return datosDelRecurso;
	}

	public void setDatosDelRecurso(RowList<DatoDelRecurso> datosDelRecurso) {
		this.datosDelRecurso = datosDelRecurso;
	}
	
	public Agenda getAgendaSeleccionada() {
		return agendaSeleccionada;
	}
	public void setAgendaSeleccionada(Agenda agenda) {
		this.agendaSeleccionada = agenda;
	}
	
	public Recurso getRecursoSeleccionado() {
		return recursoSeleccionado;
	}
	
	public void setRecursoSeleccionado(Recurso recurso) {
		this.recursoSeleccionado = recurso;
		if (recurso != null) {
			this.desmarcarRecurso();
		}
	}

	public void desseleccionarRecurso(ActionEvent a){
		removeMBeansFromSession();
		this.setRecursoSeleccionado(null);
	}
	
	public DatoDelRecurso getDatoDelRecursoSeleccionado() {
		return datoDelRecursoSeleccionado;
	}
	public void setDatoDelRecursoSeleccionado(
			DatoDelRecurso datoDelRecursoSeleccionado) {
		this.datoDelRecursoSeleccionado = datoDelRecursoSeleccionado;
	}

	public Boolean getMostrarAgregarDato() {
		return mostrarAgregarDato;
	}

	public void setMostrarAgregarDato(Boolean mostrarAgregarDato) {
		this.mostrarAgregarDato = mostrarAgregarDato;
	}
	
	//Es llamado cada vez que se marca/desmarca en la tabla de agendas del panel modal.
	public void seleccionarAgenda(ActionEvent event) {
		removeMBeansFromSession();
		cargarRecursos();
	}
	
	@PostConstruct
	public void cargarAgendas() {
		List<Agenda> entidades;
		try {
			entidades = generalEJB.consultarAgendas();
			agendas = new RowList<Agenda>(entidades);
			if (recursos != null) {
				recursos.clear();
			}
		} catch (Exception e) {
			addErrorMessage(e, MSG_ID);
		}
	}
	
	
	//Si hay agenda selecciondada, se cargan los recursos asociados.
	//En caso contrario se vacía la lista de recursos
	public void cargarRecursos() {
		
		if (getAgendaMarcada() != null){
			try {
				List<Recurso> entidades;
				entidades = generalEJB.consultarRecursos(getAgendaMarcada());
				recursos = new RowList<Recurso>(entidades);
				recursosMultipleSelect = new RowListMultipleSelect<Recurso>(entidades);
			} catch (Exception e) {
				addErrorMessage(e, MSG_ID);
			}
		}
		else {
			if (recursos != null) {
				recursos.clear();
				recursosMultipleSelect.clear();
			}
		}
	}	

	
	//Si hay recurso selecciondada, se cargan los datos del recurso asociados.
	//En caso contrario se vacía la lista de datosDelRecurso
	public void cargarDatosDelRecurso() {
		
		if (this.getRecursoSeleccionado() != null){			
			try {
				List<DatoDelRecurso> entidades;
				entidades = recursosEJB.consultarDatosDelRecurso(this.getRecursoSeleccionado());
				datosDelRecurso = new RowList<DatoDelRecurso>(entidades);
			} catch (Exception e) {
				addErrorMessage(e, MSG_ID);
			}
		}
		else {
			if (datosDelRecurso != null) {
				datosDelRecurso.clear();
			}
		}
	}	

	public Boolean getMostrarDato() {

		if (this.getDatoDelRecursoSeleccionado() != null ) {
			mostrarDato = true;
		}
		else {
			mostrarDato = false;
		}
		return mostrarDato;
	}


	public void setMostrarDato(Boolean mostrarDato) {
		this.mostrarDato = mostrarDato;
	}

/*	
	public RowList<AgrupacionDato> getAgrupacionesDatos() {
		cargarAgrupaciones();
		return agrupacionesDatos;
	}
	*/
	
/*
	public AgrupacionDato getAgrupacionDatoSeleccionada() {
		return agrupacionDatoSeleccionada;
	}
	
	public void setAgrupacionDatoSeleccionada(
			AgrupacionDato agrupacionDatoSeleccionada) {
		this.agrupacionDatoSeleccionada = agrupacionDatoSeleccionada;
	}	
*/
	public Boolean getMostrarAgrupacion() {
			
	/*	if (this.getAgrupacionDatoSeleccionada() != null) {
			mostrarAgrupacion = true;
		}
		else {
			mostrarAgrupacion = false;
		}
	*/	
		return mostrarAgrupacion;
	}


	public void setMostrarAgrupacion(Boolean mostrarAgrupacion) {
		this.mostrarAgrupacion = mostrarAgrupacion;
	}

	public Boolean getMostrarAgregarAgrupacion() {
		return mostrarAgregarAgrupacion;
	}
	
	public void setMostrarAgregarAgrupacion(Boolean mostrarAgregarAgrupacion) {
		this.mostrarAgregarAgrupacion = mostrarAgregarAgrupacion;
	}

	
	/*
	public CupoPorDia getCupoPorDiaSeleccionado() {
		return cupoPorDiaSeleccionado;
	}
	
	public void setCupoPorDiaSeleccionado(CupoPorDia cupoPorDiaSeleccionado) {
		this.cupoPorDiaSeleccionado = cupoPorDiaSeleccionado;
	}
	*/

	public DatosUrlToForwardReserva getDatosUrlToForwardReserva() {
		return datosUrlToForwardReserva;
	}
	
	public void setDatosUrlToForwardReserva(DatosUrlToForwardReserva datosUrlToForwardReserva) {
		this.datosUrlToForwardReserva = datosUrlToForwardReserva;
	}
	
	// genera la url a la que se redirecciona para reservar
	/*
	public void evaluarForwardToReservar(ActionEvent e) {
		if(getAgendaMarcada()!=null){
			// hay agenda marcada
			datosUrlToForwardReserva.setSePuedeHacerForwardAgendar(true);
			datosUrlToForwardReserva.setUrlReservaAgendaToForward(URL_BASE_TO_FORWARD_RESERVA + getAgendaMarcada().getNombre());
		} else {
			datosUrlToForwardReserva.setSePuedeHacerForwardAgendar(false);
			datosUrlToForwardReserva.setUrlReservaAgendaToForward("#");
			addErrorMessage("Debe tener una agenda seleccionada", MSG_ID);
		}
	}
	*/
	
	public String getUrlAgendarReservas() {
		
		String urlAgendarReserva = "#";
		
		if (getAgendaMarcada() != null && getRecursoMarcado() != null) {
			
			FacesContext ctx = FacesContext.getCurrentInstance();
			HttpServletRequest request = (HttpServletRequest)ctx.getExternalContext().getRequest();
			String urlRetorno = "#";
			
			try {
				urlRetorno = URLEncoder.encode(request.getRequestURL().toString(), "utf-8");
				
				urlAgendarReserva = request.getContextPath() + URL_BASE_TO_FORWARD_RESERVA + URLEncoder.encode(getAgendaMarcada().getNombre(),"utf-8") +
									"&recurso=" + URLEncoder.encode(getRecursoMarcado().getNombre(),"utf-8") +
									"&pagina_retorno=" + urlRetorno;
				
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
		}
		
		return urlAgendarReserva;
	}

	public class DatosUrlToForwardReserva {
		private String urlReservaAgendaToForward;
		private boolean sePuedeHacerForwardAgendar;
		
		public DatosUrlToForwardReserva(){
			urlReservaAgendaToForward = "#";
			sePuedeHacerForwardAgendar = false;
		}
		
		public String getUrlReservaAgendaToForward() {
			return urlReservaAgendaToForward;
		}
		
		public void setUrlReservaAgendaToForward(String urlReservaAgendaToForward) {
			this.urlReservaAgendaToForward = urlReservaAgendaToForward;
		}
		
		public boolean isSePuedeHacerForwardAgendar() {
			return sePuedeHacerForwardAgendar;
		}
		
		public void setSePuedeHacerForwardAgendar(boolean sePuedeHacerForwardAgendar) {
			this.sePuedeHacerForwardAgendar = sePuedeHacerForwardAgendar;
		}
	}

	public Map<String, DatoASolicitar> getDatosASolicitar() {
		return datosASolicitar;
	}
	public void setDatosASolicitar(Map<String, DatoASolicitar> datosASolicitar) {
		this.datosASolicitar = datosASolicitar;
	}
	public Integer getPuesto() {
		return puesto;
	}
	public void setPuesto(Integer puesto) {
		this.puesto = puesto;
	}

	public Boolean getMostrarLlamador() {
		if (recursos != null && recursos.getSelectedRow() != null){
			mostrarLlamador = recursos.getSelectedRow().getData().getUsarLlamador();
		}else {
			mostrarLlamador = true;
		}
		return mostrarLlamador;
	}
	
	public void setMostrarLlamador(Boolean mostrarLlamador) {
		this.mostrarLlamador = mostrarLlamador;
	}


}


