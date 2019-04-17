package com.techelevator.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.authentication.UnauthorizedException;
import com.techelevator.model.CheckedInLocation;
import com.techelevator.model.CheckedInLocationDao;
import com.techelevator.model.LocationDao;
import com.techelevator.model.User;

@RestController
@CrossOrigin
public class CheckedInLocationController {
	
	@Autowired
	private CheckedInLocationDao dao;
	
	 @PostMapping("/checkIn")
	 public String checkIn(@RequestBody CheckedInLocation loc) {
		dao.addCheckedInLocation(loc.getLocationName(), loc.getUsername());
		 return "{\"success\":true}";
	 }
	 
	

}
