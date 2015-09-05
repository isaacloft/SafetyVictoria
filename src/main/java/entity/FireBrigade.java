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
@Table(name = "fire_brigade")
public class FireBrigade {
	@Id
	@GeneratedValue
	private int id;
	
	private String lgaName;
	
	private int lgaId;
	
	private double noByPopulation;
	
	private int score;
	
	private String type;
	
	private String subtype;
	
	private int stationNo;
	
	private String address;
	
	private String fireAppliances;
	
	private String lat;
	
	private String lng;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLgaName() {
		return lgaName;
	}

	public void setLgaName(String lgaName) {
		this.lgaName = lgaName;
	}

	public int getLgaId() {
		return lgaId;
	}

	public void setLgaId(int lgaId) {
		this.lgaId = lgaId;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSubtype() {
		return subtype;
	}

	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}

	public int getStationNo() {
		return stationNo;
	}

	public void setStationNo(int stationNo) {
		this.stationNo = stationNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFireAppliances() {
		return fireAppliances;
	}

	public void setFireAppliances(String fireAppliances) {
		this.fireAppliances = fireAppliances;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	
	
	
}
