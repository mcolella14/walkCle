package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.AssertTrue;

import org.hibernate.validator.constraints.NotBlank;

/**
 * User
 */
public class User {
	
	private List<Location> checkedInLocations = new ArrayList<Location>();


	/**
	 * @param passwordMatching the passwordMatching to set
	 */
	public void setPasswordMatching(boolean passwordMatching) {
		this.passwordMatching = passwordMatching;
	}

	@NotBlank(message="Username is required")
    private String username;

    @NotBlank(message="Role is required")
    private String role;
    private long id;

    @NotBlank(message="Password is required")
    private String password;
    private String confirmPassword;

    private boolean passwordMatching;
    @AssertTrue(message = "Passwords must match")
    public boolean isPasswordMatching() {
        if (password != null) {
            return password.equals(confirmPassword);
        }
        return true;
    }

    public String getPassword() {
        return password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
	
    /**
	 * @return the checkedInLocations
	 */
	public List<Location> getCheckedInLocations() {
		return checkedInLocations;
	}

	/**
	 * @param checkedInLocations the checkedInLocations to set
	 */
	public void setCheckedInLocations(List<Location> checkedInLocations) {
		this.checkedInLocations = checkedInLocations;
	}
}