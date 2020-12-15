package mof.gov.et.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import mof.gov.et.model.User;

public interface MyUserRepo extends JpaRepository<User,Long>{

	

}
