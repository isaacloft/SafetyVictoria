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
	
	private String type;
	
	private String subtype;
	
	private int stationNo;
	
	private String address;
	
	private String fireAppliances;
	
	private String lat;
	
	private String lng;

	private int getId() {
		return id;
	}

	private void setId(int id) {
		this.id = id;
	}

	private String getLgaName() {
		return lgaName;
	}

	private void setLgaName(String lgaName) {
		this.lgaName = lgaName;
	}

	private int getLgaId() {
		return lgaId;
	}

	private void setLgaId(int lgaId) {
		this.lgaId = lgaId;
	}

	private String getType() {
		return type;
	}

	private void setType(String type) {
		this.type = type;
	}

	private String getSubtype() {
		return subtype;
	}

	private void setSubtype(String subtype) {
		this.subtype = subtype;
	}

	private int getStationNo() {
		return stationNo;
	}

	private void setStationNo(int stationNo) {
		this.stationNo = stationNo;
	}

	private String getAddress() {
		return address;
	}

	private void setAddress(String address) {
		this.address = address;
	}

	private String getFireAppliances() {
		return fireAppliances;
	}

	private void setFireAppliances(String fireAppliances) {
		this.fireAppliances = fireAppliances;
	}

	private String getLat() {
		return lat;
	}

	private void setLat(String lat) {
		this.lat = lat;
	}

	private String getLng() {
		return lng;
	}

	private void setLng(String lng) {
		this.lng = lng;
	}
	
	
	
}
