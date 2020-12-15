package mof.gov.et.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mof.gov.et.model.Course;
@Repository
public interface CourseRepository extends JpaRepository<Course, Integer> {

}
