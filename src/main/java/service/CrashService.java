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
	public List<Crash> searchByLGAAndYear(int LGA, int year){
		List<Crash> result= em.createQuery("SELECT c FROM Crash c where c.lgaNameAll = "+LGA+" "
				+ "and c.year = " + year +" order by c.accidentType",
				Crash.class)
				.getResultList();
		return result;
	}
}
