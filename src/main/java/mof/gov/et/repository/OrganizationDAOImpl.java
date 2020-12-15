
/*
package mof.gov.et.repository;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import mof.gov.et.model.Organization;

@Repository
public class OrganizationDAOImpl implements OrganizationDAO {
	
	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List<Organization> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Organization> query = currentSession.createQuery("from Organization", Organization.class);
		List<Organization> list = query.getResultList();
		return list;
	}

	@Override
	public Organization get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Organization organizationObj = currentSession.get(Organization.class, id);
		return organizationObj;
	}

	@Override
	public void save(Organization organization) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(organization);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Organization organizationObj = currentSession.get(Organization.class, id);
		currentSession.delete(organizationObj);
		
	}
	
	
	   
	   

}
*/