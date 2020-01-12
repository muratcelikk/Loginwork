package com.calisma.loginwork;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import utils.Util;

@Controller
public class LegendController {
	
	@RequestMapping(value = "/legend", method = RequestMethod.GET)
	public String legend(Model Model, HttpServletRequest req) {
		
		return Util.control(req, "legend");
	}
}
