package uy.gub.imm.sae.test;

import javax.ejb.EJB;

import junit.framework.Assert;

import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.junit.Test;
import org.junit.runner.RunWith;

import uy.gub.imm.sae.business.ejb.facade.AgendaGeneral;
import uy.gub.imm.sae.exception.ApplicationException;
import uy.gub.imm.sae.test.utils.TestContextManagerEJBClient;
import uy.gub.imm.sae.test.utils.ejb.TestContextManagerService;

@RunWith(Arquillian.class)
public class EJBTest {

	private static final String agendaNombre1 = "test-a01";
	private static final String prefijoRecursoNombre = "recurso";

	@EJB(mappedName = "test/TestContextManagerBean/remote")
	private TestContextManagerService testManager;

	
	@EJB(mappedName = "SAE-EAR/AgendaGeneralBean/remote")
	private AgendaGeneral ejb;


	@Deployment
	public static JavaArchive createTestArchive() {

		return TestContextManagerEJBClient.getInstance().createTestContextManagerServiceArtifact();

	}

	@Test
	public void estaInyectadoEJB() throws Exception {
		Assert.assertNotNull(ejb);
	}

	@Test
	public void test() {
		
		/*TestContextManagerEJBClient.getInstance();
		
		TestContextManagerEJBClient.getInstance().ejbLogin();
		
		
		try {
			initContext();		
			Assert.assertTrue(ejb.consultarAgendas().size() > 0);
		} catch (ApplicationException e) {
			throw new RuntimeException(e);
		} finally {
			TestContextManagerEJBClient.getInstance().ejbLogout();
		}*/
	}

	
	private void initContext() {
		testManager.cleanContext(agendaNombre1);
		testManager.setupContext(agendaNombre1, prefijoRecursoNombre, 3);
	}
	
	
	
}
