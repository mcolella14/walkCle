package com.techelevator.model;

import java.time.LocalDateTime;

public class Location {
	
	private String name;
	private String area;
	private String category;
	private String place_id;
	private double latitude;
	private double longitude;
	private String description;
	private LocalDateTime dateCheckedIn;
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	public LocalDateTime getDateCheckedIn() {
		return dateCheckedIn;
	}
	public void setDateCheckedIn(LocalDateTime dateCheckedIn) {
		this.dateCheckedIn = dateCheckedIn;
	}

}
