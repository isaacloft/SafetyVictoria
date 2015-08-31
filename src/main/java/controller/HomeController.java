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

import entity.CrimeByLocation;
import entity.LGA;
import entity.Person;
import service.CrimeByLocationService;
import service.CrimeMajorCateService;
import service.CrimeSubCateService;
import service.LGAService;
import service.LgaPopulationService;
import service.PersonService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private PersonService personSvc;
	@Autowired
	private LGAService lgaSvc;
	@Autowired
	private CrimeMajorCateService crimeMajorSvc;
	@Autowired
	private CrimeSubCateService crimeSubSvc;
	@Autowired
	private LgaPopulationService lgaPopuSvc;
	@Autowired
	private CrimeByLocationService CrimeByLocSvc;

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
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.getAll().size());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByYear(2011).get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByPoliceRegion("North West Metro").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByPoliceServiceArea("1").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByLGA("1").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByCsaOffenceDivision("A").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByCsaOffenceSubDivision("A10").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByOffenceCount(2).get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByLGAERP("122983").get(0).getId());
//		System.out.println("testMethods---crimeByLocation---"+CrimeByLocSvc.searchByVICERP("5537817").get(0).getId());
		
		return "home";
	}

	/**
	 * Get crime data by seleted LGA
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getVicAvgCrimeData", method=RequestMethod.GET)
	public @ResponseBody List<Object[]> getVicAvgCrimeData() {
		List<Object[]> list = CrimeByLocSvc.searchTotalVicAvgByYear(2015);
		return list;
	}
	
	/**
	 * Get crime data by seleted LGA
	 * @param selectedLGA
	 * @return
	 */
	@RequestMapping(value="getSelectedLGACrime", method=RequestMethod.GET)
	public @ResponseBody List<CrimeByLocation> getAvailability(@RequestParam String selectedLGA) {
		List<CrimeByLocation> list = new ArrayList<CrimeByLocation>();
		LGA lga = lgaSvc.searchByLga(selectedLGA);
		if(lga == null){
			return list;
		}
		list = CrimeByLocSvc.searchByLGAAndYear(lga.getId(), 2015);
	    return list;
	}
	
	/**
	 * POST requests to http://localhost:8080/hello/addPerson goes here. The new
	 * person data is passed from HTML from and bound into the Person object.
	 */
	@RequestMapping(value = "/addPerson", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute Person person) {
		personSvc.add(person);
		return "redirect:/";
	}
}
