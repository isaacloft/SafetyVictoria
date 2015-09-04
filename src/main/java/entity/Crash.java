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
	private int getId() {
		return id;
	}

	private void setId(int id) {
		this.id = id;
	}

	private int getYear() {
		return year;
	}

	private void setYear(int year) {
		this.year = year;
	}

	private int getAccidentType() {
		return accidentType;
	}

	private void setAccidentType(int accidentType) {
		this.accidentType = accidentType;
	}

	private int getCrashCount() {
		return crashCount;
	}

	private void setCrashCount(int crashCount) {
		this.crashCount = crashCount;
	}

	private int getScore() {
		return score;
	}

	private void setScore(int score) {
		this.score = score;
	}

	private int getCrashTotalCount() {
		return crashTotalCount;
	}

	private void setCrashTotalCount(int crashTotalCount) {
		this.crashTotalCount = crashTotalCount;
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
	
	
	
}