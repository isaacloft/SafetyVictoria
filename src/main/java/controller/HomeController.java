package controller;

import java.util.ArrayList;
import java.util.Collections;
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
import entity.LGAScore;
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
	public static String EMPTYDASH = "-";
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
		return "home";
	}

	/**
	 * Get average crime data by total LGA in year 2015
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getVicAvgCrimeData", method=RequestMethod.GET)
	public @ResponseBody List<Object[]> getVicAvgCrimeData() {
		List<Object[]> list = crimeByLocSvc.searchTotalVicAvgByYear(YEAR);
		return list;
	}
	
	/**
	 * Get average crime data by total LGA in year 2015
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getLGAScoreForCompareMapByYear", method=RequestMethod.GET)
	public @ResponseBody List<LGAScore> getLGAScoreForCompareMapByYear(@RequestParam int year) {
		
		List<CrimeByLocation> crimeResults = crimeByLocSvc.searchByYearGroupByLGA(year-1);
		List<Crash> crashResults = crashSvc.searchByYearGroupByLGA(year-1);
		
		List<LGAScore> lgaScoreList = new ArrayList<LGAScore>();
		for(int i=0;i<crimeResults.size();i++){
			CrimeByLocation crime = crimeResults.get(i);
			Crash crash = crashResults.get(i);
			double lgaAvgScore = ((double)crime.getScore() + (double)crash.getScore()) / 2;
			lgaScoreList.add(new LGAScore(crime.getLgaId(), crime.getLgaName(), crime.getYear(),
					lgaAvgScore, crime.getScore(), crime.getOffenceCountByPopulation(),
					crash.getScore(), crash.getCrashCountByPopulation(), Integer.parseInt(crime.getLGAERP())));
		}
		return lgaScoreList;
	}
	
	/**
	 * Get average crash data by total LGA in year 2015
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
	@RequestMapping(value="getSelectedLGAData", method=RequestMethod.GET)
	public @ResponseBody List<List<Object>> getSelectedLGAData(
			@RequestParam String selectedLGA, @RequestParam String dataSource) {
		//level1All level1Accident level2All level2A level2B level2C level2D level2E level2F
		if(DataSourceEnum.LEVEL1ALL.getValue().equals(dataSource)){
			
			List<Object> lgaTableData = new ArrayList<Object>();
			List<Object> lgaSpiderData = new ArrayList<Object>();
			List<Object> previousYearData = new ArrayList<Object>();
			
			List<CrimeByLocation> crimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA, YEAR);
			List<CrimeByLocation> previousYearCrimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA, YEAR-1);
			if(crimeResults.size() == 0){
				lgaTableData.add(EMPTYDASH);
				lgaTableData.add(EMPTYDASH);
				lgaSpiderData.add(0);
				previousYearData.add(0);
				previousYearData.add(0);
			}else{
				lgaTableData.add(crimeResults.get(0).getLGAERP());
				lgaTableData.add(crimeResults.get(0).getTotalOffenceCount());
				lgaSpiderData.add(crimeResults.get(0).getScore());
				
				int currentPop = Integer.parseInt(crimeResults.get(0).getLGAERP());
				int prevousPop = Integer.parseInt(previousYearCrimeResults.get(0).getLGAERP());
				previousYearData.add((double)((currentPop-prevousPop) * 100 * 100 / prevousPop)/100);
				
				int currentOffenceCount = crimeResults.get(0).getTotalOffenceCount();
				int prevousOffenceCount = previousYearCrimeResults.get(0).getTotalOffenceCount();
				previousYearData.add((double)((currentOffenceCount-prevousOffenceCount) * 100 * 100 / prevousOffenceCount)/100);
			}
			List<Crash> crashResults = crashSvc.searchByLGAAndYear(selectedLGA, YEAR);
			List<Crash> previousYearCrashResults = crashSvc.searchByLGAAndYear(selectedLGA, YEAR-1);
			if(crashResults.size() == 0){
				lgaTableData.add(EMPTYDASH);
				lgaSpiderData.add(0);
				previousYearData.add(0);
			}else{
				lgaTableData.add(crashResults.get(0).getCrashTotalCount());
				lgaSpiderData.add(crashResults.get(0).getScore());
				
				int currentCrashCount = crashResults.get(0).getCrashTotalCount();
				int prevousCrashCount = previousYearCrashResults.get(0).getCrashTotalCount();
				previousYearData.add((double)((currentCrashCount-prevousCrashCount) * 100 * 100 / prevousCrashCount)/100);
			}
			AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA, YEAR-1);
			if(amResp != null){
				lgaTableData.add(amResp.getAvgResponseTime());
				lgaSpiderData.add(amResp.getScore());
			}else{
				lgaTableData.add(EMPTYDASH);
				lgaSpiderData.add(0);
			}
			List<FireBrigade> fireBriResults = fireBriSvc.searchByLgaNameAndYear(selectedLGA);
			if(fireBriResults.size() == 0){
				lgaTableData.add(EMPTYDASH);
				lgaSpiderData.add(0);
			}else{
				lgaTableData.add(fireBriResults.get(0).getFireBrigadeNo());
				lgaSpiderData.add(fireBriResults.get(0).getScore());
			}
			List<PoliceStation> policeStaResults = policeStaSvc.searchByLga(selectedLGA);
			if(policeStaResults.size() == 0){
				lgaTableData.add(EMPTYDASH);
				lgaSpiderData.add(0);
			}else{
				lgaTableData.add(policeStaResults.get(0).getPoliceStationNo());
				lgaSpiderData.add(policeStaResults.get(0).getScore());
			}
			List<Hospital> hospitalResults = hospitalSvc.searchByLga(selectedLGA);
			if(hospitalResults.size() == 0){
				lgaTableData.add(EMPTYDASH);
				lgaSpiderData.add(0);
			}else{
				lgaTableData.add(hospitalResults.get(0).getHospitalNo());
				lgaSpiderData.add(hospitalResults.get(0).getScore());
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData);
			list.add(lgaSpiderData);
			list.add(previousYearData);
			
			return list;
		}else if(DataSourceEnum.LEVEL1CRIME.getValue().equals(dataSource)){
			List<Object[]> resultList =  crimeByLocSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA);
			List<CrimeMajorCategories> majorTypeList = crimeMajorSvc.getAll();
			List<Object> lgaTableData = new ArrayList<Object>();
			List<Object> lgaSpiderDataTemp = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList){
					if(majorTypeList.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderDataTemp.add(matchObj[0]);
					lgaTableData.add(matchObj[1]);
				}else{
					lgaSpiderDataTemp.add(0);
					lgaTableData.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			
			List<Object> lgaSpiderData = new ArrayList<Object>();
			lgaSpiderData.add(lgaSpiderDataTemp.get(2));
			lgaSpiderData.add(lgaSpiderDataTemp.get(3));
			lgaSpiderData.add(lgaSpiderDataTemp.get(4));
			lgaSpiderData.add(lgaSpiderDataTemp.get(5));
			lgaSpiderData.add(lgaSpiderDataTemp.get(0));
			lgaSpiderData.add(lgaSpiderDataTemp.get(1));
			
			list.add(lgaTableData);
			list.add(lgaSpiderData);
			
			
			
			return list;
			
		}else if(DataSourceEnum.LEVEL1ACCIDENT.getValue().equals(dataSource)){
			List<Object[]> resultList =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA);
			List<CrashAccidentType> crashTypeList = crashTypeSvc.getAll();
			List<Object> lgaTableDataTemp = new ArrayList<Object>();
			List<Object> lgaSpiderDataTemp = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList){
					if(crashTypeList.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderDataTemp.add(matchObj[0]);
					lgaTableDataTemp.add(matchObj[1]);
				}else{
					lgaSpiderDataTemp.add(0);
					lgaTableDataTemp.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			
			List<Object> lgaTableData = new ArrayList<Object>();
			lgaTableData.add(lgaTableDataTemp.get(2));
			lgaTableData.add(lgaTableDataTemp.get(0));
			lgaTableData.add(lgaTableDataTemp.get(6));
			lgaTableData.add(lgaTableDataTemp.get(4));
			lgaTableData.add(lgaTableDataTemp.get(7));
			lgaTableData.add(lgaTableDataTemp.get(5));
			lgaTableData.add(lgaTableDataTemp.get(1));
			lgaTableData.add(lgaTableDataTemp.get(3));
			lgaTableData.add(lgaTableDataTemp.get(8));
			
			List<Object> lgaSpiderData = new ArrayList<Object>();
			lgaSpiderData.add(lgaSpiderDataTemp.get(4));
			lgaSpiderData.add(lgaSpiderDataTemp.get(7));
			lgaSpiderData.add(lgaSpiderDataTemp.get(5));
			lgaSpiderData.add(lgaSpiderDataTemp.get(1));
			lgaSpiderData.add(lgaSpiderDataTemp.get(3));
			lgaSpiderData.add(lgaSpiderDataTemp.get(8));
			lgaSpiderData.add(lgaSpiderDataTemp.get(2));
			lgaSpiderData.add(lgaSpiderDataTemp.get(0));
			lgaSpiderData.add(lgaSpiderDataTemp.get(6));
			
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
	 * Get lga1 and lga2 table data by dropdown selection
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
			List<Object> lga1PreviousYearData = new ArrayList<Object>();
			List<Object> lga2PreviousYearData = new ArrayList<Object>();
			
			if(!"First LGA".equals(selectedLGA1)){
				
				List<CrimeByLocation> crimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA1, YEAR);
				List<CrimeByLocation> previousYearCrimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA1, YEAR-1);
				
				if(crimeResults.size()==0){
					lgaTableData1.add(EMPTYDASH);
					lgaTableData1.add(EMPTYDASH);
					
					lga1PreviousYearData.add(EMPTYDASH);
					lga1PreviousYearData.add(EMPTYDASH);
				}else{
					lgaTableData1.add(crimeResults.get(0).getLGAERP());
					lgaTableData1.add(crimeResults.get(0).getTotalOffenceCount());
					
					int currentPop = Integer.parseInt(crimeResults.get(0).getLGAERP());
					int prevousPop = Integer.parseInt(previousYearCrimeResults.get(0).getLGAERP());
					lga1PreviousYearData.add((double)((currentPop-prevousPop) * 100 * 100 / prevousPop)/100);
					
					int currentOffenceCount = crimeResults.get(0).getTotalOffenceCount();
					int prevousOffenceCount = previousYearCrimeResults.get(0).getTotalOffenceCount();
					lga1PreviousYearData.add((double)((currentOffenceCount-prevousOffenceCount) * 100 * 100 / prevousOffenceCount)/100);
				}
				List<Crash> crashResults = crashSvc.searchByLGAAndYear(selectedLGA1, YEAR);
				List<Crash> previousYearCrashResults = crashSvc.searchByLGAAndYear(selectedLGA1, YEAR-1);
				if(crashResults.size()==0){
					lgaTableData1.add(EMPTYDASH);
					lga1PreviousYearData.add(EMPTYDASH);
				}else{
					lgaTableData1.add(crashResults.get(0).getCrashTotalCount());
					
					int currentCrashCount = crashResults.get(0).getCrashTotalCount();
					int prevousCrashCount = previousYearCrashResults.get(0).getCrashTotalCount();
					lga1PreviousYearData.add((double)((currentCrashCount-prevousCrashCount) * 100 * 100 / prevousCrashCount)/100);
				}
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA1, YEAR-1);
				if(amResp != null){
					lgaTableData1.add(amResp.getAvgResponseTime());
				}else{
					lgaTableData1.add(EMPTYDASH);
				}
				List<FireBrigade> fireBriResults = fireBriSvc.searchByLgaNameAndYear(selectedLGA1);
				if(fireBriResults.size()==0){
					lgaTableData1.add(EMPTYDASH);
				}else{
					lgaTableData1.add(fireBriResults.get(0).getFireBrigadeNo());
				}
				List<PoliceStation> policeStaResults = policeStaSvc.searchByLga(selectedLGA1);
				if(policeStaResults.size()==0){
					lgaTableData1.add(EMPTYDASH);
				}else{
					lgaTableData1.add(policeStaResults.get(0).getPoliceStationNo());
				}
				List<Hospital> hospitalResults = hospitalSvc.searchByLga(selectedLGA1);
				if(hospitalResults.size() == 0){
					lgaTableData1.add(EMPTYDASH);
				}else{
					lgaTableData1.add(hospitalResults.get(0).getHospitalNo());
				}
			}else{
				lgaTableData1.add(EMPTYDASH);
				lgaTableData1.add(EMPTYDASH);
				lgaTableData1.add(EMPTYDASH);
				lgaTableData1.add(EMPTYDASH);
				lgaTableData1.add(EMPTYDASH);
				lgaTableData1.add(EMPTYDASH);
				lgaTableData1.add(EMPTYDASH);
				lga1PreviousYearData.add(EMPTYDASH);
				lga1PreviousYearData.add(EMPTYDASH);
				lga1PreviousYearData.add(EMPTYDASH);
			}
			if(!"Second LGA".equals(selectedLGA2)){
				
				List<CrimeByLocation> crimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA2, YEAR);
				List<CrimeByLocation> previousYearCrimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA2, YEAR-1);
				if(crimeResults.size()==0){
					lgaTableData2.add(EMPTYDASH);
					lgaTableData2.add(EMPTYDASH);
					
					lga2PreviousYearData.add(EMPTYDASH);
					lga2PreviousYearData.add(EMPTYDASH);
				}else{
					lgaTableData2.add(crimeResults.get(0).getLGAERP());
					lgaTableData2.add(crimeResults.get(0).getTotalOffenceCount());
					
					int currentPop = Integer.parseInt(crimeResults.get(0).getLGAERP());
					int prevousPop = Integer.parseInt(previousYearCrimeResults.get(0).getLGAERP());
					lga2PreviousYearData.add((double)((currentPop-prevousPop) * 100 * 100 / prevousPop)/100);
					
					int currentOffenceCount = crimeResults.get(0).getTotalOffenceCount();
					int prevousOffenceCount = previousYearCrimeResults.get(0).getTotalOffenceCount();
					lga2PreviousYearData.add((double)((currentOffenceCount-prevousOffenceCount) * 100 * 100 / prevousOffenceCount)/100);
				}
				List<Crash> crashResults = crashSvc.searchByLGAAndYear(selectedLGA2, YEAR);
				List<Crash> previousYearCrashResults = crashSvc.searchByLGAAndYear(selectedLGA2, YEAR-1);
				if(crashResults.size()==0){
					lgaTableData2.add(EMPTYDASH);
					lga2PreviousYearData.add(EMPTYDASH);
				}else{
					lgaTableData2.add(crashResults.get(0).getCrashTotalCount());
					
					int currentCrashCount = crashResults.get(0).getCrashTotalCount();
					int prevousCrashCount = previousYearCrashResults.get(0).getCrashTotalCount();
					lga2PreviousYearData.add((double)((currentCrashCount-prevousCrashCount) * 100 * 100 / prevousCrashCount)/100);
				}
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA2, YEAR-1);
				if(amResp != null){
					lgaTableData2.add(amResp.getAvgResponseTime());
				}else{
					lgaTableData2.add(EMPTYDASH);
				}
				List<FireBrigade> fireBriResults = fireBriSvc.searchByLgaNameAndYear(selectedLGA2);
				if(fireBriResults.size()==0){
					lgaTableData2.add(EMPTYDASH);
				}else{
					lgaTableData2.add(fireBriResults.get(0).getFireBrigadeNo());
				}
				List<PoliceStation> policeStaResults = policeStaSvc.searchByLga(selectedLGA2);
				if(policeStaResults.size()==0){
					lgaTableData2.add(EMPTYDASH);
				}else{
					lgaTableData2.add(policeStaResults.get(0).getPoliceStationNo());
				}
				List<Hospital> hospitalResults = hospitalSvc.searchByLga(selectedLGA2);
				if(hospitalResults.size() == 0){
					lgaTableData2.add(EMPTYDASH);
				}else{
					lgaTableData2.add(hospitalResults.get(0).getHospitalNo());
				}
				
			}else{
				lgaTableData2.add(EMPTYDASH);
				lgaTableData2.add(EMPTYDASH);
				lgaTableData2.add(EMPTYDASH);
				lgaTableData2.add(EMPTYDASH);
				lgaTableData2.add(EMPTYDASH);
				lgaTableData2.add(EMPTYDASH);
				lgaTableData2.add(EMPTYDASH);
				lga2PreviousYearData.add(EMPTYDASH);
				lga2PreviousYearData.add(EMPTYDASH);
				lga2PreviousYearData.add(EMPTYDASH);
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			list.add(lgaTableData1);
			list.add(lgaTableData2);
			list.add(lga1PreviousYearData);
			list.add(lga2PreviousYearData);
			
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
			List<Object> lgaTableData1Temp = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList1.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList1){
					if(crashTypeList1.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaTableData1Temp.add(matchObj[1]);
				}else{
					lgaTableData1Temp.add(0);
				}
			}
			
			List<Object[]> resultList2 =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA2);
			List<CrashAccidentType> crashTypeList2 = crashTypeSvc.getAll();
			List<Object> lgaTableData2Temp = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList2.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList2){
					if(crashTypeList2.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaTableData2Temp.add(matchObj[1]);
				}else{
					lgaTableData2Temp.add(0);
				}
			}
			
			List<Object> lgaTableData1 = new ArrayList<Object>();
			lgaTableData1.add(lgaTableData1Temp.get(2));
			lgaTableData1.add(lgaTableData1Temp.get(0));
			lgaTableData1.add(lgaTableData1Temp.get(6));
			lgaTableData1.add(lgaTableData1Temp.get(4));
			lgaTableData1.add(lgaTableData1Temp.get(7));
			lgaTableData1.add(lgaTableData1Temp.get(5));
			lgaTableData1.add(lgaTableData1Temp.get(1));
			lgaTableData1.add(lgaTableData1Temp.get(3));
			lgaTableData1.add(lgaTableData1Temp.get(8));
			
			List<Object> lgaTableData2 = new ArrayList<Object>();
			lgaTableData2.add(lgaTableData2Temp.get(2));
			lgaTableData2.add(lgaTableData2Temp.get(0));
			lgaTableData2.add(lgaTableData2Temp.get(6));
			lgaTableData2.add(lgaTableData2Temp.get(4));
			lgaTableData2.add(lgaTableData2Temp.get(7));
			lgaTableData2.add(lgaTableData2Temp.get(5));
			lgaTableData2.add(lgaTableData2Temp.get(1));
			lgaTableData2.add(lgaTableData2Temp.get(3));
			lgaTableData2.add(lgaTableData2Temp.get(8));
			
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
	
	/**
	 * Get lga1 and lga2 spider data by dropdown selection
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
				
				List<CrimeByLocation> crimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA1, YEAR);
				if(crimeResults.size()==0){
					lgaSpiderData1.add(0);
				}else{
					lgaSpiderData1.add(crimeResults.get(0).getScore());
				}
				List<Crash> crashResults = crashSvc.searchByLGAAndYear(selectedLGA1, YEAR);
				if(crashResults.size()==0){
					lgaSpiderData1.add(0);
				}else{
					lgaSpiderData1.add(crashResults.get(0).getScore());
				}
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA1, YEAR-1);
				if(amResp != null){
					lgaSpiderData1.add(amResp.getScore());
				}else{
					lgaSpiderData1.add(0);
				}
				List<FireBrigade> fireBriResults = fireBriSvc.searchByLgaNameAndYear(selectedLGA1);
				if(fireBriResults.size()==0){
					lgaSpiderData1.add(0);
				}else{
					lgaSpiderData1.add(fireBriResults.get(0).getScore());
				}
				List<PoliceStation> policeStaResults = policeStaSvc.searchByLga(selectedLGA1);
				if(policeStaResults.size()==0){
					lgaSpiderData1.add(0);
				}else{
					lgaSpiderData1.add(policeStaResults.get(0).getScore());
				}
				List<Hospital> hospitalResults = hospitalSvc.searchByLga(selectedLGA1);
				if(hospitalResults.size() == 0){
					lgaSpiderData1.add(0);
				}else{
					lgaSpiderData1.add(hospitalResults.get(0).getScore());
				}
				
			}else{
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
				lgaSpiderData1.add(0);
			}
			if(!"Second LGA".equals(selectedLGA2)){
				List<CrimeByLocation> crimeResults = crimeByLocSvc.searchByLGAAndYear(selectedLGA2, YEAR);
				if(crimeResults.size()==0){
					lgaSpiderData2.add(0);
				}else{
					lgaSpiderData2.add(crimeResults.get(0).getScore());
				}
				List<Crash> crashResults = crashSvc.searchByLGAAndYear(selectedLGA2, YEAR);
				if(crashResults.size()==0){
					lgaSpiderData2.add(0);
				}else{
					lgaSpiderData2.add(crashResults.get(0).getScore());
				}
				AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(selectedLGA2, YEAR-1);
				if(amResp != null){
					lgaSpiderData2.add(amResp.getScore());
				}else{
					lgaSpiderData2.add(0);
				}
				List<FireBrigade> fireBriResults = fireBriSvc.searchByLgaNameAndYear(selectedLGA2);
				if(fireBriResults.size()==0){
					lgaSpiderData2.add(0);
				}else{
					lgaSpiderData2.add(fireBriResults.get(0).getScore());
				}
				List<PoliceStation> policeStaResults = policeStaSvc.searchByLga(selectedLGA2);
				if(policeStaResults.size()==0){
					lgaSpiderData2.add(0);
				}else{
					lgaSpiderData2.add(policeStaResults.get(0).getScore());
				}
				List<Hospital> hospitalResults = hospitalSvc.searchByLga(selectedLGA2);
				if(hospitalResults.size() == 0){
					lgaSpiderData2.add(0);
				}else{
					lgaSpiderData2.add(hospitalResults.get(0).getScore());
				}
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
			List<Object> lgaSpiderData1Temp = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList1.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList1){
					if(majorTypeList1.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData1Temp.add(matchObj[0]);
				}else{
					lgaSpiderData1Temp.add(0);
				}
			}
			
			List<Object[]> resultList2 =  crimeByLocSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA2);
			List<CrimeMajorCategories> majorTypeList2 = crimeMajorSvc.getAll();
			List<Object> lgaSpiderData2Temp = new ArrayList<Object>();
			
			for(int i=0;i<majorTypeList2.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList2){
					if(majorTypeList2.get(i).getCode().equals(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData2Temp.add(matchObj[0]);
				}else{
					lgaSpiderData2Temp.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			List<Object> avgListTemp = new ArrayList<Object>();
			for(Object[] obj:crimeByLocSvc.searchTotalVicAvgByYear(YEAR)){
				avgListTemp.add(obj[0]);
			}
			
			List<Object> avgList = new ArrayList<Object>();
			avgList.add(avgListTemp.get(2));
			avgList.add(avgListTemp.get(3));
			avgList.add(avgListTemp.get(4));
			avgList.add(avgListTemp.get(5));
			avgList.add(avgListTemp.get(0));
			avgList.add(avgListTemp.get(1));
			
			List<Object> lgaSpiderData1 = new ArrayList<Object>();
			lgaSpiderData1.add(lgaSpiderData1Temp.get(2));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(3));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(4));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(5));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(0));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(1));
			
			List<Object> lgaSpiderData2 = new ArrayList<Object>();
			lgaSpiderData2.add(lgaSpiderData2Temp.get(2));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(3));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(4));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(5));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(0));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(1));
			
			list.add(avgList);
			list.add(lgaSpiderData1);
			list.add(lgaSpiderData2);
			
			return list;
			
		}else if(DataSourceEnum.LEVEL1ACCIDENT.getValue().equals(dataSource)){
			List<Object[]> resultList1 =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA1);
			List<CrashAccidentType> crashTypeList1 = crashTypeSvc.getAll();
			List<Object> lgaSpiderData1Temp = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList1.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList1){
					if(crashTypeList1.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData1Temp.add(matchObj[0]);
				}else{
					lgaSpiderData1Temp.add(0);
				}
			}
			List<Object[]> resultList2 =  crashSvc.searchCountByPopByYearAndLga(YEAR, selectedLGA2);
			List<CrashAccidentType> crashTypeList2 = crashTypeSvc.getAll();
			List<Object> lgaSpiderData2Temp = new ArrayList<Object>();
			
			for(int i=0;i<crashTypeList2.size();i++){
				Object[] matchObj = null;
				for(Object[] obj:resultList2){
					if(crashTypeList2.get(i).getId() == Integer.parseInt(obj[2].toString())){
						matchObj = obj;
						break;
					}
				}
				if(matchObj != null){
					lgaSpiderData2Temp.add(matchObj[0]);
				}else{
					lgaSpiderData2Temp.add(0);
				}
			}
			
			List<List<Object>> list = new ArrayList<List<Object>>();
			List<Object> avgListTemp = new ArrayList<Object>();
			int vicPop = crimeByLocSvc.searchTotalVicPopulationByYear(YEAR);
			for(Object[] obj:crashSvc.searchTotalVicAvgByYear(YEAR, vicPop)){
				avgListTemp.add(obj[0]);
			}
			
			List<Object> avgList = new ArrayList<Object>();
			avgList.add(avgListTemp.get(4));
			avgList.add(avgListTemp.get(7));
			avgList.add(avgListTemp.get(5));
			avgList.add(avgListTemp.get(1));
			avgList.add(avgListTemp.get(3));
			avgList.add(avgListTemp.get(8));
			avgList.add(avgListTemp.get(2));
			avgList.add(avgListTemp.get(0));
			avgList.add(avgListTemp.get(6));
			
			List<Object> lgaSpiderData1 = new ArrayList<Object>();
			lgaSpiderData1.add(lgaSpiderData1Temp.get(4));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(7));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(5));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(1));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(3));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(8));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(2));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(0));
			lgaSpiderData1.add(lgaSpiderData1Temp.get(6));
			
			List<Object> lgaSpiderData2 = new ArrayList<Object>();
			lgaSpiderData2.add(lgaSpiderData2Temp.get(4));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(7));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(5));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(1));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(3));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(8));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(2));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(0));
			lgaSpiderData2.add(lgaSpiderData2Temp.get(6));
			
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
	 * Get lga1 and lga2 trend data
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getLgaTrendData", method=RequestMethod.GET)
	public @ResponseBody List<List<Object>> getLgaTrendData(
			@RequestParam String selectedLGA1, @RequestParam String selectedLGA2) {
		
		List<Object> lga1OffenceScoreData = new ArrayList<Object>();
		List<Object> lga1OffenceNumData = new ArrayList<Object>();
		List<Object> lga2OffenceScoreData = new ArrayList<Object>();
		List<Object> lga2OffenceNumData = new ArrayList<Object>();
		List<Object> lga1AccidentScoreData = new ArrayList<Object>();
		List<Object> lga1AccidentNumData = new ArrayList<Object>();
		List<Object> lga2AccidentScoreData = new ArrayList<Object>();
		List<Object> lga2AccidentNumData = new ArrayList<Object>();
		if(!"First LGA".equals(selectedLGA1)){
			List<CrimeByLocation> crimeResults = crimeByLocSvc.searchLgaTrend(selectedLGA1);
			if(crimeResults.size() != 0){
				lga1OffenceScoreData.add(crimeResults.get(0).getScore());
				lga1OffenceScoreData.add(crimeResults.get(1).getScore());
				lga1OffenceScoreData.add(crimeResults.get(2).getScore());
				lga1OffenceScoreData.add(crimeResults.get(3).getScore());
				lga1OffenceScoreData.add(crimeResults.get(4).getScore());
				lga1OffenceNumData.add(crimeResults.get(0).getOffenceCountByPopulation());
				lga1OffenceNumData.add(crimeResults.get(1).getOffenceCountByPopulation());
				lga1OffenceNumData.add(crimeResults.get(2).getOffenceCountByPopulation());
				lga1OffenceNumData.add(crimeResults.get(3).getOffenceCountByPopulation());
				lga1OffenceNumData.add(crimeResults.get(4).getOffenceCountByPopulation());
			}else{
				lga1OffenceScoreData.add(0);
				lga1OffenceScoreData.add(0);
				lga1OffenceScoreData.add(0);
				lga1OffenceScoreData.add(0);
				lga1OffenceScoreData.add(0);
				lga1OffenceNumData.add(0);
				lga1OffenceNumData.add(0);
				lga1OffenceNumData.add(0);
				lga1OffenceNumData.add(0);
				lga1OffenceNumData.add(0);
			}
			
			List<Crash> crashResults = crashSvc.searchLgaTrend(selectedLGA1);
			if(crashResults.size() != 0){
				lga1AccidentScoreData.add(crashResults.get(0).getScore());
				lga1AccidentScoreData.add(crashResults.get(1).getScore());
				lga1AccidentScoreData.add(crashResults.get(2).getScore());
				lga1AccidentScoreData.add(crashResults.get(3).getScore());
				lga1AccidentScoreData.add(crashResults.get(4).getScore());
				lga1AccidentNumData.add(crashResults.get(0).getCrashCountByPopulation());
				lga1AccidentNumData.add(crashResults.get(1).getCrashCountByPopulation());
				lga1AccidentNumData.add(crashResults.get(2).getCrashCountByPopulation());
				lga1AccidentNumData.add(crashResults.get(3).getCrashCountByPopulation());
				lga1AccidentNumData.add(crashResults.get(4).getCrashCountByPopulation());
			}else{
				lga1AccidentScoreData.add(0);
				lga1AccidentScoreData.add(0);
				lga1AccidentScoreData.add(0);
				lga1AccidentScoreData.add(0);
				lga1AccidentScoreData.add(0);
				lga1AccidentNumData.add(0);
				lga1AccidentNumData.add(0);
				lga1AccidentNumData.add(0);
				lga1AccidentNumData.add(0);
				lga1AccidentNumData.add(0);
			}
		}else{
			lga1OffenceScoreData.add(0);
			lga1OffenceScoreData.add(0);
			lga1OffenceScoreData.add(0);
			lga1OffenceScoreData.add(0);
			lga1OffenceScoreData.add(0);
			lga1OffenceNumData.add(0);
			lga1OffenceNumData.add(0);
			lga1OffenceNumData.add(0);
			lga1OffenceNumData.add(0);
			lga1OffenceNumData.add(0);
			lga1AccidentScoreData.add(0);
			lga1AccidentScoreData.add(0);
			lga1AccidentScoreData.add(0);
			lga1AccidentScoreData.add(0);
			lga1AccidentScoreData.add(0);
			lga1AccidentNumData.add(0);
			lga1AccidentNumData.add(0);
			lga1AccidentNumData.add(0);
			lga1AccidentNumData.add(0);
			lga1AccidentNumData.add(0);
		}
		
		if(!"Second LGA".equals(selectedLGA2)){
			List<CrimeByLocation> crimeResults = crimeByLocSvc.searchLgaTrend(selectedLGA2);
			if(crimeResults.size() != 0){
				lga2OffenceScoreData.add(crimeResults.get(0).getScore());
				lga2OffenceScoreData.add(crimeResults.get(1).getScore());
				lga2OffenceScoreData.add(crimeResults.get(2).getScore());
				lga2OffenceScoreData.add(crimeResults.get(3).getScore());
				lga2OffenceScoreData.add(crimeResults.get(4).getScore());
				lga2OffenceNumData.add(crimeResults.get(0).getOffenceCountByPopulation());
				lga2OffenceNumData.add(crimeResults.get(1).getOffenceCountByPopulation());
				lga2OffenceNumData.add(crimeResults.get(2).getOffenceCountByPopulation());
				lga2OffenceNumData.add(crimeResults.get(3).getOffenceCountByPopulation());
				lga2OffenceNumData.add(crimeResults.get(4).getOffenceCountByPopulation());
			}else{
				lga2OffenceScoreData.add(0);
				lga2OffenceScoreData.add(0);
				lga2OffenceScoreData.add(0);
				lga2OffenceScoreData.add(0);
				lga2OffenceScoreData.add(0);
				lga2OffenceNumData.add(0);
				lga2OffenceNumData.add(0);
				lga2OffenceNumData.add(0);
				lga2OffenceNumData.add(0);
				lga2OffenceNumData.add(0);
			}
			
			List<Crash> crashResults = crashSvc.searchLgaTrend(selectedLGA2);
			if(crashResults.size() != 0){
				lga2AccidentScoreData.add(crashResults.get(0).getScore());
				lga2AccidentScoreData.add(crashResults.get(1).getScore());
				lga2AccidentScoreData.add(crashResults.get(2).getScore());
				lga2AccidentScoreData.add(crashResults.get(3).getScore());
				lga2AccidentScoreData.add(crashResults.get(4).getScore());
				lga2AccidentNumData.add(crashResults.get(0).getCrashCountByPopulation());
				lga2AccidentNumData.add(crashResults.get(1).getCrashCountByPopulation());
				lga2AccidentNumData.add(crashResults.get(2).getCrashCountByPopulation());
				lga2AccidentNumData.add(crashResults.get(3).getCrashCountByPopulation());
				lga2AccidentNumData.add(crashResults.get(4).getCrashCountByPopulation());
			}else{
				lga2AccidentScoreData.add(0);
				lga2AccidentScoreData.add(0);
				lga2AccidentScoreData.add(0);
				lga2AccidentScoreData.add(0);
				lga2AccidentScoreData.add(0);
				lga2AccidentNumData.add(0);
				lga2AccidentNumData.add(0);
				lga2AccidentNumData.add(0);
				lga2AccidentNumData.add(0);
				lga2AccidentNumData.add(0);
			}
		}else{
			lga2OffenceScoreData.add(0);
			lga2OffenceScoreData.add(0);
			lga2OffenceScoreData.add(0);
			lga2OffenceScoreData.add(0);
			lga2OffenceScoreData.add(0);
			lga2OffenceNumData.add(0);
			lga2OffenceNumData.add(0);
			lga2OffenceNumData.add(0);
			lga2OffenceNumData.add(0);
			lga2OffenceNumData.add(0);
			lga2AccidentScoreData.add(0);
			lga2AccidentScoreData.add(0);
			lga2AccidentScoreData.add(0);
			lga2AccidentScoreData.add(0);
			lga2AccidentScoreData.add(0);
			lga2AccidentNumData.add(0);
			lga2AccidentNumData.add(0);
			lga2AccidentNumData.add(0);
			lga2AccidentNumData.add(0);
			lga2AccidentNumData.add(0);
		}
		
		List<List<Object>> list = new ArrayList<List<Object>>();
		list.add(lga1OffenceScoreData);
		list.add(lga2OffenceScoreData);
		list.add(lga1AccidentScoreData);
		list.add(lga2AccidentScoreData);
		list.add(lga1OffenceNumData);
		list.add(lga2OffenceNumData);
		list.add(lga1AccidentNumData);
		list.add(lga2AccidentNumData);
			
		return list;
	}
	
	/**
	 * Get lga1 and lga2 trend data
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getLgaHistogramData", method=RequestMethod.GET)
	public @ResponseBody List<LGAScore> getLgaHistogramData() {
		List<LGAScore> lgaScoreList = new ArrayList<LGAScore>();
		
		List<LGA> lgaList = lgaSvc.getAll();
		for(LGA lga: lgaList){
					
			LGAScore lgaScore = new LGAScore();
			lgaScore.setLgaId(lga.getLgaId());
			lgaScore.setLgaName(lga.getLgaName());
			lgaScore.setYear(YEAR);
			List<CrimeByLocation> crimeResults = crimeByLocSvc.searchByLGAAndYear(lga.getLgaName(), YEAR);
			if(crimeResults.size()==0){
				lgaScore.setLgaCrimeScore(0);
				lgaScore.setLgaCrimeCountByPop(0);
				lgaScore.setLgaPop(0);
			}else{
				lgaScore.setLgaCrimeScore(crimeResults.get(0).getScore());
				lgaScore.setLgaCrimeCountByPop(crimeResults.get(0).getOffenceCountByPopulation());
				lgaScore.setLgaPop(Integer.parseInt(crimeResults.get(0).getLGAERP()));
			}
			List<Crash> crashResults = crashSvc.searchByLGAAndYear(lga.getLgaName(), YEAR);
			if(crashResults.size()==0){
				lgaScore.setLgaCrashScore(0);
				lgaScore.setLgaCrashCountByPop(0);
			}else{
				lgaScore.setLgaCrashScore(crashResults.get(0).getScore());
				lgaScore.setLgaCrashCountByPop(crashResults.get(0).getCrashCountByPopulation());
			}
			AmbulanceResponse amResp = ambulanceRespSvc.searchByLgaNameAndYear(lga.getLgaName(), YEAR-1);
			if(amResp != null){
				lgaScore.setLgaAmbulanceScore(amResp.getScore());
				lgaScore.setLgaAmbulanceTime(amResp.getAvgResponseTime());
			}else{
				lgaScore.setLgaAmbulanceScore(0);
				lgaScore.setLgaAmbulanceTime("");
			}
			List<FireBrigade> fireBriResults = fireBriSvc.searchByLgaNameAndYear(lga.getLgaName());
			if(fireBriResults.size()==0){
				lgaScore.setLgaFireBriScore(0);
				lgaScore.setLgaFireBriNum(0);
				lgaScore.setLgaFireBriNumByPop(0);
			}else{
				lgaScore.setLgaFireBriScore(fireBriResults.get(0).getScore());
				lgaScore.setLgaFireBriNum(fireBriResults.get(0).getFireBrigadeNo());
				lgaScore.setLgaFireBriNumByPop(fireBriResults.get(0).getNoByPopulation());
			}
			List<PoliceStation> policeStaResults = policeStaSvc.searchByLga(lga.getLgaName());
			if(policeStaResults.size()==0){
				lgaScore.setLgaPoliceScore(0);
				lgaScore.setLgaPoliceNum(0);
				lgaScore.setLgaPoliceNumByPop(0);
			}else{
				lgaScore.setLgaPoliceScore(policeStaResults.get(0).getScore());
				lgaScore.setLgaPoliceNum(policeStaResults.get(0).getPoliceStationNo());
				lgaScore.setLgaPoliceNumByPop(policeStaResults.get(0).getNoByPopulation());
			}
			List<Hospital> hospitalResults = hospitalSvc.searchByLga(lga.getLgaName());
			if(hospitalResults.size() == 0){
				lgaScore.setLgaHospitalScore(0);
				lgaScore.setLgaHospitalNum(0);
				lgaScore.setLgaHospitalNumByPop(0);
			}else{
				lgaScore.setLgaHospitalScore(hospitalResults.get(0).getScore());
				lgaScore.setLgaHospitalNum(hospitalResults.get(0).getHospitalNo());
				lgaScore.setLgaHospitalNumByPop(hospitalResults.get(0).getNoByPopulation());
			}
			lgaScore.setLgaAvgScore(((double)lgaScore.getLgaCrimeScore() + (double)lgaScore.getLgaCrashScore()) /2);
			lgaScore.setLgaTotalScore((((double)lgaScore.getLgaCrimeScore())*30+((double)lgaScore.getLgaCrashScore())*17
					+((double)lgaScore.getLgaAmbulanceScore())*17+((double)lgaScore.getLgaPoliceScore())*17
					+((double)lgaScore.getLgaHospitalScore())*12+((double)lgaScore.getLgaFireBriScore())*7)/100);
			
			lgaScoreList.add(lgaScore);
		}
		
		Collections.sort(lgaScoreList);
		
		return lgaScoreList;
	}
}
