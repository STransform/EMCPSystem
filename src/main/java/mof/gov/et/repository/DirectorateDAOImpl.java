/*

package mof.gov.et.repository;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import mof.gov.et.model.Directorate;


@Repository
public class DirectorateDAOImpl implements DirectorateDAO{
     
	@Autowired
	//@Qualifier(value="DirectorateDAO")
	private EntityManager entityManager;
	

	@Override
	public List<Directorate> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Directorate> query = currentSession.createQuery("from Directorate", Directorate.class);
		List<Directorate> list = query.getResultList();
		return list;
	}

	@Override
	public Directorate get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Directorate directorateObj = currentSession.get(Directorate.class, id);
		return directorateObj;
	}

	@Override
	public void save(Directorate directorate) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(directorate);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Directorate directorateObj = currentSession.get(Directorate.class, id);
		currentSession.delete(directorateObj);
	}



	

}

*/
