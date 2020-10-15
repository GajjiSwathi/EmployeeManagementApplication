package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.Employee;
import com.example.demo.repo.EmployeeRepo;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeRepo employeeRepo;

	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}

	@RequestMapping(value = "/addEmployee")

	public String addEmployee(@ModelAttribute("employee") Employee employee, Model model) {
		employeeRepo.save(employee);

		model.addAttribute("employee", employee);

		return "addEmployee.jsp";

	}

	@RequestMapping("/getEmployee")
	public String getEmployee(HttpServletRequest req, Model model) {

		Integer id = Integer.parseInt(req.getParameter("eid"));
		Employee employee = employeeRepo.findById(id).orElse(new Employee());

		model.addAttribute("employee", employee);
		return "EmployeeDetailsById.jsp";

	}

	@RequestMapping(value = "/updateEmployeeDetails", method = RequestMethod.GET)
	public String updateEmployeeDetails(HttpServletRequest req, Model model) {

		Integer id = Integer.parseInt(req.getParameter("eid"));

		Employee employee = employeeRepo.findById(id).orElse(new Employee());

		model.addAttribute("employee", employee);
		return "updateEmployeeDetails.jsp";

	}

	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
	public String updateEmployee(HttpServletRequest req, @ModelAttribute("employee") Employee employee, Model model) {

		Integer id = Integer.parseInt(req.getParameter("eid"));

		employeeRepo.save(employee);

		model.addAttribute("employee", employee);
		return "EmployeeDetailsById.jsp";

	}

	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(HttpServletRequest req, Model model) {
		Integer id = Integer.parseInt(req.getParameter("eid"));
		employeeRepo.deleteById(id);

		return "deleteAlien.jsp";
	}

}
