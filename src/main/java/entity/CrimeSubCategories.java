package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "crime_sub_categories")
public class CrimeSubCategories {
	
	@Id
	private String sub_cate_code;
	private String sub_cate_name;
	private String major_cate_code;
	
	public String getSub_cate_code() {
		return sub_cate_code;
	}
	public void setSub_cate_code(String sub_cate_code) {
		this.sub_cate_code = sub_cate_code;
	}
	public String getSub_cate_name() {
		return sub_cate_name;
	}
	public void setSub_cate_name(String sub_cate_name) {
		this.sub_cate_name = sub_cate_name;
	}
	public String getMajor_cate_code() {
		return major_cate_code;
	}
	public void setMajor_cate_code(String major_cate_code) {
		this.major_cate_code = major_cate_code;
	}
	
	
	
	
}
