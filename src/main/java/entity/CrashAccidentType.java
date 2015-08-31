package entity;

import javax.persistence.*;

/**
 * The entity class for lga table
 * @author bryan
 *
 */
@Entity
@Table(name = "crash_accident_type")
public class CrashAccidentType {

	@Id
	@GeneratedValue
	private int id;

	private String accidentType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String getAccidentType() {
		return accidentType;
	}

	private void setAccidentType(String accidentType) {
		this.accidentType = accidentType;
	}

}