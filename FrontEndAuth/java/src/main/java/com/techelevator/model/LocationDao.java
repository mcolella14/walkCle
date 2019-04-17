package com.techelevator.model;

import java.util.List;

public interface LocationDao {
	
	public List<Location> getAllLocations();
	public Location getLocationByName(String location);
	public void addNewLocation(String location, String area, String category, String place_id, Double lat, Double lng);
	public List<Location> getFilteredAreas(String area);
	public List<Location> getFilteredCategory(String category);
	public List<Location> getFilteredAreaAndCategory(String area, String category);
    public List<Location> getCheckedInLocations(String username);

}
