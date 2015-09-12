package entity;

/**
 * lga data used to display in compared map
 * @author bryan
 *
 */
public class LGAScore {
	private int lgaId;
	private String lgaName;
	private int year;
	private double lgaAvgScore;
	private int lgaCrimeScore;
	private int lgaCrimeCountByPop;
	private int lgaCrashScore;
	private int lgaCrashCountByPop;
	private int lgaPop;
	public LGAScore(){}
	public LGAScore(int lgaId, String lgaName, int year, double lgaAvgScore,
			int lgaCrimeScore, int lgaCrimeCountByPop, int lgaCrashScore,
			int lgaCrashCountByPop, int lgaPop) {
		super();
		this.lgaId = lgaId;
		this.lgaName = lgaName;
		this.year = year;
		this.lgaAvgScore = lgaAvgScore;
		this.lgaCrimeScore = lgaCrimeScore;
		this.lgaCrimeCountByPop = lgaCrimeCountByPop;
		this.lgaCrashScore = lgaCrashScore;
		this.lgaCrashCountByPop = lgaCrashCountByPop;
		this.lgaPop = lgaPop;
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
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public double getLgaAvgScore() {
		return lgaAvgScore;
	}
	public void setLgaAvgScore(double lgaAvgScore) {
		this.lgaAvgScore = lgaAvgScore;
	}
	public int getLgaCrimeScore() {
		return lgaCrimeScore;
	}
	public void setLgaCrimeScore(int lgaCrimeScore) {
		this.lgaCrimeScore = lgaCrimeScore;
	}
	public int getLgaCrimeCountByPop() {
		return lgaCrimeCountByPop;
	}
	public void setLgaCrimeCountByPop(int lgaCrimeCountByPop) {
		this.lgaCrimeCountByPop = lgaCrimeCountByPop;
	}
	public int getLgaCrashScore() {
		return lgaCrashScore;
	}
	public void setLgaCrashScore(int lgaCrashScore) {
		this.lgaCrashScore = lgaCrashScore;
	}
	public int getLgaCrashCountByPop() {
		return lgaCrashCountByPop;
	}
	public void setLgaCrashCountByPop(int lgaCrashCountByPop) {
		this.lgaCrashCountByPop = lgaCrashCountByPop;
	}
	public int getLgaPop() {
		return lgaPop;
	}
	public void setLgaPop(int lgaPop) {
		this.lgaPop = lgaPop;
	}
	
	
}
