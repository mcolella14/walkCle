package com.techelevator.model;

import java.util.List;

public interface LocationDao {
	
	public List<Location> getAllLocations();
	public Location getLocationByName(String location);

}
