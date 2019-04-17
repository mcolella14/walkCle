package com.techelevator.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.model.Badges;
import com.techelevator.model.BadgesDao;
import com.techelevator.model.LocationDao;

@RestController
@CrossOrigin
public class BadgesController {
	
	@Autowired
	private BadgesDao badgesDao;
	
	 @GetMapping("/badges")
	 public Badges getDefenderStatus(@RequestParam("username") String username){
		Badges badges = badgesDao.getBadges(username);
		 return badges;
	 }
	 
	 

}
