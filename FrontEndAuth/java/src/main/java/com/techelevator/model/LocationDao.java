package com.techelevator.model;

import java.util.List;

public interface LocationDao {
	
	public List<Location> getAllLocations();
	public Location getLocationByName(String location);
	public void addNewLocation(String location, String area, String category, String place_id, Double lat, Double lng);

}
