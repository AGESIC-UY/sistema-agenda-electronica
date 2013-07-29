package uy.gub.imm.sae.test.utils.ejb;


public interface TestContextManagerService {

	public void setupContext(String agendaNombre, String prefijoRecursoNombre, int cantRecursos);

	public void cleanContext(String agendaNombre);
	
}
