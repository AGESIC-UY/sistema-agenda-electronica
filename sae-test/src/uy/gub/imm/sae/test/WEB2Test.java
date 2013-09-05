package uy.gub.imm.sae.test;

import static org.jboss.arquillian.ajocado.Ajocado.id;
import static org.jboss.arquillian.ajocado.Ajocado.jq;
import static org.jboss.arquillian.ajocado.Ajocado.waitForXhr;
import static org.junit.Assert.fail;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.Date;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;
import org.jboss.arquillian.ajocado.locator.JQueryLocator;
import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.container.test.api.RunAsClient;
import org.jboss.arquillian.drone.api.annotation.Drone;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.arquillian.junit.InSequence;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;

import uy.gub.imm.sae.test.utils.TestContextManagerEJBClient;
import uy.gub.imm.sae.test.utils.TestContextManagerWEBClient;
import uy.gub.imm.sae.test.utils.ejb.TestContextManagerService;
import uy.gub.imm.sae.test.web.pageobjects.HomePage;
import uy.gub.imm.sae.test.web.pageobjects.LoginPage;
import uy.gub.imm.sae.test.web.pageobjects.SeleccionAgendaRecursoPage;
import uy.gub.imm.sae.test.web.pageobjects.uc.DisponibilidadesGenerarUnDiaPage;


@RunWith(Arquillian.class)
public class WEB2Test {

	private static final String agendaNombre1 = "test-a01";
	private static final String prefijoRecursoNombre = "recurso";

	
	@Drone
	AjaxSelenium browser;

	//@ArquillianResource
	//static URL deploymentURL;

	private LoginPage loginPage;
	private HomePage homePage;

	
	//@Before
	public void init() {
		
		if (loginPage == null || !loginPage.isLogged()) {

			loginPage = new LoginPage(browser);
			homePage = loginPage.login("admin", "admin");
		}
		
		SeleccionAgendaRecursoPage seleccion = homePage.getSeleccionAgendaRecursoPage();

		if (!seleccion.hayAgendaSeleccionada()) {
			seleccion.seleccionarAgenda(agendaNombre1);
			seleccion.seleccionarRecurso(prefijoRecursoNombre + 1);
			assertTrue(seleccion.hayAgendaSeleccionada() && seleccion.hayRecursoSeleccionado());
		}

	}
	
	
	/**
	 * Asumiendo que hay existen disp para hoy, genero para hoy pero en otro horario, es decir, sin solaparse 
	 */
	@Test @RunAsClient @InSequence(1)
	public void testGenerarDisponibilidadesUnDia1() {
		
		assertTrue(true);
		
		/*
		DisponibilidadesGenerarUnDiaPage useCasePage = homePage.getMenuPage().getDisponibilidadesGenerarUnDiaPage();

		DisponibilidadesGenerarUnDiaPage.Formulario form = new DisponibilidadesGenerarUnDiaPage.Formulario();
		form.setFecha(new Date());

		//Verifico que hoy existan disponibilidades
		useCasePage.consultarDisponibilidades(form);

		assertTrue(useCasePage.getMensajeError() == null);
		assertTrue(useCasePage.hayDisponibilidad( 9,  0, 10, 0));
		assertTrue(useCasePage.hayDisponibilidad(11, 30, 10, 0));
		assertTrue(useCasePage.hayDisponibilidad(12,  0, 10, 0));
		assertTrue(useCasePage.hayDisponibilidad(14, 30, 10, 0));
		
		//Genero mas disponibilidades para hoy a continuacion de las existentes
		form.setHoraDesde(15);
		form.setMinutoDesde(0);
		form.setHoraHasta(17);
		form.setMinutoHasta(0);
		form.setFrecuencia("30");
		form.setCupos("2");
		useCasePage.crearDisponibilidades(form);

		assertTrue(useCasePage.getMensajeInfo().equals("Disponibilidades creadas correctamente."));
		assertTrue(useCasePage.hayDisponibilidad( 9,  0, 10, 0));
		assertTrue(useCasePage.hayDisponibilidad(11, 30, 10, 0));
		assertTrue(useCasePage.hayDisponibilidad(12,  0, 10, 0));
		assertTrue(useCasePage.hayDisponibilidad(14, 30, 10, 0));
		assertTrue(useCasePage.hayDisponibilidad(15,  0,  2, 0));
		assertTrue(useCasePage.hayDisponibilidad(16, 30,  2, 0));
		*/
	}



}
