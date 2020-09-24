package com.allanimt.springMVC;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import databaseInfo.DataBaseTemplate;
import entity.Employee;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    @Autowired
    DataBaseTemplate dataBaseTemplate;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showHomePage() {
        return new ModelAndView("home", "command", new Employee());
    }

    @RequestMapping(value = "/addEmployee", method = RequestMethod.GET)
    public ModelAndView showAddEmployeePage() {
        return new ModelAndView("addEmployee", "command", new Employee());
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("employee") Employee employee) {
        dataBaseTemplate.insertEmployee(employee);
        return new ModelAndView("redirect:/viewEmployees");
    }

    @RequestMapping(value = "/viewEmployees", method = RequestMethod.GET)
    public ModelAndView showviewEmployeesPage() {
        List < Employee > listofEmployees = dataBaseTemplate.viewAllEmployee();
        return new ModelAndView("viewEmployees", "listofEmployees", listofEmployees);
    }
    
    /*
    @RequestMapping(value = "/addEmployee/{id}", method = RequestMethod.POST)
    public ModelAndView showEditEmployeePage(@PathVariable int id) {
        Employee theSelectedEmployee = dataBaseTemplate.getEmployeeById(id);
        return new ModelAndView("editEmployeeForm", "command", theSelectedEmployee);
    }
	*/
    
    @RequestMapping(value = "/updateEmployee/{id}", method = RequestMethod.GET)
    public ModelAndView updateEmployee(@PathVariable int id) {
        Employee employee = dataBaseTemplate.getEmployeeById(id);
        return new ModelAndView("editEmployeeForm", "command", employee);
    }
    
    @RequestMapping(value = "/saveUpdate", method = RequestMethod.POST)
    public ModelAndView saveUpdateEmployeeById(@ModelAttribute("employee") Employee employee) {
        dataBaseTemplate.updateEmployee(employee);
        return new ModelAndView("redirect:/viewEmployees");
    }

    @RequestMapping(value = "/deleteEmployee/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEmployee(@PathVariable int id) {
        dataBaseTemplate.deleteDeveloper(id);
        return new ModelAndView("redirect:/viewEmployees");
    }

}