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
	
	private double lgaTotalScore;
	private int lgaAmbulanceScore;
	private String lgaAmbulanceTime;
	
	private int lgaFireBriScore;
	private int lgaFireBriNum;
	private double lgaFireBriNumByPop;
	
	private int lgaHospitalScore;
	private int lgaHospitalNum;
	private double lgaHospitalNumByPop;
	
	private int lgaPoliceScore;
	private int lgaPoliceNum;
	private double lgaPoliceNumByPop;
	
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
	
	
	public LGAScore(int lgaId, String lgaName, int year, double lgaAvgScore,
			int lgaCrimeScore, int lgaCrimeCountByPop, int lgaCrashScore,
			int lgaCrashCountByPop, int lgaPop, double lgaTotalScore,
			int lgaAmbulanceScore, String lgaAmbulanceTime,
			int lgaFireBriScore, int lgaFireBriNum, double lgaFireBriNumByPop,
			int lgaHospitalScore, int lgaHospitalNum,
			double lgaHospitalNumByPop, int lgaPoliceScore, int lgaPoliceNum,
			double lgaPoliceNumByPop) {
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
		this.lgaTotalScore = lgaTotalScore;
		this.lgaAmbulanceScore = lgaAmbulanceScore;
		this.lgaAmbulanceTime = lgaAmbulanceTime;
		this.lgaFireBriScore = lgaFireBriScore;
		this.lgaFireBriNum = lgaFireBriNum;
		this.lgaFireBriNumByPop = lgaFireBriNumByPop;
		this.lgaHospitalScore = lgaHospitalScore;
		this.lgaHospitalNum = lgaHospitalNum;
		this.lgaHospitalNumByPop = lgaHospitalNumByPop;
		this.lgaPoliceScore = lgaPoliceScore;
		this.lgaPoliceNum = lgaPoliceNum;
		this.lgaPoliceNumByPop = lgaPoliceNumByPop;
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
	public double getLgaTotalScore() {
		return lgaTotalScore;
	}
	public void setLgaTotalScore(double lgaTotalScore) {
		this.lgaTotalScore = lgaTotalScore;
	}
	public int getLgaAmbulanceScore() {
		return lgaAmbulanceScore;
	}
	public void setLgaAmbulanceScore(int lgaAmbulanceScore) {
		this.lgaAmbulanceScore = lgaAmbulanceScore;
	}
	public String getLgaAmbulanceTime() {
		return lgaAmbulanceTime;
	}
	public void setLgaAmbulanceTime(String lgaAmbulanceTime) {
		this.lgaAmbulanceTime = lgaAmbulanceTime;
	}
	public int getLgaFireBriScore() {
		return lgaFireBriScore;
	}
	public void setLgaFireBriScore(int lgaFireBriScore) {
		this.lgaFireBriScore = lgaFireBriScore;
	}
	public int getLgaFireBriNum() {
		return lgaFireBriNum;
	}
	public void setLgaFireBriNum(int lgaFireBriNum) {
		this.lgaFireBriNum = lgaFireBriNum;
	}
	public double getLgaFireBriNumByPop() {
		return lgaFireBriNumByPop;
	}
	public void setLgaFireBriNumByPop(double lgaFireBriNumByPop) {
		this.lgaFireBriNumByPop = lgaFireBriNumByPop;
	}
	public int getLgaHospitalScore() {
		return lgaHospitalScore;
	}
	public void setLgaHospitalScore(int lgaHospitalScore) {
		this.lgaHospitalScore = lgaHospitalScore;
	}
	public int getLgaHospitalNum() {
		return lgaHospitalNum;
	}
	public void setLgaHospitalNum(int lgaHospitalNum) {
		this.lgaHospitalNum = lgaHospitalNum;
	}
	public double getLgaHospitalNumByPop() {
		return lgaHospitalNumByPop;
	}
	public void setLgaHospitalNumByPop(double lgaHospitalNumByPop) {
		this.lgaHospitalNumByPop = lgaHospitalNumByPop;
	}
	public int getLgaPoliceScore() {
		return lgaPoliceScore;
	}
	public void setLgaPoliceScore(int lgaPoliceScore) {
		this.lgaPoliceScore = lgaPoliceScore;
	}
	public int getLgaPoliceNum() {
		return lgaPoliceNum;
	}
	public void setLgaPoliceNum(int lgaPoliceNum) {
		this.lgaPoliceNum = lgaPoliceNum;
	}
	public double getLgaPoliceNumByPop() {
		return lgaPoliceNumByPop;
	}
	public void setLgaPoliceNumByPop(double lgaPoliceNumByPop) {
		this.lgaPoliceNumByPop = lgaPoliceNumByPop;
	}
	
	
}
