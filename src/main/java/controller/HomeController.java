package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.AmbulanceResponse;
import entity.Crash;
import entity.CrashAccidentType;
import entity.CrimeByLocation;
import entity.CrimeMajorCategories;
import entity.FireBrigade;
import entity.Hospital;
import entity.LGA;
import entity.PoliceStation;
import service.AmbulanceRespService;
import service.CrashAccidentTypeService;
import service.CrashService;
import service.CrimeByLocationService;
import service.CrimeMajorCateService;
import service.CrimeSubCateService;
import service.FireBrigadeService;
import service.HospitalService;
import service.LGAService;
import service.LgaPopulationService;
import service.PoliceStationService;
import util.DataSourceEnum;

@Controller
@RequestMapping("/")
public class HomeController {

	public static int YEAR = 2014;
	@Autowired
	private LGAService lgaSvc;
	@Autowired
	private CrimeMajorCateService crimeMajorSvc;
	@Autowired
	private CrimeSubCateService crimeSubSvc;
	@Autowired
	private LgaPopulationService lgaPopuSvc;
	@Autowired
	private CrimeByLocationService crimeByLocSvc;
	@Autowired
	private AmbulanceRespService ambulanceRespSvc;
	@Autowired
	private PoliceStationService policeStaSvc;
	@Autowired
	private HospitalService hospitalSvc;
	@Autowired
	private FireBrigadeService fireBriSvc;
	@Autowired
	private CrashService crashSvc;
	@Autowired
	private CrashAccidentTypeService crashTypeSvc;

	/**
	 * List all testing service methods
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String listAll(Model model) {
//		model.addAttribute("persons", personSvc.getAll());
//		List list = personSvc.getAll();
////		System.out.println(list.size());
//		Person p = (Person) list.get(0);
////		System.out.println(p.getName());
//
//		model.addAttribute("lgaList", lgaSvc.getAll());
//		
//		
//		//Test all sevice method
//		System.out.println("testMethods---lga---"+lgaSvc.searchById(1).get(0).getLga());
//		System.out.println("testMethods---lga---"+lgaSvc.searchByLga("BANYULE").get(0).getId());
//		
//		System.out.println("testMethods---majorCC---"+crimeMajorSvc.getAll().size());
//		System.out.println("testMethods---majorCC---"+crimeMajorSvc.searchByCode("A").get(0).getName());
//		System.out.println("testMethods---majorCC---"+crimeMajorSvc.searchByName("C Drug offences").get(0).getCode());
//		
//		System.out.println("testMethods---subCC---"+crimeSubSvc.getAll().size());
//		System.out.println("testMethods---subCC---"+crimeSubSvc.searchByMajorCode("A").get(0).getSubCateCode());
//		System.out.println("testMethods---subCC---"+crimeSubSvc.searchBySubCode("A10").get(0).getMajorCateCode());
//		System.out.println("testMethods---subCC---"+crimeSubSvc.searchBySubName("B10 Arson").get(0).getSubCateCode());
//		
//		System.out.println("testMethods---lgaPopulation---"+lgaPopuSvc.getAll().size());
//		System.out.println("testMethods---lgaPopulation---"+lgaPopuSvc.searchByYear(2011).get(0).getLgaid());
//		System.out.println("testMethods---lgaPopulation---"+lgaPopuSvc.searchByLgaid(1).get(0).getYear());
//		System.out.println("testMethods---lgaPopulation---"+lgaPopuSvc.searchByLgaerp(122983).get(0).getYear());
//		System.out.println("testMethods---lgaPopulation---"+lgaPopuSvc.searchByVicerp(5537817).get(0).getLgaerp());
//		
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.getAll().size());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByYear(2011).get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByPoliceRegion("North West Metro").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByPoliceServiceArea("1").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByLGA("1").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByCsaOffenceDivision("A").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByCsaOffenceSubDivision("A10").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByOffenceCount(2).get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByLGAERP("122983").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+crimeByLocSvc.searchByVICERP("5537817").get(0).getId());
		
//		System.out.println("testMethods---ambulanceResponse---" + ambulanceRespSvc.getAll().size());
//		System.out.println("testMethods---ambulanceResponse---" + ambulanceRespSvc.searchByLgaId(1).get(0).getLgaName());
//		System.out.println("testMethods---ambulanceResponse---" + ambulanceRespSvc.searchByLgaName("Alpine").get(0).getLgaId());
//		System.out.println("testMethods---ambulanceResponse---" + ambulanceRespSvc.searchByYear("2014").get(0).getLgaId());
//		System.out.println("testMethods---ambulanceResponse---" + ambulanceRespSvc.searchByLgaIdAndYear(1, "2014").get(0).getLgaName());
//		System.out.println("testMethods---ambulanceResponse---" + ambulanceRespSvc.searchByLgaNameAndYear("Ararat", "2014").get(0).getAvgResponseTime());
//		
//		System.out.println("testMethods---policeStation---" + policeStaSvc.getAll().size());
//		System.out.println("testMethods---policeStation---" + policeStaSvc.searchByLga("MURRINDINDI").get(0).getStationName());
//		System.out.println("testMethods---policeStation---" + policeStaSvc.searchByStationId(1).get(0).getStationName());
//		System.out.println("testMethods---policeStation---" + policeStaSvc.searchByStationName("Alexandra").get(0).getLga());
//		System.out.println("testMethods---policeStation---" + policeStaSvc.searchBySuburb("ALEXANDRA").get(0).getLga());
//		System.out.println("testMethods---policeStation---" + policeStaSvc.searchByLat("-37.1886").get(0).getLng());
//		System.out.println("testMethods---policeStation---" + policeStaSvc.searchByLng("145.708").get(0).getLat());
//		
		return "home";
	}

	/**
	 * Get crime data by total LGA in year 2015
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getVicAvgCrimeData", method=RequestMethod.GET)
	public @ResponseBody List<Object[]> getVicAvgCrimeData() {
		List<Object[]> list = crimeByLocSvc.searchTotalVicAvgByYear(YEAR);
		return list;
	}
	
	/**
	 * Get crash data by total LGA in year 2015
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getVicAvgCrashData", method=RequestMethod.GET)
	public @ResponseBody List<Object[]> getVicAvgCrashData() {
		int vicPop = crimeByLocSvc.searchTotalVicPopulationByYear(YEAR);
		List<Object[]> list = crashSvc.searchTotalVicAvgByYear(YEAR, vicPop);
		return list;
	}
	
	/**
	 * Get crime data by seleted LGA
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getLgaSpiderDataByDrop", method=RequestMethod.GET)
	public @ResponseBody List<List<Object>> getLgaSpiderDataByDrop(
			@RequestParam String selectedLGA1, @RequestParam String selectedLGA2, @RequestParam String dataSource) {
		//level1All level1Accident level2All level2A level2B level2C level2D level2E level2F
		if(DataSourceEnum.LEVEL1ALL.getValue().equals(dataSource)){
			List<Object> lgaSpiderData1 = new ArrayList<Object>();
			List<Object> lgaSpiderData2 = new ArrayList<Object>();
			
			if(!"First LGA".equals(selectedLGA1)){
				CrimeByLocation crime = crimeByLocSvc.searchByLGAAndYear(selectedLGA1, YEAR).get(0);	
				Crash crash = crashSvc.searchByLGAAndYear(selectedLGA1, YEAR).get(0);
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA1, YEAR-1);
				FireBrigade fireBrigade = fireBriSvc.searchByLgaNameAndYear(selectedLGA1).get(0);
				PoliceStation policeStation = policeStaSvc.searchByLga(selectedLGA1).get(0);
				Hospital hospital = hospitalSvc.searchByLga(selectedLGA1).get(0);
				
				lgaSpiderData1.add(crime.getScore());
				lgaSpiderData1.add(crash.getScore());
				lgaSpiderData1.add(amResp.getScore());
				lgaSpiderData1.add(fireBrigade.getScore());
				lgaSpiderData1.add(policeStation.getScore());
				lgaSpiderData1.add(hospital.getScore());
			}else{
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
			}
			if(!"Second LGA".equals(selectedLGA1)){
				CrimeByLocation crime = crimeByLocSvc.searchByLGAAndYear(selectedLGA2, YEAR).get(0);	
				Crash crash = crashSvc.searchByLGAAndYear(selectedLGA2, YEAR).get(0);
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA2, YEAR-1);
				FireBrigade fireBrigade = fireBriSvc.searchByLgaNameAndYear(selectedLGA2).get(0);
				PoliceStation policeStation = policeStaSvc.searchByLga(selectedLGA2).get(0);
				Hospital hospital = hospitalSvc.searchByLga(selectedLGA2).get(0);
				
				lgaSpiderData2.add(crime.getScore());
				lgaSpiderData2.add(crash.getScore());
				lgaSpiderData2.add(amResp.getScore());
				lgaSpiderData2.add(fireBrigade.getScore());
				lgaSpiderData2.add(policeStation.getScore());
				lgaSpiderData2.add(hospital.getScore());
			}else{
				lgaSpiderData2.add(0);
				lgaSpiderData2.add(0);
				lgaSpiderData2.add(0);
				lgaSpiderData2.add(0);
				lgaSpiderData2.add(0);
				lgaSpiderData2.add(0);
			}
			
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaSpiderData1);
			list.add(lgaSpiderData2);
			
			return list;
		}else if(DataSourceEnum.LEVEL1CRIME.getValue().equals(dataSource)){
			List<Object[]> resultList1 =  crimeByLocSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA1);
			List<CrimeMajorCategories> majorTypeList1 = crimeMajorSvc.getAll();
			List<Object> lgaSpiderData1 = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList1.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList1){
					if(majorTypeList1.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData1.add(matchObj[0]);
				}else{
					lgaSpiderData1.add(0);
				}
			}
			
			List<Object[]> resultList2 =  crimeByLocSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA2);
			List<CrimeMajorCategories> majorTypeList2 = crimeMajorSvc.getAll();
			List<Object> lgaSpiderData2 = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList2.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList2){
					if(majorTypeList2.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData2.add(matchObj[0]);
				}else{
					lgaSpiderData2.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			List<Object> avgList = new ArrayList<Object>();
			for(Object[] obj:crimeByLocSvc.searchTotalVicAvgByYear(YEAR)){
				avgList.add(obj[0]);
			}
			list.add(avgList);
			list.add(lgaSpiderData1);
			list.add(lgaSpiderData2);
			
			return list;
			
		}else if(DataSourceEnum.LEVEL1ACCIDENT.getValue().equals(dataSource)){
			List<Object[]> resultList1 =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA1);
			List<CrashAccidentType> crashTypeList1 = crashTypeSvc.getAll();
			List<Object> lgaSpiderData1 = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList1.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList1){
					if(crashTypeList1.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData1.add(matchObj[0]);
				}else{
					lgaSpiderData1.add(0);
				}
			}
			List<Object[]> resultList2 =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA2);
			List<CrashAccidentType> crashTypeList2 = crashTypeSvc.getAll();
			List<Object> lgaSpiderData2 = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList2.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList2){
					if(crashTypeList2.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData2.add(matchObj[0]);
				}else{
					lgaSpiderData2.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			List<Object> avgList = new ArrayList<Object>();int vicPop = crimeByLocSvc.searchTotalVicPopulationByYear(YEAR);
			for(Object[] obj:crashSvc.searchTotalVicAvgByYear(YEAR, vicPop)){
				avgList.add(obj[0]);
			}
			list.add(avgList);
			list.add(lgaSpiderData1);
			list.add(lgaSpiderData2);
			
			return list;
			
		}else if(DataSourceEnum.LEVEL2ALL.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2A.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2B.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2C.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2D.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2E.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2F.getValue().equals(dataSource)){
			
		}
//		List<CrimeByLocation> list = crimeByLocSvc.searchByLGAAndYear(selectedLGA, YEAR);
		return null;
	}
	/**
	 * Get crime data by seleted LGA
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getSelectedLGAData", method=RequestMethod.GET)
	public @ResponseBody List<List<Object>> getSelectedLGAData(
			@RequestParam String selectedLGA, @RequestParam String dataSource) {
		//level1All level1Accident level2All level2A level2B level2C level2D level2E level2F
		if(DataSourceEnum.LEVEL1ALL.getValue().equals(dataSource)){
			
			CrimeByLocation crime = crimeByLocSvc.searchByLGAAndYear(selectedLGA, YEAR).get(0);	
			Crash crash = crashSvc.searchByLGAAndYear(selectedLGA, YEAR).get(0);
			AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA, YEAR-1);
			FireBrigade fireBrigade = fireBriSvc.searchByLgaNameAndYear(selectedLGA).get(0);
			PoliceStation policeStation = policeStaSvc.searchByLga(selectedLGA).get(0);
			Hospital hospital = hospitalSvc.searchByLga(selectedLGA).get(0);
			
			List<Object> lgaTableData = new ArrayList<Object>();
			lgaTableData.add(crime.getLGAERP());
			lgaTableData.add(crime.getTotalOffenceCount());
			lgaTableData.add(crash.getCrashTotalCount());
			lgaTableData.add(amResp.getAvgResponseTime());
			lgaTableData.add(fireBrigade.getFireBrigadeNo());
			lgaTableData.add(policeStation.getPoliceStationNo());
			lgaTableData.add(hospital.getHospitalNo());
			List<Object> lgaSpiderData = new ArrayList<Object>();
			lgaSpiderData.add(crime.getScore());
			lgaSpiderData.add(crash.getScore());
			lgaSpiderData.add(amResp.getScore());
			lgaSpiderData.add(fireBrigade.getScore());
			lgaSpiderData.add(policeStation.getScore());
			lgaSpiderData.add(hospital.getScore());
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData);
			list.add(lgaSpiderData);
			
			return list;
		}else if(DataSourceEnum.LEVEL1CRIME.getValue().equals(dataSource)){
			List<Object[]> resultList =  crimeByLocSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA);
			List<CrimeMajorCategories> majorTypeList = crimeMajorSvc.getAll();
			List<Object> lgaTableData = new ArrayList<Object>();
			List<Object> lgaSpiderData = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList){
					if(majorTypeList.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData.add(matchObj[0]);
					lgaTableData.add(matchObj[1]);
				}else{
					lgaSpiderData.add(0);
					lgaTableData.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData);
			list.add(lgaSpiderData);
			
			return list;
			
		}else if(DataSourceEnum.LEVEL1ACCIDENT.getValue().equals(dataSource)){
			List<Object[]> resultList =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA);
			List<CrashAccidentType> crashTypeList = crashTypeSvc.getAll();
			List<Object> lgaTableData = new ArrayList<Object>();
			List<Object> lgaSpiderData = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList){
					if(crashTypeList.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData.add(matchObj[0]);
					lgaTableData.add(matchObj[1]);
				}else{
					lgaSpiderData.add(0);
					lgaTableData.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData);
			list.add(lgaSpiderData);
			
			return list;
			
		}else if(DataSourceEnum.LEVEL2ALL.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2A.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2B.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2C.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2D.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2E.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2F.getValue().equals(dataSource)){
			
		}
//		List<CrimeByLocation> list = crimeByLocSvc.searchByLGAAndYear(selectedLGA, YEAR);
	    return null;
	}
	
	/**
	 * Get crime data by seleted LGA
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getLgaTableDataByDrop", method=RequestMethod.GET)
	public @ResponseBody List<List<Object>> getLgaTableDataByDrop(
			@RequestParam String selectedLGA1, @RequestParam String selectedLGA2, @RequestParam String dataSource) {
		//level1All level1Accident level2All level2A level2B level2C level2D level2E level2F
		// First LGA Second LGA
		if(DataSourceEnum.LEVEL1ALL.getValue().equals(dataSource)){
			List<Object> lgaTableData1 = new ArrayList<Object>();
			List<Object> lgaTableData2 = new ArrayList<Object>();
			if(!"First LGA".equals(selectedLGA1)){
				CrimeByLocation crime = crimeByLocSvc.searchByLGAAndYear(selectedLGA1, YEAR).get(0);	
				Crash crash = crashSvc.searchByLGAAndYear(selectedLGA1, YEAR).get(0);
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA1, YEAR-1);
				FireBrigade fireBrigade = fireBriSvc.searchByLgaNameAndYear(selectedLGA1).get(0);
				PoliceStation policeStation = policeStaSvc.searchByLga(selectedLGA1).get(0);
				Hospital hospital = hospitalSvc.searchByLga(selectedLGA1).get(0);
				
				List<Object> lgaTableData = new ArrayList<Object>();
				lgaTableData.add(crime.getLGAERP());
				lgaTableData.add(crime.getTotalOffenceCount());
				lgaTableData.add(crash.getCrashTotalCount());
				lgaTableData.add(amResp.getAvgResponseTime());
				lgaTableData.add(fireBrigade.getFireBrigadeNo());
				lgaTableData.add(policeStation.getPoliceStationNo());
				lgaTableData.add(hospital.getHospitalNo());
			}else{
				lgaTableData1.add("-");
				lgaTableData1.add("-");
				lgaTableData1.add("-");
				lgaTableData1.add("-");
				lgaTableData1.add("-");
				lgaTableData1.add("-");
				lgaTableData1.add("-");
			}
			if(!"Second LGA".equals(selectedLGA1)){
				CrimeByLocation crime = crimeByLocSvc.searchByLGAAndYear(selectedLGA2, YEAR).get(0);	
				Crash crash = crashSvc.searchByLGAAndYear(selectedLGA2, YEAR).get(0);
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA2, YEAR-1);
				FireBrigade fireBrigade = fireBriSvc.searchByLgaNameAndYear(selectedLGA2).get(0);
				PoliceStation policeStation = policeStaSvc.searchByLga(selectedLGA2).get(0);
				Hospital hospital = hospitalSvc.searchByLga(selectedLGA2).get(0);
				
				List<Object> lgaTableData = new ArrayList<Object>();
				lgaTableData.add(crime.getLGAERP());
				lgaTableData.add(crime.getTotalOffenceCount());
				lgaTableData.add(crash.getCrashTotalCount());
				lgaTableData.add(amResp.getAvgResponseTime());
				lgaTableData.add(fireBrigade.getFireBrigadeNo());
				lgaTableData.add(policeStation.getPoliceStationNo());
				lgaTableData.add(hospital.getHospitalNo());
			}else{
				lgaTableData2.add("-");
				lgaTableData2.add("-");
				lgaTableData2.add("-");
				lgaTableData2.add("-");
				lgaTableData2.add("-");
				lgaTableData2.add("-");
				lgaTableData2.add("-");
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData1);
			list.add(lgaTableData2);
			
			return list;
		}else if(DataSourceEnum.LEVEL1CRIME.getValue().equals(dataSource)){
			List<Object[]> resultList1 =  crimeByLocSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA1);
			List<CrimeMajorCategories> majorTypeList1 = crimeMajorSvc.getAll();
			List<Object> lgaTableData1 = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList1.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList1){
					if(majorTypeList1.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaTableData1.add(matchObj[1]);
				}else{
					lgaTableData1.add(0);
				}
			}
			
			List<Object[]> resultList2 =  crimeByLocSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA2);
			List<CrimeMajorCategories> majorTypeList2 = crimeMajorSvc.getAll();
			List<Object> lgaTableData2 = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList2.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList2){
					if(majorTypeList2.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaTableData2.add(matchObj[1]);
				}else{
					lgaTableData2.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData1);
			list.add(lgaTableData2);
			
			return list;
			
		}else if(DataSourceEnum.LEVEL1ACCIDENT.getValue().equals(dataSource)){
			List<Object[]> resultList1 =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA1);
			List<CrashAccidentType> crashTypeList1 = crashTypeSvc.getAll();
			List<Object> lgaTableData1 = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList1.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList1){
					if(crashTypeList1.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaTableData1.add(matchObj[1]);
				}else{
					lgaTableData1.add(0);
				}
			}
			
			List<Object[]> resultList2 =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA2);
			List<CrashAccidentType> crashTypeList2 = crashTypeSvc.getAll();
			List<Object> lgaTableData2 = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList2.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList2){
					if(crashTypeList2.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaTableData2.add(matchObj[1]);
				}else{
					lgaTableData2.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData1);
			list.add(lgaTableData2);
			
			return list;
			
		}else if(DataSourceEnum.LEVEL2ALL.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2A.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2B.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2C.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2D.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2E.getValue().equals(dataSource)){
			
		}else if(DataSourceEnum.LEVEL2F.getValue().equals(dataSource)){
			
		}
//		List<CrimeByLocation> list = crimeByLocSvc.searchByLGAAndYear(selectedLGA, YEAR);
		return null;
	}
	
}
