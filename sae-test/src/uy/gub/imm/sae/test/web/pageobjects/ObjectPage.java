package uy.gub.imm.sae.test.web.pageobjects;

import static org.junit.Assert.fail;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;

public abstract class ObjectPage {

	protected AjaxSelenium browser;

	public ObjectPage(AjaxSelenium browser) {
		super();
		this.browser = browser;
	}

	protected void sleep(int timeout) {
		try {
			Thread.sleep(timeout);
		} catch (InterruptedException e) {
			e.printStackTrace();
			fail(e.getMessage());
		}

	}
	
}
