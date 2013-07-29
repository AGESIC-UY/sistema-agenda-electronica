package uy.gub.imm.sae.test.web.pageobjects.uc;

import static org.jboss.arquillian.ajocado.Ajocado.id;
import static org.jboss.arquillian.ajocado.Ajocado.jq;
import static org.jboss.arquillian.ajocado.Ajocado.waitForXhr;

import java.util.Date;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;
import org.jboss.arquillian.ajocado.locator.IdLocator;
import org.jboss.arquillian.ajocado.locator.JQueryLocator;
import org.jboss.arquillian.ajocado.locator.option.OptionValueLocator;

import uy.gub.imm.sae.test.web.pageobjects.ObjectPage;
import uy.gub.imm.sae.test.web.pageobjects.components.RichCalendar;

public class DisponibilidadesGenerarUnDiaPage extends ObjectPage {

	private String fechaCalendarId = "display:form:fecha";
	private RichCalendar fechaCalendar;
	
	private IdLocator horaDesde = id("display:form:seleccionHoraD");
	private IdLocator minutoDesde = id("display:form:seleccionMinD");
	private IdLocator horaHasta = id("display:form:seleccionHoraH");
	private IdLocator minutoHasta = id("display:form:seleccionMinH");
	private IdLocator frecuencia = id("display:form:frecuencia");
	private IdLocator cupos = id("display:form:cupos");
	private IdLocator consultarButton = id("display:form:consultar");
	private IdLocator crearButton = id("display:form:crear");
	
	private JQueryLocator tablaMatutina = jq(".[id='display:form:tablaMatutina']");
	private JQueryLocator tablaVespertina = jq(".[id='display:form:tablaVespertina']");

	public DisponibilidadesGenerarUnDiaPage(AjaxSelenium browser) {
		super(browser);
		fechaCalendar = new RichCalendar(browser, fechaCalendarId);
	}

	


	public void consultarDisponibilidades(Formulario f) {

		rellenarFormulario(f);
	
		waitForXhr(browser).click(consultarButton);
		
	}
	
	public void crearDisponibilidades(Formulario f) {

		rellenarFormulario(f);
		
		waitForXhr(browser).click(crearButton);
		
	}
	
	
	public Boolean hayDisponibilidades() {
		return false;
	}

	public Boolean hayDisponibilidad(Integer hora, Integer minuto, Integer cupos, Integer reservas) {
		
		String horaInicio = String.format("%02d", hora) + ":" + String.format("%02d", minuto);
		
		if (hora < 12) {
			return	browser.isElementPresent(
						tablaMatutina											//La tabal de horarios matutinos
						.getDescendant(jq("td:contains('"+ horaInicio + "')"))	//La celda con la hora:minuto
						.filter("~ td:contains('"+cupos+"')")					//La celda hermana/sibling con el cupo
						.filter("~ td:contains('"+reservas+"')")				//La celda hermana/sibling con la cantidad de reservas
					);
		}
		else {
			return	browser.isElementPresent(
						tablaVespertina											//La tabal de horarios vespertinos
						.getDescendant(jq("td:contains('"+ horaInicio + "')"))	//La celda con la hora:minuto
						.filter("~ td:contains('"+cupos+"')")					//La celda hermana/sibling con el cupo
						.filter("~ td:contains('"+reservas+"')")				//La celda hermana/sibling con la cantidad de reservas
					);
		}
	}

	
	//Retorna null si no hay mensaje de error
	public String getMensajeError() {
		
		JQueryLocator mensaje = jq("td[class*='pantallaMensaje'] span[class*='mensajeError'] span[class*='rich-message-label']");
		if (browser.isElementPresent(mensaje)) {
			return browser.getText(mensaje);
		}
		else {
			return null;
		}
	}

	public String getMensajeInfo() {
		
		JQueryLocator mensaje = jq("td[class*='pantallaMensaje'] span[class*='mensajeInfo'] span[class*='rich-message-label']");
		if (browser.isElementPresent(mensaje)) {
			return browser.getText(mensaje);
		}
		else {
			return null;
		}
	}
	
	private void rellenarFormulario(Formulario f) {

		if (f.getFecha() != null) {
		
			fechaCalendar.setValue(f.getFecha());
		}

		if (f.getHoraDesde() != null) {
			browser.select(horaDesde, new OptionValueLocator(f.getHoraDesde().toString()));
		}
		
		if (f.getMinutoDesde() != null) {
			browser.select(minutoDesde, new OptionValueLocator(f.getMinutoDesde().toString()));
		}

		if (f.getHoraHasta() != null) {
			browser.select(horaHasta, new OptionValueLocator(f.getHoraHasta().toString()));
		}
		
		if (f.getMinutoHasta() != null) {
			browser.select(minutoHasta, new OptionValueLocator(f.getMinutoHasta().toString()));
		}
		
		if (f.getFrecuencia() != null) {
			browser.type(frecuencia, f.getFrecuencia());
		}
 
		if (f.getCupos() != null) {
			browser.type(cupos, f.getCupos());
		}
	}
	
	public static class Formulario {
		
		Date fecha = null;
		Integer horaDesde = null;
		Integer minutoDesde = null;
		Integer horaHasta = null;
		Integer minutoHasta = null;
		String frecuencia = null;
		String cupos = null;

		public Formulario() {}
		
		public Date getFecha() {
			return fecha;
		}
		public void setFecha(Date fecha) {
			this.fecha = fecha;
		}
		public Integer getHoraDesde() {
			return horaDesde;
		}
		public void setHoraDesde(Integer horaDesde) {
			this.horaDesde = horaDesde;
		}
		public Integer getMinutoDesde() {
			return minutoDesde;
		}
		public void setMinutoDesde(Integer minutoDesde) {
			this.minutoDesde = minutoDesde;
		}
		public Integer getHoraHasta() {
			return horaHasta;
		}
		public void setHoraHasta(Integer horaHasta) {
			this.horaHasta = horaHasta;
		}
		public Integer getMinutoHasta() {
			return minutoHasta;
		}
		public void setMinutoHasta(Integer minutoHasta) {
			this.minutoHasta = minutoHasta;
		}
		public String getFrecuencia() {
			return frecuencia;
		}
		public void setFrecuencia(String frecuencia) {
			this.frecuencia = frecuencia;
		}
		public String getCupos() {
			return cupos;
		}
		public void setCupos(String cupos) {
			this.cupos = cupos;
		}
	}
	
	
}
