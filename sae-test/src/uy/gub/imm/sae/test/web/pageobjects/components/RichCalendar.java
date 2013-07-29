package uy.gub.imm.sae.test.web.pageobjects.components;

import static org.jboss.arquillian.ajocado.Ajocado.elementNotVisible;
import static org.jboss.arquillian.ajocado.Ajocado.elementPresent;
import static org.jboss.arquillian.ajocado.Ajocado.elementVisible;
import static org.jboss.arquillian.ajocado.Ajocado.id;
import static org.jboss.arquillian.ajocado.Ajocado.jq;
import static org.jboss.arquillian.ajocado.Ajocado.waitGui;

import java.util.Calendar;
import java.util.Date;

import org.jboss.arquillian.ajocado.framework.AjaxSelenium;
import org.jboss.arquillian.ajocado.locator.IdLocator;
import org.jboss.arquillian.ajocado.locator.JQueryLocator;
import org.jboss.arquillian.ajocado.waiting.conditions.ElementNotVisible;
import org.jboss.arquillian.ajocado.waiting.conditions.ElementPresent;
import org.jboss.arquillian.ajocado.waiting.conditions.ElementVisible;

import uy.gub.imm.sae.test.web.pageobjects.ObjectPage;

public class RichCalendar extends ObjectPage {

	String id;
	IdLocator input;
	JQueryLocator table;

	public RichCalendar(AjaxSelenium browser, String id) {
		super(browser);
		this.id = id;
		input = id(id+"InputDate");
		table = jq("table[id='"+id+"']");
	}

	public void setValue(Date date) {

		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int dia = cal.get(Calendar.DAY_OF_MONTH);
		int mes = cal.get(Calendar.MONTH);
		int anio = cal.get(Calendar.YEAR);

		
		//Despliego el calendario
		ElementPresent inputPresent =  elementPresent.locator(input);
		waitGui.until(inputPresent);
		browser.click(input);
		ElementVisible tableVisible =  elementVisible.locator(table);
		waitGui.until(tableVisible);

		//Elijo el mes y año
	
		//click en mes/anio
		JQueryLocator botonMesAnio = table.getDescendant(jq("td[class*='rich-calendar-month'] div"));
		browser.click(botonMesAnio);
		JQueryLocator tablaEdicionMesAnio = jq(".[id='"+id+"Editor']");
		ElementVisible tablaEdicionMesAnioVisible =  elementVisible.locator(tablaEdicionMesAnio);
		waitGui.until(tablaEdicionMesAnioVisible);

		//Elijo el mes
		JQueryLocator botonMes = tablaEdicionMesAnio.getDescendant(jq(".[id='"+id+"DateEditorLayoutM"+mes+"']"));
		browser.click(botonMes);
		
		//Elijo el anio
		JQueryLocator botonAnio = tablaEdicionMesAnio.getDescendant(jq(".[id*='"+id+"DateEditorLayoutY']:contains('"+anio+"')"));
		browser.click(botonAnio);
		
		//Click en OK
		JQueryLocator botonOk = tablaEdicionMesAnio.getDescendant(jq(".[id='"+id+"DateEditorButtonOk']"));
		browser.click(botonOk);
		ElementNotVisible tablaEdicionMesAnioNoVisible = elementNotVisible.locator(tablaEdicionMesAnio);
		waitGui.until(tablaEdicionMesAnioNoVisible);
		
		//Elijo el dia
		JQueryLocator celdaDia = table.getDescendant(jq("td[id*='"+id+"DayCell']:contains('"+dia+"')"));
		browser.click(celdaDia);
		
	}
}
