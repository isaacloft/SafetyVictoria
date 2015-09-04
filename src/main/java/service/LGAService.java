package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.LGA;


@Service
public class LGAService {

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
	public List<LGA> getAll() {
		List<LGA> result = em.createQuery("SELECT l FROM LGA l", LGA.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get LgaPopulation by id
	 * @param id
	 * @return
	 */
	@Transactional
	public List<LGA> searchById(int id){
		List<LGA> result = em.createQuery("SELECT l FROM LGA l WHERE l.lgaId = "+id,LGA.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get LgaPopulation by lga
	 * @param lga
	 * @return
	 */
	@Transactional
	public LGA searchByLga(String lga){
		List<LGA> result = em.createQuery("SELECT l FROM LGA l WHERE l.lgaName like '"+lga+"'",LGA.class)
				.getResultList();
		if(result.size()>0){
			return result.get(0);
		}
		return null;
	}
	

}