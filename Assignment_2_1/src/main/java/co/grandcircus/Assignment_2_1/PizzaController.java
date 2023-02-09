package co.grandcircus.Assignment_2_1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController
{
	
	@RequestMapping("/")
	public String homepage()
	{
		return "index";
	}
	
	@RequestMapping("/ml")
	public String meatlovers(Model model)
	{
		String name = "Meat Lover's";
		double price = 17.00;
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "ml";		
	}
	
	@RequestMapping("/pm")
	public String pizzamargherita(Model model)
	{
		String name = "Pizza Margherita";
		double price = 14.00;
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "pm";		
	}
	
	@RequestMapping("/ogn")
	public String ohgodno(Model model)
	{
		String name = "Oh God No";
		double price = 24.50;
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "ogn";		
	}
	
	@RequestMapping("/review")
	public String showForm()
	{
		return "review";
	}
	
	@PostMapping("/review-submit") // URL path matches form action
	public String submitForm(@RequestParam String name,  @RequestParam String comment, @RequestParam String rating, Model model)
	{
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		return "review-submit";
	}

	@RequestMapping("/build")
	public String buildOrder()
	{
		return "build";
	}
	
}
		
	