package mof.gov.et.service;


import org.springframework.stereotype.Service;

import mof.gov.et.model.ChangePassword;
import mof.gov.et.model.User;


 
@Service
public interface UserService {
     
	public Iterable<User> getAllUsers();

	public User createUser(User user) throws Exception;

	public User getUserById(Long id) throws Exception;
	
	public User updateUser(User user) throws Exception;
	
	public void deleteUser(Long id) throws Exception;
	
	public User changePassword(ChangePassword form) throws Exception;
 
}
