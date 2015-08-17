package service;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import entity.LGA;
import entity.Person;

@Service
public class LGAService {
	
	  // An EntityManager will be automatically injected from EntityManagerFactory setup on
	  // spring-context.xml
	  @PersistenceContext
	  private EntityManager em;
	   
	  // Since we've setup <tx:annotation-config> and transaction manager on spring-context.xml,
	  // any bean method annotated with @Transactional will cause Spring to magically call
	  // begin() and commit() at the start/end of the method. If exception occurs it will also
	  // call rollback()
	  @Transactional
	  public List<LGA> getAll() {
	    List<LGA> result = em.createQuery("SELECT l FROM LGA l", LGA.class).getResultList();
	    return result;
	  }
	   
}