package mof.gov.et.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mof.gov.et.model.Organization;



@Repository
public interface OrganizationRepository extends JpaRepository<Organization, Integer> {

}
