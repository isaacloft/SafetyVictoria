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
	private int lgaId;
	private String lgaName;
	private String majorCateCode; 
	private String subCateCode; 
	private int offenceCount;
	private String LGAERP; 
	private String VICERP;
	private int score;
	private int totalOffenceCount;
	private int offenceCountByPopulation;
	
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
	public String getMajorCateCode() {
		return majorCateCode;
	}
	public void setMajorCateCode(String majorCateCode) {
		this.majorCateCode = majorCateCode;
	}
	public String getSubCateCode() {
		return subCateCode;
	}
	public void setSubCateCode(String subCateCode) {
		this.subCateCode = subCateCode;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getTotalOffenceCount() {
		return totalOffenceCount;
	}
	public void setTotalOffenceCount(int totalOffenceCount) {
		this.totalOffenceCount = totalOffenceCount;
	}
	public int getOffenceCountByPopulation() {
		return offenceCountByPopulation;
	}
	public void setOffenceCountByPopulation(int offenceCountByPopulation) {
		this.offenceCountByPopulation = offenceCountByPopulation;
	}
	
	
	

}
