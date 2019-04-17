package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcBadgesDao implements BadgesDao {
	
	private JdbcTemplate jdbcTemplate;
	
	 @Autowired
	    public JdbcBadgesDao(DataSource dataSource) {
	        this.jdbcTemplate = new JdbcTemplate(dataSource);
	    }
	
	 @Override
	    public Badges getBadges(String username) {
	    	Badges badges = new Badges();
	    	int locationCount = 0;
	    	int defenderLocationCount = 0;
	    	String sqlLocationsCount = "SELECT count(*) as total FROM location";
	    	SqlRowSet results = jdbcTemplate.queryForRowSet(sqlLocationsCount);
	    	  while(results.next()) {
		            locationCount = results.getInt("total");
		        }
 	  String sqlUserLocationsCount = "SELECT count(*) as total FROM users_location WHERE (SELECT id FROM users WHERE username = ?) = id";
	    	SqlRowSet defenderResults = jdbcTemplate.queryForRowSet(sqlUserLocationsCount, username);
	    	  while(defenderResults.next()) {
		            defenderLocationCount = defenderResults.getInt("total");
		        }
	    	if(defenderLocationCount == locationCount) {
	    		badges.setDefenderBadge(true);
	    	}
	    	else {
	    		badges.setDefenderBadge(false);
	    	}
	    	
	    	int bottomsLocationCount = 0;
	  	  String sqlBottomsLocationsCount = "SELECT count(*) as total FROM users_location ul\n" + 
	  	  		"JOIN location l ON l.location_name = ul.location_name\n" + 
	  	  		"JOIN users u ON u.id = ul.id\n" + 
	  	  		"WHERE u.username = ? AND l.category = 'Bar/Rest'";
	  	    	SqlRowSet bottomsResults = jdbcTemplate.queryForRowSet(sqlBottomsLocationsCount, username);
	  	    	  while(bottomsResults.next()) {
	  		            bottomsLocationCount = bottomsResults.getInt("total");
	  		        }
	  	    	if(bottomsLocationCount >= 5 ) {
	  	    		badges.setBottomsUpBadge(true);
	  	    	}
	  	    	else {
	  	    		badges.setBottomsUpBadge(false);
	  	    	}
	    	

	    	return badges;
	    	
	    }
}
	 
	