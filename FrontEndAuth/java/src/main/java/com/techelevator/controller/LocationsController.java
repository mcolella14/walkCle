package com.techelevator.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.model.Location;
import com.techelevator.model.LocationDao;

@RestController
@CrossOrigin
public class LocationsController {
	
	@Autowired
	private LocationDao locationDao;
	
	 @GetMapping("/")
	    public List<Location> displayLocations(){
	    	List<Location> allLocations = locationDao.getAllLocations();
	    	return allLocations;
	    }
	    

}
