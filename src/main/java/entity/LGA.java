package entity;

import javax.persistence.*;

@Entity
@Table(name = "lga")
public class LGA {

	@Id
	@GeneratedValue
	private int id;

	private String lga;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLga() {
		return lga;
	}

	public void setLga(String lga) {
		this.lga = lga;
	}

}