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
	
	private int accidentType;
	
	private String lgaNameAll;
	
	private int crashCount;
	private int score;
	private int crashTotalCount;
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

	private String getLgaNameAll() {
		return lgaNameAll;
	}

	private void setLgaNameAll(String lgaNameAll) {
		this.lgaNameAll = lgaNameAll;
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
	
	
}