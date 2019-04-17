package com.techelevator.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UserCreationException;
import com.techelevator.model.Location;
import com.techelevator.model.LocationDao;
import com.techelevator.model.User;

@RestController
@CrossOrigin
public class LocationsController {
	
	@Autowired
	private AuthProvider auth;
	
	@Autowired
	private LocationDao locationDao;
	
	 @GetMapping("/")
	    public List<Location> displayLocations(){
	    	List<Location> allLocations = locationDao.getAllLocations();
	    	return allLocations;
	    }
	 
	 @RequestMapping(path = "/newLocation", method = RequestMethod.POST)
		public String register(@RequestBody Location loc, BindingResult result){
//			if (result.hasErrors()) {
//				String errorMessages = "";
//				for (ObjectError error : result.getAllErrors()) {
//					errorMessages += error.getDefaultMessage() + "\n";
//				}
//				throw new UserCreationException(errorMessages);
//			}
			auth.addLocation(loc);
			return "{\"success\":true}";
		}
	 @GetMapping("/searchArea")
	 	public List<Location> filteredSearchArea(@RequestParam("area") String area) {
		 	List<Location>filteredLocations = locationDao.getFilteredAreas(area);
		 	return filteredLocations;
	 }
	 
	 @GetMapping("/checkedInLocations")
	 public List<Location> displayAllCheckedInLocations(@RequestParam("username") String username){
		 List<Location> allCheckedInLocations = locationDao.getCheckedInLocations(username);
		 return allCheckedInLocations;
	 }
	 

	 

	 
	 

}
