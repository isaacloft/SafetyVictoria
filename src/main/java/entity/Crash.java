package entity;

import javax.persistence.*;

/**
 * The entity class for lga table
 * @author bryan
 *
 */
@Entity
@Table(name = "crash_data")
public class Crash {

	@Id
	@GeneratedValue
	private int id;

	private int year;
	private int lgaId;
	private String lgaName;
	private int accidentType;
	private int lgaErp;
	
	private int crashCount;
	private int score;
	private int crashTotalCount;
	private int crashCountByPopulation;

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

	public int getLgaErp() {
		return lgaErp;
	}

	public void setLgaErp(int lgaErp) {
		this.lgaErp = lgaErp;
	}

	public int getCrashCountByPopulation() {
		return crashCountByPopulation;
	}

	public void setCrashCountByPopulation(int crashCountByPopulation) {
		this.crashCountByPopulation = crashCountByPopulation;
	}

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

	public int getAccidentType() {
		return accidentType;
	}

	public void setAccidentType(int accidentType) {
		this.accidentType = accidentType;
	}

	public int getCrashCount() {
		return crashCount;
	}

	public void setCrashCount(int crashCount) {
		this.crashCount = crashCount;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getCrashTotalCount() {
		return crashTotalCount;
	}

	public void setCrashTotalCount(int crashTotalCount) {
		this.crashTotalCount = crashTotalCount;
	}
	
	
	
}