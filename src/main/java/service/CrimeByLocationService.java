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
}
