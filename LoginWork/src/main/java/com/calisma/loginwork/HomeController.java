package com.calisma.loginwork;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import utils.DB;

@Controller
public class HomeController {
	
	DB db = new DB();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String mail, @RequestParam String password, HttpServletRequest req) {
		
		try {			
			String query = "SELECT uid FROM users WHERE umail = ? AND upassword = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, mail);
			pre.setString(2, password);
			ResultSet rs = pre.executeQuery();
			
			while(rs.next()) {
				int uid = rs.getInt("uid");
				req.getSession().setAttribute("user_id", uid);
				return "redirect:/register";
			}
			
		} catch (Exception e) {
			System.out.println("Login error : " + e);
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletRequest req) {
		req.getSession().removeAttribute("user_id");
		req.getSession().invalidate(); // tüm sessionlarý sil
		return "redirect:/";
	}

}