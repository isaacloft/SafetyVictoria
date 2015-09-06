package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Crash;
import entity.CrimeByLocation;
import entity.LGA;


@Service
public class CrashService {

	//entity managet to do database operation
	@PersistenceContext
	private EntityManager em;

	
	/**
	 * get Crash by lga and year
	 * @param LGA
	 * @param year
	 * @return
	 */
	@Transactional
	public List<Crash> searchByLGAAndYear(String lgaName, int year){
		List<Crash> result= em.createQuery("SELECT c FROM Crash c where c.lgaName = '"+lgaName+"' "
				+ "and c.year = " + year +" order by c.accidentType",
				Crash.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get search total vic average crime count by year
	 * @param year
	 * @return
	 */
	@Transactional
	public List<Object[]> searchTotalVicAvgByYear(int year, int vicPop){
		List<Object[]> result = em.createNativeQuery("SELECT CONVERT((sum(c.crash_count)*100000)/"+vicPop+", SIGNED INTEGER) as avgCount,"
				+ "sum(c.crash_count) as totalCount, c.accident_type as majorCate "
				+ "FROM crash_data c where c.year='" + year + "' "
				+ "group by c.accident_type "
				+ "order by c.accident_type").getResultList();
		return result;
	}
	
}
