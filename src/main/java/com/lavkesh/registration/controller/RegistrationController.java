package com.lavkesh.registration.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lavkesh.registration.model.RegisterUser;
import com.lavkesh.registration.validator.RegisterUserValidator;

@Controller
@ControllerAdvice
public class RegistrationController {
	
	@Autowired
	private RegisterUserValidator registerUserValidator;

	@RequestMapping("/")
	public String getRegisterPage(ModelMap modelMap) {
		modelMap.addAttribute("registerUser", new RegisterUser());

		return "registration";
	}

	@RequestMapping(path = "/newuser", method = RequestMethod.POST)
	public String createNewUser(@Valid @ModelAttribute("registerUser") RegisterUser registerUser, BindingResult errors,
			ModelMap modelMap) {
		
		registerUserValidator.validate(registerUser, errors);
		if(errors.hasErrors()) {
			return "registration";
		}
		
		
		modelMap.addAttribute("registerUser", new RegisterUser());

		return "registration";
	}
	
	@RequestMapping(path = "/newuser", method = RequestMethod.GET)
	public String createNewUser(ModelMap modelMap) {
		return "redirect:/";
	}

	@ModelAttribute
	public void addAttributes(final Model model) {
		Map<String, String> maritalStatusList = new LinkedHashMap<>();
		maritalStatusList.put("SINGLE", "Single");
		maritalStatusList.put("MARRIED", "Married");
		maritalStatusList.put("DIVORCED", "Divorced");
		model.addAttribute("maritalStatusList", maritalStatusList);
	}

}
