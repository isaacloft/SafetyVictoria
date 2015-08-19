package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entity.Person;
import service.LGAService;
import service.PersonService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private PersonService personSvc;
	@Autowired
	private LGAService lgaSvc;

	/**
	 * Requests to http://localhost:8080/hello will be mapped here. Everytime
	 * invoked, we pass list of all persons to view
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String listAll(Model model) {
		model.addAttribute("persons", personSvc.getAll());
		List list = personSvc.getAll();
		System.out.println(list.size());
		Person p = (Person) list.get(0);
		System.out.println(p.getName());

		model.addAttribute("lgaList", lgaSvc.getAll());
		return "home";
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
