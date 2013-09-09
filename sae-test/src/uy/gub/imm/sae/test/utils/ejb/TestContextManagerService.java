package uy.gub.imm.sae.test.utils.ejb;

import javax.persistence.EntityManager;

public interface TestContextManagerService {

	public void setupContext(String agendaNombre, String prefijoRecursoNombre, int cantRecursos);

	public void cleanContext(String agendaNombre);
	
	public EntityManager getEntityManager();
	
}
