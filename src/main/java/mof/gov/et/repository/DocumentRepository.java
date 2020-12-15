package mof.gov.et.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import mof.gov.et.model.Document;

public interface DocumentRepository extends JpaRepository<Document,Integer> {

	
}
