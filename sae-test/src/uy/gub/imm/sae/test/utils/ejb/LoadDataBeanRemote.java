package uy.gub.imm.sae.test.utils.ejb;

import javax.ejb.Remote;

import uy.gub.imm.sae.exception.ApplicationException;
import uy.gub.imm.sae.exception.BusinessException;
import uy.gub.imm.sae.exception.UserException;

@Remote
public interface LoadDataBeanRemote {

	public void load() throws ApplicationException, BusinessException, UserException;
	
	
}
