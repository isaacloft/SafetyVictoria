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

	@PersistenceContext
	private EntityManager em;

	@Transactional
	public List<CrimeByLocation> getAll(){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl", CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByYear(int year){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.year = ' "+year+"'", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByPoliceRegion(String policeRegion){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.policeRegion = '"+policeRegion+"'", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByPoliceServiceArea(String policeServiceArea){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.policeServiceArea = '"+policeServiceArea+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByLGA(String LGA){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.LGA = '"+LGA+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByLGAAndYear(int LGA, int year){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.LGA = "+LGA+" "
				+ "and cbl.year = " + year +" order by cbl.csaOffenceDivision",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByCsaOffenceDivision(String csaOffenceDivision){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.csaOffenceDivision = '"+csaOffenceDivision+"'", 
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByCsaOffenceSubDivision(String csaOffenceSubDivision){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.csaOffenceSubDivision = '"+csaOffenceSubDivision+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByOffenceCount(int offenceCount){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.offenceCount = '"+offenceCount+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByLGAERP(String LGAERP){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.LGAERP = '"+LGAERP+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
	@Transactional
	public List<CrimeByLocation> searchByVICERP(String VICERP){
		List<CrimeByLocation> result= em.createQuery("SELECT cbl FROM CrimeByLocation cbl where cbl.VICERP = '"+VICERP+"'",
				CrimeByLocation.class)
				.getResultList();
		return result;
	}
}
