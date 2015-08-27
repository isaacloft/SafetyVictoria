package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The entity class for crime_sub_categories table
 * @author bryan
 *
 */
@Entity
@Table(name = "crime_sub_categories")
public class CrimeSubCategories {
	
	@Id
	private String subCateCode;
	private String subCateName;
	private String majorCateCode;
	public String getSubCateCode() {
		return subCateCode;
	}
	public void setSubCateCode(String subCateCode) {
		this.subCateCode = subCateCode;
	}
	public String getSubCateName() {
		return subCateName;
	}
	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
	}
	public String getMajorCateCode() {
		return majorCateCode;
	}
	public void setMajorCateCode(String majorCateCode) {
		this.majorCateCode = majorCateCode;
	}
	
	
	
	
	
}
