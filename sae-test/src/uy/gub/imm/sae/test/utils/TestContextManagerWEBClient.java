package uy.gub.imm.sae.test.utils;

import static org.jboss.arquillian.ajocado.Ajocado.id;
import static org.jboss.arquillian.ajocado.Ajocado.jq;

import java.net.MalformedURLException;
import java.net.URL;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;
import org.jboss.arquillian.ajocado.locator.IdLocator;
import org.junit.Assert;

public class TestContextManagerWEBClient {

	
	//SINGLETON
	private static TestContextManagerWEBClient self;
	
	
	
	//WEB
	private Boolean webLoggedIn = false;
	private URL urlLogin;
	private URL urlApp;
	private IdLocator locatorLinkCerrar;
	private AjaxSelenium browser;

	

	/**
	 * SINGLETON
	 */
	
	private TestContextManagerWEBClient() {
		try {
			urlLogin = new URL("https://localhost:8443/sae-admin/login/loginSeguro.xhtml");
			urlApp   = new URL("http://localhost:8080/sae-admin");
			locatorLinkCerrar =  id("formCerrarSesion:linkCerrarSesion");
			
		} catch (MalformedURLException e) {
			throw new RuntimeException(e);
		}
 
	}
	
	public static TestContextManagerWEBClient getInstance() {
		if (self == null) {
			self = new TestContextManagerWEBClient();
		}
		return self;
	}

	
	
	/**
	 * WEB
	 */
	
	public TestContextManagerWEBClient setBrowser(AjaxSelenium browser) {
		this.browser = browser; 
		return this;
	}
	
	public void webLogin(String usuario, String password) {

		// Abro página de la aplicación.
		browser.setSpeed(500);
		browser.open(urlApp);
		browser.waitForPageToLoad();
	
		// Me autentico
		browser.type(jq("input[name$='j_username']"), usuario);
		browser.type(jq("input[name$='j_password']"), password);
		browser.click(jq("input[type$='submit']"));
		browser.waitForPageToLoad();
		

		// Verifico estar logueado.
		browser.open(urlApp);
		browser.waitForPageToLoad();
		Assert.assertTrue("Error de login, no se ha podido loguear",
				browser.isElementPresent(locatorLinkCerrar)
		);

		webLoggedIn = true;
	}

	public void webLogout() {

		// Abro página de la aplicación supuestamente logueada
		browser.open(urlApp);
		browser.waitForPageToLoad();
		
		Assert.assertTrue(
				"No se encontró el link salir para realizar el logout",
				browser.isElementPresent(locatorLinkCerrar));
		browser.click(locatorLinkCerrar);
		browser.waitForPageToLoad();
		Assert.assertEquals("Error de logout, no se pudo salir de la aplicacion", urlLogin, browser.getLocation());

		webLoggedIn = false;
	}
	
	public boolean isWebLoggedIn() {
		return webLoggedIn;
	}
	
	
	
	
}
