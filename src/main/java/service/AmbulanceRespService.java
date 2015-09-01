package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.AmbulanceResponse;

@Service
public class AmbulanceRespService {
	
	@PersistenceContext
	private EntityManager em;
	
	/**
	 * get all ambulance response time
	 * @return
	 */
	@Transactional
	public List<AmbulanceResponse> getAll(){
		
		List<AmbulanceResponse> result = em.createQuery("select ar from AmbulanceResponse ar",
				AmbulanceResponse.class)
				.getResultList();
		return result;
		
	}
	
	/**
	 * get ambulance response time by lagId
	 * @param lgaID
	 * @return
	 */
	@Transactional
	public List<AmbulanceResponse> searchByLgaId(int lgaId){
		
		List<AmbulanceResponse> result = em.createQuery("select ar from AmbulanceResponse ar where ar.lgaId ='"+lgaId +"'",
				AmbulanceResponse.class)
				.getResultList();
		return result;

	}
	
	/**
	 * get ambulance response time by lgaName
	 * @param lgaName
	 * @return
	 */
	@Transactional
	public List<AmbulanceResponse> searchByLgaName(String lgaName){
		
		List<AmbulanceResponse> result = em.createQuery("select ar from AmbulanceResponse ar where ar.lgaName ='"+lgaName +"'",
				AmbulanceResponse.class)
				.getResultList();
		return result;

	}
	
	/**
	 * get ambulance response time by year
	 * @param year
	 * @return
	 */
	@Transactional
	public List<AmbulanceResponse> searchByYear(String year){
		
		List<AmbulanceResponse> result = em.createQuery("select ar from AmbulanceResponse ar where ar.year ='"+year +"'",
				AmbulanceResponse.class)
				.getResultList();
		return result;

	}
	
	
	/**
	 * get ambulance response time by lgaID and year
	 * @param lgaId
	 * @param year
	 * @return
	 */
	@Transactional
	public List<AmbulanceResponse> searchByLgaIdAndYear(int lgaId, String year){
		
		List<AmbulanceResponse> result = em.createQuery("select ar from AmbulanceResponse ar where ar.lgaId ='"+lgaId +"' and ar.year = '"+year+"'",
				AmbulanceResponse.class)
				.getResultList();
		return result;

	}
	
	/**
	 * get ambulance response time by lgaName and year
	 * @param lgaName
	 * @param year
	 * @return
	 */
	@Transactional
	public List<AmbulanceResponse> searchByLgaNameAndYear(String lgaName, String year){
		
		List<AmbulanceResponse> result = em.createQuery("select ar from AmbulanceResponse ar where ar.lgaName ='"+lgaName +"' and ar.year = '"+year+"'",
				AmbulanceResponse.class)
				.getResultList();
		return result;

	}

}
