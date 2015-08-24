package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.CrimeSubCategories;

@Service
public class CrimeSubCateService {
	
	@PersistenceContext
	private EntityManager em;
	
	@Transactional
	public List<CrimeSubCategories> getAll(){
		List<CrimeSubCategories> result = em.createQuery("SELECT c FROM CrimeSubCategories c",CrimeSubCategories.class)
				.getResultList();
		return result;
		
	}
	
	@Transactional
	public List<CrimeSubCategories> searchBySubCode(String subCateCode){
		List<CrimeSubCategories> result = em.createQuery("SELECT c FROM CrimeSubCategories c where c.subCateCode = '"+subCateCode+"'",
				CrimeSubCategories.class)
				.getResultList();
		return result;
		
	} 
	
	@Transactional
	public List<CrimeSubCategories> searchBySubName(String subCateName){
		List<CrimeSubCategories> result = em.createQuery("SELECT c FROM CrimeSubCategories c where c.subCateName = '"+subCateName+"'",
				CrimeSubCategories.class)
				.getResultList();
		return result;
		
	}
	@Transactional
	public List<CrimeSubCategories> searchByMajorCode(String majorCateCode){
		List<CrimeSubCategories> result = em.createQuery("SELECT c FROM CrimeSubCategories c where c.majorCateCode = '"+majorCateCode+"'",
				CrimeSubCategories.class)
				.getResultList();
		return result;
		
	}

}
