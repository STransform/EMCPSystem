package mof.gov.et.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import mof.gov.et.model.Directorate;


@Repository
public interface DirectorateRepository extends JpaRepository<Directorate, String> {

	
	   
}
