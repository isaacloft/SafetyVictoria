package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.CrimeMajorCategories;

@Service
public class CrimeMajorCateService {
	
	//entity managet to do database operation
	@PersistenceContext
	private EntityManager em;
	
	/**
	 * get all CrimeMajorCategories
	 * @return
	 */
	@Transactional
	public List<CrimeMajorCategories> getAll(){
		
		List<CrimeMajorCategories> result = em.createQuery("SELECT c FROM CrimeMajorCategories c", 
				CrimeMajorCategories.class)
				.getResultList();
		return result;	
	}
	
	/**
	 * get CrimeMajorCategories by code
	 * @param code
	 * @return
	 */
	@Transactional
	public List<CrimeMajorCategories> searchByCode(String code){
		
		List<CrimeMajorCategories> result = em.createQuery("SELECT c FROM CrimeMajorCategories c where c.code = '"+code+"'", 
				CrimeMajorCategories.class)
				.getResultList();
		return result;	
	}

	/**
	 * get CrimeMajorCategories by name
	 * @param name
	 * @return
	 */
	@Transactional
	public List<CrimeMajorCategories> searchByName(String name){
		
		List<CrimeMajorCategories> result = em.createQuery("SELECT c FROM CrimeMajorCategories c where c.name = '"+name+"'", 
				CrimeMajorCategories.class)
				.getResultList();
		return result;	
	}

}
