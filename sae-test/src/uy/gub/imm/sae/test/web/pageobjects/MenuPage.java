package uy.gub.imm.sae.test.web.pageobjects;

import static org.jboss.arquillian.ajocado.Ajocado.jq;
import static org.jboss.arquillian.ajocado.Ajocado.waitForXhr;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;
import org.jboss.arquillian.ajocado.locator.JQueryLocator;

import uy.gub.imm.sae.test.web.pageobjects.uc.DisponibilidadesConsultarPage;
import uy.gub.imm.sae.test.web.pageobjects.uc.DisponibilidadesGenerarUnDiaPage;

public class MenuPage extends ObjectPage{


	//JQueryLocator menuDisponibilidades = jq("div[class$='rich-panelbar-header']:contains('Disponibilidades')");
	//JQueryLocator menuDisponibilidades = jq("div[id='formMenu:Disponibilidades']").getDescendant(jq("div[class$='rich-panelbar-header']"));
	JQueryLocator menuDisponibilidades = jq("div[id='formMenu:Disponibilidades'] div[class*='rich-panelbar-header']");
	JQueryLocator linkDispConsultar = jq("div[id='formMenu:Disponibilidades'] a:contains('Consultar')");
	JQueryLocator linkDispGenerarUnDia = jq("div[id='formMenu:Disponibilidades'] a:contains('Generar un día')");

	
	public MenuPage(AjaxSelenium browser) {
		super(browser);
	}

	
	public DisponibilidadesGenerarUnDiaPage getDisponibilidadesGenerarUnDiaPage() {
		
		browser.click(menuDisponibilidades);
		waitForXhr(browser).click(linkDispGenerarUnDia);
		
		return new DisponibilidadesGenerarUnDiaPage(browser);
	}

	
	public DisponibilidadesConsultarPage getDisponibilidadesConsultarPage() {
		
		browser.click(menuDisponibilidades);
		browser.click(linkDispConsultar);
		
		return new DisponibilidadesConsultarPage(browser);
	}
	

}
