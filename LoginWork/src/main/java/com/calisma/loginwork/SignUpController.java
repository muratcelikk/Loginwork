package com.calisma.loginwork;

import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javas.User;
import utils.DB;

@Controller
public class SignUpController {

	DB db = new DB();
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signUp(User user,HttpServletRequest req) {	
		return "signup";
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(User user,HttpServletRequest req) {
		try {			
			String query = "INSERT INTO users (uid, uname, usurname, umail, upassword) VALUES (NULL, ?, ?, ?, ?)";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, user.getUname());
			pre.setString(2, user.getUsurname());
			pre.setString(3, user.getUmail());
			pre.setString(4, user.getUpassword());
			pre.executeUpdate();
			return "redirect:/";
		} catch (Exception e) {
			System.out.println("Signup error : " + e);
		}
		return "redirect:/signup";
	}
}
