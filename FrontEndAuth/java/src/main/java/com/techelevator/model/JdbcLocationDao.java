package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.authentication.PasswordHasher;

@Component
public class JdbcLocationDao implements LocationDao{
	
	private JdbcTemplate jdbcTemplate;
	
	 @Autowired
	    public JdbcLocationDao(DataSource dataSource) {
	        this.jdbcTemplate = new JdbcTemplate(dataSource);
	    }
	 
	 @Override
	public void addNewLocation(String location, String area, String category, String place_id, Double lat, Double lng) {
		 
		 String sqlInsert = " INSERT INTO location(name, area, category, place_id, lat, lng) VALUES(?, ?, ?, ?, ?, ?)";
		 jdbcTemplate.update(sqlInsert);
	 }

	 
	 @Override
	    public List<Location> getAllLocations() {
	        List<Location> locations = new ArrayList<Location>();
	        String sqlSelectAllLocations = "SELECT *  FROM location";
	        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllLocations);

	        while(results.next()) {
	            Location location = mapResultToLocation(results);
	            locations.add(location);
	        }
	       
	        return locations;
	    }
	 
	 private Location mapResultToLocation(SqlRowSet results) {
	        Location location = new Location();
	        location.setName(results.getString("location_name"));
	        location.setArea(results.getString("area"));
	        location.setCategory(results.getString("category"));
	        location.setPlace_id(results.getString("place_id"));
	        location.setLatitude(results.getDouble("lat"));
	        location.setLongitude(results.getDouble("lng"));
	        return location;
	    }
	 
	 @Override
	    public Location getLocationByName(String location) {
	        String sqlSelectLocationByName = "SELECT * FROM location WHERE name = ?";
	        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectLocationByName, location);

	        if(results.next()) {
	            return mapResultToLocation(results);
	        } else {
	            return null;
	        }
	    }
	 
	 

}
