package mof.gov.et.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mof.gov.et.model.Organization;
import mof.gov.et.repository.OrganizationDAO;

@Service
public class OrganizationServiceImpl  {
	
	 @Autowired
	 private OrganizationDAO organizationDAO;
	
	public List<Organization> getAllOrganization() {
		return organizationDAO.findAll();
	}

   public void save(Organization organization) {
	organizationDAO.save(organization);
}

public Optional <Organization> findById(Integer id){
	return organizationDAO.findById(id);
}

public void delete(Integer id) {
	organizationDAO.deleteById(id);
}
	
	
	   
	    
}


