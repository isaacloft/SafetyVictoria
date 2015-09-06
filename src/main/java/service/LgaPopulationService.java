package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.LgaPopulation;

@Service
public class LgaPopulationService {
	
	//entity managet to do database operation
	@PersistenceContext
	private EntityManager em;
	
	/**
	 * get all LgaPopulation
	 * @return
	 */
	@Transactional
	public List<LgaPopulation> getAll(){
		List<LgaPopulation> result = em.createQuery("SELECT lp FROM LgaPopulation lp",LgaPopulation.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get LgaPopulation by year
	 * @param year
	 * @return
	 */
	@Transactional
	public List<LgaPopulation> searchByYear(int year){
		List<LgaPopulation> result = em.createQuery("SELECT lp FROM LgaPopulation lp where lp.year = "+year,
				LgaPopulation.class).getResultList();
		return result;
	}
	
	/**
	 * get LgaPopulation by lgaid
	 * @param lgaid
	 * @return
	 */
	@Transactional
	public List<LgaPopulation> searchByLgaid(int lgaid){
		List<LgaPopulation> result = em.createQuery("SELECT lp FROM LgaPopulation lp where lp.lgaId = "+lgaid,
				LgaPopulation.class).getResultList();
		return result;
	}
	
	/**
	 * get LgaPopulation by lgaerp
	 * @param lgaerp
	 * @return
	 */
	@Transactional
	public List<LgaPopulation> searchByLgaerp(int lgaerp){
		List<LgaPopulation> result = em.createQuery("SELECT lp FROM LgaPopulation lp where lp.lgaerp = "+lgaerp,
				LgaPopulation.class).getResultList();
		return result;
	}
	
	/**
	 * get LgaPopulation by vicerp
	 * @param vicerp
	 * @return
	 */
	@Transactional
	public List<LgaPopulation> searchByVicerp(int vicerp){
		List<LgaPopulation> result = em.createQuery("SELECT lp FROM LgaPopulation lp where lp.vicerp = "+vicerp,
				LgaPopulation.class).getResultList();
		return result;
	}
	
	/**
	 * get LgaPopulation by year and lga id
	 * @param vicerp
	 * @return
	 */
	@Transactional
	public List<LgaPopulation> searchByLgaAndYear(int year, int lgaId){
		List<LgaPopulation> result = em.createQuery("SELECT lp FROM LgaPopulation lp where lp.year = "+year,
				LgaPopulation.class).getResultList();
		return result;
	}

}
