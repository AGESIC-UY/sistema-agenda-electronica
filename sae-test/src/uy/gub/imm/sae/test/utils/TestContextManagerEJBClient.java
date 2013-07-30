package uy.gub.imm.sae.test.utils;

import static org.junit.Assert.fail;

import java.io.File;
import java.util.Properties;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.login.LoginException;

import org.jboss.security.client.SecurityClient;
import org.jboss.security.client.SecurityClientFactory;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.spec.JavaArchive;

import uy.gub.imm.sae.test.utils.ejb.TestContextManagerService;

public class TestContextManagerEJBClient {

	
	//SINGLETON
	private static TestContextManagerEJBClient self;
	
	
	
	//EJB
	//Se utliza para realizar el login a los EJB asegurados
	private SecurityClient securityClient = null;
	private Boolean ejbLoggedIn = false;
	
	
	/**
	 * SINGLETON
	 */
	
	private TestContextManagerEJBClient() {
	}
	
	public static TestContextManagerEJBClient getInstance() {
		if (self == null) {
			self = new TestContextManagerEJBClient();
		}
		return self;
	}

	
	
	
	
	/**
	 * EJB
	 */
	//Métodos para loguearme a los ejbs para ejecutar el test en modo "in container" pues los ejbs estan asegurados
	public void ejbLogin() {
	
		try {
			ejbLogout();
			securityClient = SecurityClientFactory.getSecurityClient();
			securityClient.setSimple("admin", "admin");
			securityClient.login();
			ejbLoggedIn = true;
		} catch (LoginException e) {
			e.printStackTrace();
			fail(e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
		
	}
	
	public void ejbLogout() {
		if (securityClient != null && ejbLoggedIn == true) {
			securityClient.logout();
			ejbLoggedIn = false;
		}
	}
	
	public boolean isEjbLoggedIn() {
		return ejbLoggedIn;
	}	

	public TestContextManagerService getTestContextManagerService() throws NamingException {
	
		Properties prop = new Properties();
		prop.put("java.naming.factory.initial", "org.jnp.interfaces.NamingContextFactory");
		prop.put("java.naming.provider.url","jnp://localhost:1099");
		prop.put("java.naming.factory.url.pkgs","org.jboss.naming:org.jnp.interfaces");
		InitialContext ctx = new InitialContext(prop);
		TestContextManagerService testManager = (TestContextManagerService) ctx.lookup("TestContextManagerBean/remote");

		return testManager;
	}
	
	
	public JavaArchive createTestContextManagerServiceArtifact() {

		JavaArchive jar = ShrinkWrap
				.create(JavaArchive.class, "test.jar")
				.addPackages(true, "uy.gub.imm.sae.test.utils.ejb")
				//.addPackages(true, "uy.gub.imm.sae.exception")
				//.addPackages(true, "uy.gub.imm.sae.entity")
				//.addPackages(true, "uy.gub.imm.sae.common")
				//.addPackages(true, "uy.gub.imm.sae.business.ejb.facade")
				//.addPackages(true, "uy.gub.imm.sae.business.dto")				
				//.addPackages(true, "uy.gub.sae.acciones")				
				//.addPackages(true, "uy.gub.sae.autocompletados")
				//.addPackages(true, "uy.gub.imm.sae.filter")				
				//.addPackages(true, "uy.gub.imm.sae.web")
				//.addPackages(true, "uy.gub.imm.sae.validaciones")
				.addClass(this.getClass()) //Me agrego a mi mismo para el caso en que el client es ejecutado en el container
				.addAsManifestResource(new File("resources/persistence.xml"),"persistence.xml")
				.addAsManifestResource(new File("resources/jboss.xml"), "jboss.xml")
				.addAsManifestResource(new File("resources/test-ejb-jar.xml"), "ejb-jar.xml");

		System.out.println(jar.toString(true));

		return jar;

	}	
	
	
}
