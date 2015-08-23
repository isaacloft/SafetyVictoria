package entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "lga_population")
public class LgaPopulation implements Serializable{
	
	@Id
	private int year;
	@Id
	private int lgaid;
	
	private int lgaerp;
	private int vicerp;
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getLgaid() {
		return lgaid;
	}
	public void setLgaid(int lgaid) {
		this.lgaid = lgaid;
	}
	public int getLgaerp() {
		return lgaerp;
	}
	public void setLgaerp(int lgaerp) {
		this.lgaerp = lgaerp;
	}
	public int getVicerp() {
		return vicerp;
	}
	public void setVicerp(int vicerp) {
		this.vicerp = vicerp;
	}
	
	

}
