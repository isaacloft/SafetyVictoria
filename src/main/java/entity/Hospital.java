package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The entity class for fire_brigade table
 * @author bryan
 *
 */
@Entity
@Table(name = "hospital")
public class Hospital {
	@Id
	@GeneratedValue
	private int id;
	
	private int lgaId;
	
	private String lgaName;
	
	private int hospitalNo;
	
	private double noByPopulation;
	
	private int score;
	
	private String hospitalId;
	
	private String locationAddress;
	
	private String latLngDesc;
	
	private String suburb;
	
	private String postcode;
	
	private String category;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public double getNoByPopulation() {
		return noByPopulation;
	}

	public void setNoByPopulation(double noByPopulation) {
		this.noByPopulation = noByPopulation;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(String hospitalId) {
		this.hospitalId = hospitalId;
	}

	public String getLocationAddress() {
		return locationAddress;
	}

	public void setLocationAddress(String locationAddress) {
		this.locationAddress = locationAddress;
	}

	public String getLatLngDesc() {
		return latLngDesc;
	}

	public void setLatLngDesc(String latLngDesc) {
		this.latLngDesc = latLngDesc;
	}

	public String getSuburb() {
		return suburb;
	}

	public void setSuburb(String suburb) {
		this.suburb = suburb;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getHospitalNo() {
		return hospitalNo;
	}

	public void setHospitalNo(int hospitalNo) {
		this.hospitalNo = hospitalNo;
	}

	
	
	
}
