package entity;

import javax.persistence.*;

/**
 * The entity class for crime_by_location table
 * @author bryan
 *
 */
@Entity
@Table(name = "crime_by_location")
public class CrimeByLocation {
	
	@Id
	@GeneratedValue
	private int id;
	private int year;
	private String policeRegion; 
	private String policeServiceArea; 
	private String LGA; 
	private String csaOffenceDivision; 
	private String csaOffenceSubDivision; 
	private int offenceCount;
	private String LGAERP; 
	private String VICERP;
	private int score;
	private int totalOffenceCount;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getPoliceRegion() {
		return policeRegion;
	}
	public void setPoliceRegion(String policeRegion) {
		this.policeRegion = policeRegion;
	}
	public String getPoliceServiceArea() {
		return policeServiceArea;
	}
	public void setPoliceServiceArea(String policeServiceArea) {
		this.policeServiceArea = policeServiceArea;
	}
	public String getLGA() {
		return LGA;
	}
	public void setLGA(String lGA) {
		LGA = lGA;
	}
	
	public String getCsaOffenceDivision() {
		return csaOffenceDivision;
	}
	public void setCsaOffenceDivision(String csaOffenceDivision) {
		this.csaOffenceDivision = csaOffenceDivision;
	}
	public String getCsaOffenceSubDivision() {
		return csaOffenceSubDivision;
	}
	public void setCsaOffenceSubDivision(String csaOffenceSubDivision) {
		this.csaOffenceSubDivision = csaOffenceSubDivision;
	}
	public int getOffenceCount() {
		return offenceCount;
	}
	public void setOffenceCount(int offenceCount) {
		this.offenceCount = offenceCount;
	}
	public String getLGAERP() {
		return LGAERP;
	}
	public void setLGAERP(String lGAERP) {
		LGAERP = lGAERP;
	}
	public String getVICERP() {
		return VICERP;
	}
	public void setVICERP(String vICERP) {
		VICERP = vICERP;
	}
	private int getScore() {
		return score;
	}
	private void setScore(int score) {
		this.score = score;
	}
	private int getTotalOffenceCount() {
		return totalOffenceCount;
	}
	private void setTotalOffenceCount(int totalOffenceCount) {
		this.totalOffenceCount = totalOffenceCount;
	}
	
	

}
