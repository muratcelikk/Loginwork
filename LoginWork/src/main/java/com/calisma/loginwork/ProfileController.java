package com.calisma.loginwork;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javas.User;
import utils.DB;
import utils.Util;

@Controller
public class ProfileController {

	DB db = new DB();
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model, HttpServletRequest req) {
		int userId = Integer.valueOf(req.getSession().getAttribute("user_id").toString());
		model.addAttribute("userData", userResult(userId));
		return Util.control(req, "profile");
	}
	
	public User userResult(int userId) {
		try {
			String query= "SELECT * FROM users WHERE uid = ?";
			PreparedStatement pre = db.connect(query);
			pre.setInt(1, userId);
			ResultSet rs = pre.executeQuery();
			while(rs.next()) {
				User user = new User();
				user.setUname(rs.getString("uname"));
				user.setUsurname(rs.getString("usurname"));
				user.setUmail(rs.getString("umail"));
				user.setUpassword(rs.getString("upassword"));
				return user;
			}
		} catch (Exception e) {
			System.err.println("userResult select error : " + e);
		}
		return null;
	}
	
	@RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
	public String updateUser(User user, HttpServletRequest req) {
		int userId = Integer.valueOf(req.getSession().getAttribute("user_id").toString());
		try {
			String query = "UPDATE users SET uname = ?, usurname = ?, umail = ?, upassword = ? WHERE uid = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, user.getUname());
			pre.setString(2, user.getUsurname());
			pre.setString(3, user.getUmail());
			pre.setString(4, user.getUpassword());
			pre.setInt(5, userId);
			pre.executeUpdate();			
		} catch (Exception e) {
			System.err.println("profile update error : " + e);
		}
		return "redirect:/profile";
	}
	
}
