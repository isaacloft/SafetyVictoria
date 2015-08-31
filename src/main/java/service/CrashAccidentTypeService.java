package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.CrashAccidentType;
import entity.LGA;


@Service
public class CrashAccidentTypeService {

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
	public List<CrashAccidentType> getAll() {
		List<CrashAccidentType> result = em.createQuery("SELECT c FROM CrashAccidentType c", CrashAccidentType.class)
				.getResultList();
		return result;
	}
	
	/**
	 * get CrashAccidentType by id
	 * @param id
	 * @return
	 */
	@Transactional
	public CrashAccidentType searchById(int id){
		CrashAccidentType result = em.createQuery("SELECT l FROM CrashAccidentType l WHERE l.id = "+id,CrashAccidentType.class)
				.getSingleResult();
		return result;
	}
	
	/**
	 * get CrashAccidentType by type
	 * @param lga
	 * @return
	 */
	@Transactional
	public CrashAccidentType searchByType(String type){
		CrashAccidentType result = em.createQuery("SELECT l FROM CrashAccidentType l WHERE l.accidentType like '"+type+"'",CrashAccidentType.class)
				.getSingleResult();
		return result;
	}
	

}