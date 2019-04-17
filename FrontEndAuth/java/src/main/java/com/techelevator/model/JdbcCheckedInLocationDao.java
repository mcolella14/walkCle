package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcCheckedInLocationDao implements CheckedInLocationDao{
	
	private JdbcTemplate jdbcTemplate;
	
	 @Autowired
	    public JdbcCheckedInLocationDao(DataSource dataSource) {
	        this.jdbcTemplate = new JdbcTemplate(dataSource);
	    }
	 
	 @Override
	 public void addCheckedInLocation(String location, String username) {
	    	String sqlAddCheckedInLocation = " INSERT INTO users_location (location_name, id) VALUES (?, (SELECT id FROM users WHERE username = ?));";
	    	jdbcTemplate.update(sqlAddCheckedInLocation, location, username);
	    	
	    }

}
