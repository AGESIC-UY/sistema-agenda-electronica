package uy.gub.imm.sae.test.utils.ejb;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import uy.gub.imm.sae.business.ejb.facade.AgendaGeneral;
import uy.gub.imm.sae.business.ejb.facade.Agendas;
import uy.gub.imm.sae.business.ejb.facade.Disponibilidades;
import uy.gub.imm.sae.business.ejb.facade.Recursos;
import uy.gub.imm.sae.business.ejb.facade.Validaciones;
import uy.gub.imm.sae.entity.Accion;
import uy.gub.imm.sae.entity.Agenda;
import uy.gub.imm.sae.entity.DatoASolicitar;
import uy.gub.imm.sae.entity.Recurso;
import uy.gub.imm.sae.entity.Validacion;
import uy.gub.imm.sae.entity.ValidacionPorDato;
import uy.gub.imm.sae.entity.ValidacionPorRecurso;
import uy.gub.imm.sae.exception.ApplicationException;
import uy.gub.imm.sae.exception.BusinessException;
import uy.gub.imm.sae.exception.UserException;

@Stateless
public class LoadDataBean implements LoadDataBeanRemote {

	@PersistenceContext(unitName = "SAE-EJB")
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
	@EJB(mappedName = "SAE-EAR/ValidacionesBean/remote")
	private Validaciones validacionesEJB;

	private static final String VAL_MAIL = "VALIDACION_MAIL";
	private static final String ACC_NOTIFICAR_CONFIRMAR = "NOTIFICAR_CONFIRMACION_DE_RESERVA";
	
	
	private static final String NOMBRE_CAMPO_MAIL = "correo";
	private static final String NOMBRE_PARAM_MAIL = "MAIL";
	

	@Override
	public void load() throws ApplicationException, BusinessException, UserException {


		Query qVal = entityManager.createQuery("from Validacion v where v.nombre=:nombre and v.fechaBaja == null");
		Validacion valMail = (Validacion) qVal.setParameter("nombre", VAL_MAIL).getSingleResult();


		Query qAccion = entityManager.createQuery("from Accion a where a.nombre=:nombre and a.fechaBaja == null");
		Accion accNotificar = (Accion) qAccion.setParameter("nombre", ACC_NOTIFICAR_CONFIRMAR).getSingleResult();


		List<Agenda> agendas = agendaGeneralEJB.consultarAgendas();

		for (Agenda a : agendas) {

			for (Recurso r : a.getRecursos()) {
				
				asociarValidacionMail(r, valMail);

			}
		}

	}
	
	
	
	private void asociarValidacionMail(Recurso r, Validacion v) throws BusinessException, UserException {

		DatoASolicitar campoMail = null;
		for (DatoASolicitar campo : r.getDatoASolicitar()) {
			if (campo.getNombre().equals(NOMBRE_CAMPO_MAIL) && campo.getFechaBaja() == null ) {
				campoMail = campo;
			}
		}
		if (campoMail == null) {throw new RuntimeException("No existe el campo "+NOMBRE_CAMPO_MAIL+" para el recurso "+r.getAgenda().getNombre()+ " - "+r.getNombre());}
		
		ValidacionPorRecurso vxr = new ValidacionPorRecurso();
		vxr.setOrdenEjecucion(1);
		vxr.setRecurso(r);
		vxr.setValidacion(v);

		List<ValidacionPorDato> vxdList = new ArrayList<ValidacionPorDato>();
		ValidacionPorDato vxd = new ValidacionPorDato();
		vxd.setValidacionPorRecurso(vxr);
		vxd.setDatoASolicitar(campoMail);
		vxd.setNombreParametro(NOMBRE_PARAM_MAIL);
		vxdList.add(vxd);
		vxr.setValidacionesPorDato(vxdList);
		
		validacionesEJB.crearValidacionPorRecurso(vxr);

	}
	
}
