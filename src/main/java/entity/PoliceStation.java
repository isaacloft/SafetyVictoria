package entity;

import javax.persistence.*;

/**
 * The entity class for police_station table
 * @author Maxine
 *
 */
@Entity
@Table(name = "police_station")
public class PoliceStation {
	
	@Id
	private int stationId;
	private String stationName;
	private int lgaId;
	private String lgaName;
	private String suburb;
	private int postcode;
	private String lng;
	private String lat;
	private int score;
	
	public int getStationId() {
		return stationId;
	}
	public void setStationId(int stationId) {
		this.stationId = stationId;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	
	public int getLgaId() {
		return lgaId;
	}
	public void setLgaId(int lgaId) {
		this.lgaId = lgaId;
	}
	public String getLgaName() {
		return lgaName;
	}
	public void setLgaName(String lgaName) {
		this.lgaName = lgaName;
	}
	public String getSuburb() {
		return suburb;
	}
	public void setSuburb(String suburb) {
		this.suburb = suburb;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	
	

}
