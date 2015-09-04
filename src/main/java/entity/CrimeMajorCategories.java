package entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The entity class for crimeMajorCategories table
 * @author bryan
 *
 */
@Entity
@Table(name = "crimeMajorCategories")
public class CrimeMajorCategories {
	
	@Id
	private String code;
	private String major_cate_name;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMajor_cate_name() {
		return major_cate_name;
	}
	public void setMajor_cate_name(String major_cate_name) {
		this.major_cate_name = major_cate_name;
	}
	
	
	
}
