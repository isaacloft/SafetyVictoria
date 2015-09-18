package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.FireBrigade;
import entity.Hospital;
import entity.LGA;
import entity.PoliceStation;


@Service
public class HospitalService {

	// An EntityManager will be automatically injected from EntityManagerFactory
	// setup on
	// spring-context.xml
	@PersistenceContext
	private EntityManager em;

	// Since we've setup <tx:annotation-config> and transaction manager on
	// spring-context.xml,
	// any bean method annotated with @Transactional will cause Spring to
	// magically call
	// begin() and commit() at the start/end of the method. If exception occurs
	// it will also
	// call rollback()
	@Transactional
	public List<Hospital> getAll() {
		List<Hospital> result = em.createQuery("SELECT h FROM Hospital h", Hospital.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get Hospital by LgaName
	 * @param lganame
	 * @return
	 */
	@Transactional
	public List<Hospital> searchByLga(String lgaName){
		
		List<Hospital> result = em.createQuery("select ps from Hospital ps where ps.lgaName = '"+lgaName+"'",
				Hospital.class).getResultList();
		
		return result;
	}
}