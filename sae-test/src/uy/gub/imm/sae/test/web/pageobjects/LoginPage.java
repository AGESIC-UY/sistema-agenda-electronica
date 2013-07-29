package uy.gub.imm.sae.test.web.pageobjects;

import static org.jboss.arquillian.ajocado.Ajocado.id;
import static org.jboss.arquillian.ajocado.Ajocado.jq;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.net.MalformedURLException;
import java.net.URL;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;
import org.jboss.arquillian.ajocado.locator.IdLocator;

public class LoginPage extends ObjectPage {

	private URL urlLogin;
	private URL urlApp;
	private IdLocator locatorLinkCerrar;

	public LoginPage(AjaxSelenium browser) {
		super(browser);

		try {
			urlLogin = new URL("https://localhost:8443/sae-admin/login/loginSeguro.xhtml");
			urlApp   = new URL("http://localhost:8080/sae-admin");
		} catch (MalformedURLException e) {
			throw new RuntimeException(e);
		}
		locatorLinkCerrar =  id("formCerrarSesion:linkCerrarSesion");

	}
	

	public Boolean isLogged() {
		return browser.isElementPresent(locatorLinkCerrar);
	}
	
	public HomePage login(String usuario, String password) {

		if (isLogged()) {
			logout();
		}
		else {
			// Abro página de la aplicación.
			browser.open(urlApp);
			browser.waitForPageToLoad();
		}
	
		// Me autentico
		browser.type(jq("input[name$='j_username']"), usuario);
		browser.type(jq("input[name$='j_password']"), password);
		browser.click(jq("input[type$='submit']"));
		browser.waitForPageToLoad();

		// Verifico estar logueado.
		assertTrue("No se pudo iniciar sesion en la aplicación", isLogged());
		
		return new HomePage(browser);
	}

	public void logout() {

		// Abro página de la aplicación supuestamente logueada
		browser.open(urlApp);
		browser.waitForPageToLoad();
		
		if (!isLogged()) {
			fail("No esta iniciado en la aplicacion");
		}
		browser.click(locatorLinkCerrar);
		browser.waitForPageToLoad();
		assertEquals("No se cerro correctamente la sesion", urlLogin, browser.getLocation());
	}
	
	
}
