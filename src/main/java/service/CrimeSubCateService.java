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
	public List<CrimeSubCategories> searchBySubCode(String sub_cate_code){
		List<CrimeSubCategories> result = em.createQuery("SELECT c FROM CrimeSubCategories c where c.sub_cate_code = '"+sub_cate_code+"'",
				CrimeSubCategories.class)
				.getResultList();
		return result;
		
	} 
	
	@Transactional
	public List<CrimeSubCategories> searchBySubName(String sub_cate_name){
		List<CrimeSubCategories> result = em.createQuery("SELECT c FROM CrimeSubCategories c where c.sub_cate_name = '"+sub_cate_name+"'",
				CrimeSubCategories.class)
				.getResultList();
		return result;
		
	}
	@Transactional
	public List<CrimeSubCategories> searchByMajorCode(String major_cate_code){
		List<CrimeSubCategories> result = em.createQuery("SELECT c FROM CrimeSubCategories c where c.major_cate_code = '"+major_cate_code+"'",
				CrimeSubCategories.class)
				.getResultList();
		return result;
		
	}

}
