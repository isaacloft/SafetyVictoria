package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.PoliceStation;

@Service
public class PoliceStationService {

	@PersistenceContext
	private EntityManager em;

	/**
	 * get all Police Station
	 * @return
	 */
	@Transactional
	public List<PoliceStation> getAll(){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps",PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by LgaId
	 * @param lga
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchByLga(int lgaId){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.lgaId = '"+lgaId+"'",
				PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by LgaName
	 * @param lga
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchByLga(String lgaName){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.lgaName = '"+lgaName+"'",
				PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by StationId
	 * @param stationId
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchByStationId(int stationId){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.stationId = '"+stationId+"'",
				PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by stationName
	 * @param stationName
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchByStationName(String stationName){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.stationName = '"+stationName+"'",
				PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by suburb
	 * @param suburb
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchBySuburb(String suburb){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.suburb = '" + suburb + "'",
				PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by postcode
	 * @param postcode
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchByPostcode(int postcode){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.postcode = '" + postcode +"'",
				PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by longtitude
	 * @param lng
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchByLng(String lng){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.lng = '" + lng + "'",
				PoliceStation.class).getResultList();
		
		return result;
	}
	
	/**
	 * get PoliceStation by latitude
	 * @param lat
	 * @return
	 */
	@Transactional
	public List<PoliceStation> searchByLat(String lat){
		
		List<PoliceStation> result = em.createQuery("select ps from PoliceStation ps where ps.lat = '" + lat +"'",
				PoliceStation.class).getResultList();
		
		return result;
	}
}
