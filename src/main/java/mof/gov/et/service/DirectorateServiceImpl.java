package mof.gov.et.service;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mof.gov.et.model.Directorate;
import mof.gov.et.model.Organization;
import mof.gov.et.repository.DirectorateDAO;


@Service

public class DirectorateServiceImpl {
    
	@Autowired
	private DirectorateDAO directorateDAO;
	
	
	public List<Directorate> getAllDirectorate() {
		return directorateDAO.findAll();
	}
	
	 public void save(Directorate directorate) {
		 directorateDAO.save(directorate);
	}

	public Optional <Directorate> findById(Integer id){
			return directorateDAO.findById(id);
	}

	public void delete(Integer id) {
			directorateDAO.deleteById(id);
		}
	
	

}
