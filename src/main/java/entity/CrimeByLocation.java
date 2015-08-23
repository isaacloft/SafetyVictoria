package entity;

import javax.persistence.*;

@Entity
@Table(name = "crime_by_location")
public class CrimeByLocation {
	
	@Id
	@GeneratedValue
	private int id;
	private int year;
//	private String policeRegion; 
//	private String policeServiceArea; 
	private String LGA; 
//	private String CSAOffenceDivision; 
//	private String CSAOffenceSubDivision; 
//	private int offenceCount;
	private String LGAERP; 
	private String VICERP;
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
//	public String getPoliceRegion() {
//		return policeRegion;
//	}
//	public void setPoliceRegion(String policeRegion) {
//		this.policeRegion = policeRegion;
//	}
//	public String getPoliceServiceArea() {
//		return policeServiceArea;
//	}
//	public void setPoliceServiceArea(String policeServiceArea) {
//		this.policeServiceArea = policeServiceArea;
//	}
	public String getLGA() {
		return LGA;
	}
	public void setLGA(String lGA) {
		LGA = lGA;
	}
//	public String getCSAOffenceDivision() {
//		return CSAOffenceDivision;
//	}
//	public void setCSAOffenceDivision(String cSAOffenceDivision) {
//		CSAOffenceDivision = cSAOffenceDivision;
//	}
//	public String getCSAOffenceSubDivision() {
//		return CSAOffenceSubDivision;
//	}
//	public void setCSAOffenceSubDivision(String cSAOffenceSubDivision) {
//		CSAOffenceSubDivision = cSAOffenceSubDivision;
//	}
//	public int getOffenceCount() {
//		return offenceCount;
//	}
//	public void setOffenceCount(int offenceCount) {
//		this.offenceCount = offenceCount;
//	}
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
	
	

}