package uy.gub.imm.sae.test.web.pageobjects;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;

public class HomePage extends ObjectPage{

	private SeleccionAgendaRecursoPage seleccionAgendaRecursoPage;
	private MenuPage menuPage;
	
	public HomePage(AjaxSelenium browser) {
		super(browser);
		seleccionAgendaRecursoPage = new SeleccionAgendaRecursoPage(browser);
		menuPage = new MenuPage(browser);
	}

	public SeleccionAgendaRecursoPage getSeleccionAgendaRecursoPage() {
		return seleccionAgendaRecursoPage;
	}

	public MenuPage getMenuPage() {
		return menuPage;
	}
	
}
