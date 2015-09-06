package entity;

import javax.persistence.*;

/**
 * The entity class for ambulance_response_time table
 * @author Maxine
 *
 */
@Entity
@Table(name = "ambulance_response_time")
public class AmbulanceResponse {
	
	@Id
	private int lgaId;
	private String lgaName;
	private String avgResponseTime;
	private String year;
	private int score;
	
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
	public String getAvgResponseTime() {
		return avgResponseTime;
	}
	public void setAvgResponseTime(String avgResponseTime) {
		this.avgResponseTime = avgResponseTime;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	

}
