package mof.gov.et.model;

import com.sun.istack.NotNull;

public class ChangePassword {

	
	@NotNull
	private Long id;
	

	private String currentPassword;
	
	private String newPassword;
	

	private String confirmPassword;
	
	public ChangePassword() {
		
	}
	public ChangePassword(Long id) {
		this.id=id;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCurrentPassword() {
		return currentPassword;
	}
	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
	
	
	
	
}
