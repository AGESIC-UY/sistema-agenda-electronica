package uy.gub.imm.sae.test.utils.ejb;

import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.jboss.proxy.compiler.Runtime;

import uy.gub.imm.sae.business.ejb.facade.AgendaGeneral;
import uy.gub.imm.sae.business.ejb.facade.Agendas;
import uy.gub.imm.sae.business.ejb.facade.Disponibilidades;
import uy.gub.imm.sae.business.ejb.facade.Recursos;
import uy.gub.imm.sae.common.enumerados.Tipo;
import uy.gub.imm.sae.entity.Agenda;
import uy.gub.imm.sae.entity.AgrupacionDato;
import uy.gub.imm.sae.entity.DatoASolicitar;
import uy.gub.imm.sae.entity.Recurso;
import uy.gub.imm.sae.exception.ApplicationException;
import uy.gub.imm.sae.exception.BusinessException;
import uy.gub.imm.sae.exception.UserException;

@Stateless
public class TestContextManagerBean implements TestContextManagerLocal, TestContextManagerRemote {

	@PersistenceContext(unitName = "SAE-EJB-TEST")
	private EntityManager entityManager;

	@Resource
	private SessionContext ctx;

	@EJB(mappedName = "SAE-EAR/AgendaGeneralBean/remote")
	private AgendaGeneral agendaGeneralEJB;
	@EJB(mappedName = "SAE-EAR/AgendasBean/remote")
	private Agendas agendasEJB;
	@EJB(mappedName = "SAE-EAR/RecursosBean/remote")
	private Recursos recursosEJB;
	@EJB(mappedName = "SAE-EAR/DisponibilidadesBean/remote")
	private Disponibilidades disponibilidadesEJB;
	
	@Override
	public void setupContext(String agendaNombre, String prefijoRecursoNombre, int cantRecursos) {
	}
	
	


	@Override
	public void cleanContext(String agendaNombre) {
/*
		try {
	
			Agenda a = (Agenda) entityManager
					.createQuery("from Agenda a where a.nombre = :nombre")
					.setParameter("nombre", agendaNombre).getSingleResult();

			for (Recurso rec : a.getRecursos()) {

				entityManager
				.createNativeQuery(
						"delete from ae_reservas_disponibilidades "
								+ "where aedi_id in (select id from ae_disponibilidades where aere_id = :rId)")
				.setParameter("rId", rec.getId()).executeUpdate();

				
				entityManager
						.createNativeQuery(
								"delete from ae_reservas_disponibilidades "
										+ "where aedi_id in (select id from ae_disponibilidades where aere_id = :rId)")
						.setParameter("rId", rec.getId()).executeUpdate();

				entityManager
						.createNativeQuery(
								"delete from ae_disponibilidades where aere_id = :rId")
						.setParameter("rId", rec.getId()).executeUpdate();

				entityManager
						.createQuery(
								"delete from DatoDelRecurso info where info.recurso.id = :rId")
						.setParameter("rId", rec.getId()).executeUpdate();

				// Borrar reservas colgadas
				// Borrar asociacion de validacions y datos a solicitar y
				// valores

				if (rec.getTextoRecurso() != null)
					entityManager.remove(rec.getTextoRecurso());
				entityManager.remove(rec);
			}

			if (a.getTextoAgenda() != null)
				entityManager.remove(a.getTextoAgenda());
			entityManager.remove(a);

		} catch (NoResultException e) {

		}
		*/
	}

	/*
	@Override
	public EntityManager getEntityManager() {
		return entityManager;
	}*/
	
}

