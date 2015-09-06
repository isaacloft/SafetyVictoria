package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.AmbulanceResponse;
import entity.FireBrigade;
import entity.LGA;


@Service
public class FireBrigadeService {

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
	public List<FireBrigade> getAll() {
		List<FireBrigade> result = em.createQuery("SELECT f FROM FireBrigade f", FireBrigade.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get FireBrigade by lgaName and year
	 * @param lgaName
	 * @param year
	 * @return
	 */
	@Transactional
	public List<FireBrigade> searchByLgaNameAndYear(String lgaName){
		
		List<FireBrigade> result = em.createQuery("select f from FireBrigade f where f.lgaName ='"+lgaName+"'",
				FireBrigade.class)
				.getResultList();
		return result;

	}
	

}