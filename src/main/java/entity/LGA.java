package entity;

import javax.persistence.*;

/**
 * The entity class for lga table
 * @author bryan
 *
 */
@Entity
@Table(name = "lga")
public class LGA {

	@Id
	@GeneratedValue
	private int lgaId;

	private String lgaName;

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

	

}