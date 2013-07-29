package uy.gub.imm.sae.test.web.pageobjects;

import static org.jboss.arquillian.ajocado.Ajocado.id;
import static org.jboss.arquillian.ajocado.Ajocado.jq;
import static org.jboss.arquillian.ajocado.Ajocado.waitForXhr;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;
import org.jboss.arquillian.ajocado.locator.IdLocator;
import org.jboss.arquillian.ajocado.locator.JQueryLocator;

public class SeleccionAgendaRecursoPage extends ObjectPage {

	private final static String AGENDA_NO_SELECCIONADA = "Seleccionar...";
	private final static String RECURSO_NO_SELECCIONADO = "Seleccionar...";
	
	private IdLocator linkSeleccionarAgenda = id("mostrarAgendaRecurso:agendaMarcada");
	private IdLocator linkSeleccionarRecurso = id("mostrarAgendaRecurso:recursoMarcado");

	
	public SeleccionAgendaRecursoPage(AjaxSelenium browser) {
		super(browser);
	}

	public void seleccionarAgenda(String nombre) {

		waitForXhr(browser).click(linkSeleccionarAgenda);;
		waitForXhr(browser).click(jq("input[title*='check-agenda-" + nombre + "']"));

	}

	public void seleccionarRecurso(String nombre) {
		
		JQueryLocator recursoLocator = jq("input[title*='check-recurso-" + nombre + "']");
		
		if (!browser.isElementPresent(recursoLocator)) {
			waitForXhr(browser).click(linkSeleccionarAgenda);
		}

		waitForXhr(browser).click(recursoLocator);
	}

	public Boolean hayAgendaSeleccionada() {
		
		return ! browser.getText(linkSeleccionarAgenda).equals(AGENDA_NO_SELECCIONADA);
	}

	public Boolean hayRecursoSeleccionado() {
		
		return ! browser.getText(linkSeleccionarRecurso).equals(RECURSO_NO_SELECCIONADO);
	}
}
