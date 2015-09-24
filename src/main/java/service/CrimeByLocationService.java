package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.CrimeByLocation;
import entity.LGA;


@Service
public class CrimeByLocationService {

	//entity managet to do database operation
	@PersistenceContext
	private EntityManager em;

	/**
	 * get all CrimeByLocation
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> getAll(){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl", CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by year
	 * @param year
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByYear(int year){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.year = ' "+year+"'", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by year
	 * @param year
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByYearGroupByLGA(int year){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.year = ' "+year+"' "
				+ " and cbl.lgaId > 0 group by cbl.lgaId order by cbl.lgaId", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation trend by lga name
	 * @param year
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchLgaTrend(String lgaName){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.lgaName = '"+lgaName+"' "
				+ " group by cbl.year, cbl.lgaId order by cbl.year, cbl.lgaId", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by year
	 * @param year
	 * @return
	 */
	@Transactional
	public int searchTotalVicPopulationByYear(int year){
		CrimeByLocation result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.year = ' "+year+"'", 
				CrimeByLocation.class)
				.getResultList().get(0);
		return Integer.parseInt(result.getVICERP());
	}
	
	/**
	 * get search total vic average crime count by year
	 * @param year
	 * @return
	 */
	@Transactional
	public List<Object[]> searchTotalVicAvgByYear(int year){
//		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.year = ' "+year+"'", 
//				CrimeByLocation.class)
//				.getResultList();
		int vicPopulation = searchTotalVicPopulationByYear(year);
		List<Object[]> result = em.createNativeQuery("SELECT CONVERT((sum(c.offence_count)*100000)/"+vicPopulation+", SIGNED INTEGER) as avgCount,"
				+ "sum(c.offence_count) as totalCount, c.major_cate_code as majorCate "
				+ "FROM crime_by_location c where c.year='" + year + "' "
				+ "group by c.major_cate_code "
				+ "order by c.major_cate_code").getResultList();
		return result;
	}
	
	/**
	 * get crime count per 100000 people by year and lganame
	 * @param year
	 * @return
	 */
	@Transactional
	public List<Object[]> searchCountByPopByYearAndLga(int year, String lgaName){
		List<Object[]> result = em.createNativeQuery("SELECT CONVERT((sum(c.offence_count)*100000)/c.lgaerp, SIGNED INTEGER) as cateCountByPop,"
				+ "sum(c.offence_count) as totalCateCount, c.major_cate_code as majorCate "
				+ "FROM crime_by_location c where c.year='" + year + "' and lga_name='"+lgaName+"' " 
				+ "group by c.major_cate_code "
				+ "order by c.major_cate_code").getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by policeRegion
	 * @param policeRegion
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByPoliceRegion(String policeRegion){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.policeRegion = '"+policeRegion+"'", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by policeServiceArea
	 * @param policeServiceArea
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByPoliceServiceArea(String policeServiceArea){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.policeServiceArea = '"+policeServiceArea+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by LGAID
	 * @param LGA
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByLGAID(int LGAId){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.lgaId = '"+LGAId+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by LGA
	 * @param LGA
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByLGAName(String LGAName){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.lgaName = '"+LGAName+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by lga and year
	 * @param LGA
	 * @param year
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByLGAAndYear(String lgaName, int year){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.lgaName = '"+lgaName+"' "
				+ "and cbl.year = " + year +" order by cbl.majorCateCode, cbl.subCateCode",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by majorCateCode
	 * @param majorCateCode
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByCsaOffenceDivision(String majorCateCode){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.majorCateCode = '"+majorCateCode+"'", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by subCateCode
	 * @param subCateCode
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByCsaOffenceSubDivision(String subCateCode){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.subCateCode = '"+subCateCode+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by offenceCount
	 * @param offenceCount
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByOffenceCount(int offenceCount){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.offenceCount = '"+offenceCount+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by LGAERP
	 * @param LGAERP
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByLGAERP(String LGAERP){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.LGAERP = '"+LGAERP+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrimeByLocation by VICERP
	 * @param VICERP
	 * @return
	 */
	@Transactional
	public List<CrimeByLocation> searchByVICERP(String VICERP){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.VICERP = '"+VICERP+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
}
