package com.calisma.loginwork;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javas.Carts;
import javas.CategoryPro;
import javas.TablePro;
import utils.DB;
import utils.Util;

@Controller
public class RegisterController {

	DB db = new DB();

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest req) {
		model.addAttribute("catData", catResult());
		model.addAttribute("tableData", tableResult());
		return Util.control(req, "register");
	}

	public List<CategoryPro> catResult() {
		List<CategoryPro> ls = new ArrayList<CategoryPro>();
		try {
			String query = "select * from categories";
			PreparedStatement pre = db.connect(query);
			ResultSet rs = pre.executeQuery();
			while (rs.next()) {
				int cid = rs.getInt("cid");
				String ctitle = rs.getString("ctitle");

				CategoryPro ct = new CategoryPro();
				ct.setCid(cid);
				ct.setCtitle(ctitle);

				ls.add(ct);

			}
		} catch (Exception e) {
			System.err.println("sql error : " + e);
		}
		return ls;
	}

	@RequestMapping(value = "/cartInsert", method = RequestMethod.POST)
	public String cartInsert(Carts cr) {
		try {
			String query = "INSERT INTO `cart` (`crid`, `cname`, `csurname`, `cphone`, `cmail`, `cid`, `cnotes`) VALUES (NULL, ?, ?, ?, ?, ?, ?);";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, cr.getCname());
			pre.setString(2, cr.getCsurname());
			pre.setString(3, cr.getCphone());
			pre.setString(4, cr.getCmail());
			pre.setInt(5, cr.getCid());
			pre.setString(6, cr.getCnotes());
			pre.executeUpdate();
		} catch (Exception e) {
			System.err.println("insert hatasý : " + e);
		}
		return "redirect:/";
	}

	// table result
	public List<TablePro> tableResult() {
		List<TablePro> ls = new ArrayList<TablePro>();
		try {
			String query = "SELECT * FROM cart c INNER JOIN categories as ct ON c.cid = ct.cid ORDER by c.crid ASC";
			PreparedStatement pre = db.connect(query);
			ResultSet rs = pre.executeQuery();
			while (rs.next()) {
				TablePro pr = new TablePro();
				pr.setCname(rs.getString("cname"));
				pr.setCphone(rs.getString("cphone"));
				pr.setCrid(rs.getInt("crid"));
				pr.setCsurname(rs.getString("csurname"));
				pr.setCmail(rs.getString("cmail"));
				pr.setCnotes(rs.getString("cnotes"));
				pr.setCtitle(rs.getString("ctitle"));
				ls.add(pr);
			}
		} catch (Exception e) {
			System.err.println("tableResult error : " + e);
		}
		return ls;
	}

	@RequestMapping(value = "/cartDelete/{crid}", method = RequestMethod.GET)
	public String cartDelete(@PathVariable int crid) {
		try {
			String query = "DELETE FROM `cart` WHERE `cart`.`crid` = ?";
			PreparedStatement pre = db.connect(query);
			pre.setInt(1, crid);
			pre.executeUpdate();
		} catch (Exception e) {
			System.err.println("cart delete error : " + e);
		}
		return "redirect:/register";
	}
}
