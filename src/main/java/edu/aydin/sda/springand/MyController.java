package edu.aydin.sda.springand;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.aydin.sda.Entity.Menus;
import edu.aydin.sda.Entity.Phones;
import edu.aydin.sda.Entity.Datasets;
import edu.aydin.sda.Entity.Stocks;
import edu.aydin.sda.Entity.Users;
import edu.aydin.sda.Util.Utill;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

@Controller
public class MyController {
	ArrayList<Datasets> cart = new ArrayList<Datasets>();
	int counter = 0;
	@RequestMapping("/")
    public String Home(HttpServletRequest request){
		HttpSession httpSession = request.getSession(); 
		if(httpSession.getAttribute("unknownuser_id")==null) {
			httpSession.setAttribute("unknownuser_id", ++counter);
		}
	    return "/index.jsp";
    }
	@RequestMapping("/login")
	public String Login(Model model){
		return "/login.jsp";
	}
	@RequestMapping(path = "/LoginControl",method = RequestMethod.POST)
	public String LoginControl(HttpServletRequest request,
			@RequestParam("username")String username,
			@RequestParam("user_password")String password,
			Model model){
		Session session = Utill.getSessionFactory().openSession();
		List <Users> users = 
        		session.createQuery(
        			"from Users", Users.class).list();
		session.close();
		for(Users u:users) {
			if(username.equals(u.getUsername())) {
				if(password.equals(u.getUser_password())) {
					HttpSession httpSession = request.getSession(); 
					httpSession.setAttribute("username", u.getUsername());
					return "redirect:/";
				}
				model.addAttribute("passwordw", 1);
				return "/login";
			}
		}
		model.addAttribute("passwordw", 2);
		return "/login";
	}
	@RequestMapping("/logout")
	public String LogOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
	@RequestMapping("/register")
	public String Register() {
		return "/register.jsp";
	}
	@RequestMapping(path = "/registerControl", method = RequestMethod.POST)
	public String RegisterControl(Model model,
			@RequestParam(value="username",required=true)String username,
			@RequestParam(value="user_password",required=true)String user_password,
			@RequestParam(value="user_name",required=true)String user_name,
			@RequestParam(value="user_surname",required=true)String user_surname,
			@RequestParam(value="user_birthdate",required=true)String date
			) {
		Session session = Utill.getSessionFactory().openSession();
		List <Users> users = 
        		session.createQuery(
        			"from Users", Users.class).list();
		boolean error = false;
		for(Users u:users) {
			if(u.getUsername().equals(username)) {
				error = true;
			}
		}
		if(!error) {
			Transaction transaction = null;
			transaction = session.beginTransaction();
			Users user = new Users();
			user.setUsername(username);
			user.setUser_name(user_name);
			user.setUser_surname(user_surname);
			user.setUser_password(user_password);
			user.setUser_birthdate(date);
			session.save(user);
			transaction.commit();
			session.close();
			model.addAttribute("error1", 0);
			return "redirect:/";
		}
		/*List <Users> users = 
        		session.createQuery(
        			"from Users", Users.class).list();*/
		session.close();
		/*for(Users u: users)
			System.out.println(u.getUser_name());*/
		
		model.addAttribute("error1", 1);
		return "/register";
	}
	@RequestMapping("/homepage")
	public String homepage(){
		return "/homepage.jsp";
	}
	@RequestMapping("/chatbot_new")
	public String chatbotNew() {
		return "/chatbot_new.jsp";
	}
	@RequestMapping("/product{id}")
	public String ProductDetail(@PathVariable("id")String id,Model model) {
		Session session = Utill.getSessionFactory().openSession();
		Datasets product = session.createQuery("from Products where id = "+Integer.parseInt(id),Datasets.class).getSingleResult();
		model.addAttribute("product",product);
		return "/detail.jsp";
	}
	@RequestMapping("/Cart")
	public String ShowCart(
			HttpSession session){
		return "/cart.jsp";
	}
	@RequestMapping("/adminPanel")
	public String adminPanel(){
		return "/AdminPanel.jsp";
	}
	@RequestMapping("/adminPanelUsers")
	public String adminPanelUsers(Model model){
		Session session = Utill.getSessionFactory().openSession();
		List <Users> users = 
        		session.createQuery(
        			"from Users", Users.class).list();
		session.close();
		for(Users u:users) {
			System.out.println(u.getID()+"-"+u.getUser_birthdate()+"-"+u.getUser_name()+"-"+u.getUser_password()+"-"+u.getUser_surname()+"-"+u.getUsername());;
		}
		model.addAttribute("users",users);
		return "/adminPanelUsers.jsp";
	}
	@RequestMapping("/adminPanelDatasets")
	public String adminPanelDatasets(Model model) {
		Session session = Utill.getSessionFactory().openSession();
		List <Datasets> datasets = 
        		session.createQuery(
        			"from Datasets", Datasets.class).list();
		model.addAttribute("datasets",datasets);
		session.close();
		return "/adminPanelDatasets.jsp";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping("/adminPanelDatasetsJSON")
	public String adminPanelDatasetsJSON(Model model) {
		Session session = Utill.getSessionFactory().openSession();
		List <Datasets> datasets = 
        		session.createQuery(
        			"from Datasets", Datasets.class).list();
		JSONArray alldataJSON = new JSONArray();
		JSONObject intents = new JSONObject();
		int i = 0;
		for(i=0;i<datasets.size();i++) {
			JSONObject datasetsJSON = new JSONObject();
			datasetsJSON.put("tag", datasets.get(i).getType());
			JSONArray patterns = new JSONArray();
			patterns.add(datasets.get(i).getQuestion());
			datasetsJSON.put("patterns", patterns);
			JSONArray responses = new JSONArray();
			responses.add(datasets.get(i).getAnswer());
			datasetsJSON.put("responses", responses);
			datasetsJSON.put("link", datasets.get(i).getLink());
			alldataJSON.add(datasetsJSON);
		}
		JSONObject datasetsJSON = new JSONObject();
		datasetsJSON.put("tag", "dontknow");
		JSONArray patterns = new JSONArray();
		patterns.add("   ");
		datasetsJSON.put("patterns", patterns);
		JSONArray responses = new JSONArray();
		responses.add("I don't know, you can ask our vets.");
		datasetsJSON.put("responses", responses);
		datasetsJSON.put("link", "/homepage-Vets");
		alldataJSON.add(datasetsJSON);
		intents.put("intents", alldataJSON);
		try (FileWriter file = new FileWriter("C:/intents.json")) {
		//try (FileWriter file = new FileWriter("C:\\Users\\WhatUpTime.com\\Desktop\\Chatbott/intents.json")) {	 
            file.write(intents.toJSONString());
            System.out.println("deneme2");
            file.flush();
 
        } catch (IOException e) {
            e.printStackTrace();
        }
		model.addAttribute("datasets",datasets);
		session.close();
		return "/adminPanelDatasets.jsp";
	}
	@RequestMapping("/AddData")
	public String addQuestion() {
		return "/adminPanelAddData.jsp";
	}
	@PostMapping("/addQuestion")
	public String addQuestionPost(
			@RequestParam(value="type",required=true)String type,
			@RequestParam(value="question",required=true)String question,
			@RequestParam(value="answer",required=true)String answer,
			@RequestParam(value="link",required=true)String link
			){
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction = null;
		transaction = session.beginTransaction();
		Datasets d = new Datasets();
		link = " "+link;
		d.setType(type);
		d.setQuestion(question);
		d.setAnswer(answer);
		d.setLink(link);
		session.save(d);
		transaction.commit();
		session.close();
		return "redirect:/adminPanelDatasets";
	}
	@RequestMapping("/AddMenu")
	public String addMenu() {
		return "/adminPanelAddMenu.jsp";
	}
	@PostMapping("/addMenu")
	public String addMenuPost(
			@RequestParam(value="menu",required=true)String menu,
			@RequestParam(value="uppermenu",required=true)String uppermenu,
			@RequestParam(value="content",required=true)String content
			){
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction = null;
		transaction = session.beginTransaction();
		Menus m = new Menus();
		m.setMenu(menu);
		m.setUppermenu(uppermenu);
		m.setContent(content);
		session.save(m);
		transaction.commit();
		session.close();
		return "redirect:/AddMenu";
	}
	@RequestMapping("/homepage-{menu}")
	public String homepageMenu(
			@PathVariable("menu")String menu,
			Model model) {
		Session session = Utill.getSessionFactory().openSession();
		List <Menus> menus = 
        		session.createQuery(
        			"from Menus", Menus.class).list();
		model.addAttribute("menus",menus);
		model.addAttribute("menu",menu);
		return "/menus.jsp";
	}
	@RequestMapping("/adminPanelMenus")
	public String adminPanelMenu(
			Model model) {
		Session session = Utill.getSessionFactory().openSession();
		List <Menus> menus = 
        		session.createQuery(
        			"from Menus", Menus.class).list();
		model.addAttribute("menus",menus);
		return "/adminPanelMenus.jsp";
	}
	
	@RequestMapping("/editMenu{id}")
	public String editMenu(
			@PathVariable("id")int id,
			Model model) {
		Session session = Utill.getSessionFactory().openSession();
		Menus menu = session.createQuery("from Menus where id="+id,Menus.class).getSingleResult();
		model.addAttribute("menu",menu);
		return "/editMenu.jsp";
	}
	
	@PostMapping("/editMenu")
	public String editMenuPost(
			@RequestParam(value="id",required=true)int id,
			@RequestParam(value="menu",required=true)String menu,
			@RequestParam(value="uppermenu",required=true)String uppermenu,
			@RequestParam(value="content",required=true)String content) {
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction;
		transaction = session.getTransaction();
		transaction.begin();
		Menus editMenu = session.createQuery("from Menus where id="+id,Menus.class).getSingleResult();
		editMenu.setContent(content);
		editMenu.setMenu(menu);
		editMenu.setUppermenu(uppermenu);
		transaction.commit();
		session.close();
		return "/editMenu"+id;
	}
	@RequestMapping("/deleteMenu{id}")
	public String deleteMenu(@PathVariable("id")int id) {
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction;
		transaction = session.getTransaction();
        transaction.begin();
		Menus menu = session.createQuery("from Menus where id="+id,Menus.class).getSingleResult();
		session.remove(menu);
		transaction.commit();
		session.close();
		return "redirect:/adminPanelMenus";
	}
	
	
	@RequestMapping("/menuContent-{select}")
	public String menuContent(
			@PathVariable("select")int id,
			Model model) {
		Session session = Utill.getSessionFactory().openSession();
		Menus menu = session.createQuery("from Menus where id="+id,Menus.class).getSingleResult();
		System.out.println(menu.getContent());
		model.addAttribute("menu",menu);
		return "/menuContent.jsp";
	}
	@RequestMapping("/editUser{id}")
	public String editUser(
			@PathVariable("id")int id,
			Model model) {
		Session session = Utill.getSessionFactory().openSession();
		Users user = session.createQuery("from Users where id="+id,Users.class).getSingleResult();
		model.addAttribute("user",user);
		return "/editUser.jsp";
	}
	@RequestMapping("/editData{id}")
	public String editData(
			@PathVariable("id")int id,
			Model model) {
		Session session = Utill.getSessionFactory().openSession();
		Datasets data = session.createQuery("from Datasets where id="+id,Datasets.class).getSingleResult();
		model.addAttribute("datasets",data);
		return "/adminPanelEditData.jsp";
	}
	@RequestMapping("/deleteUser{id}")
	public String deleteUser(@PathVariable("id")int id) {
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction;
		transaction = session.getTransaction();
        transaction.begin();
		Users user = session.createQuery("from Users where id="+id,Users.class).getSingleResult();
		session.remove(user);
		transaction.commit();
		session.close();
		return "redirect:/adminPanelUsers";
	}
	@PostMapping("/editUser")
	public String editUser(
			@RequestParam(value="id",required=true)int id,
			@RequestParam(value="username",required=true)String username,
			@RequestParam(value="password",required=true)String password,
			@RequestParam(value="name",required=true)String name,
			@RequestParam(value="surname",required=true)String surname,
			@RequestParam(value="birthdate",required=true)String birthdate) {
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction;
		transaction = session.getTransaction();
		transaction.begin();
		Users user = session.createQuery("from Users where id="+id,Users.class).getSingleResult();
		user.setUsername(username);
		user.setUser_name(name);
		user.setUser_surname(surname);
		user.setUser_birthdate(birthdate);
		user.setUser_password(password);
		transaction.commit();
		session.close();
		return "/editUser"+id;
	}
	@PostMapping("/editData")
	public String editData(
			@RequestParam(value="id",required=true)String id,
			@RequestParam(value="type",required=true)String type,
			@RequestParam(value="question",required=true)String question,
			@RequestParam(value="answer",required=true)String answer,
			@RequestParam(value="link")String link) {
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction;
		transaction = session.getTransaction();
		transaction.begin();
		Datasets data = session.createQuery("from Datasets where id="+id,Datasets.class).getSingleResult();
		data.setType(type);
		data.setQuestion(question);
		data.setAnswer(answer);
		data.setLink(link);
		session.save(data);
		transaction.commit();
		session.close();
		return "redirect:/editData"+id;
	}
	@RequestMapping("/deleteData{id}")
	public String deleteProduct(@PathVariable("id")int id) {
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction;
		transaction = session.getTransaction();
        transaction.begin();
		Datasets data = session.createQuery("from Datasets where id="+id,Datasets.class).getSingleResult();
		session.remove(data);
		transaction.commit();
		session.close();
		return "redirect:/adminPanelDatasets";
	}
	/*@PostMapping("/addPhoneNumber{id}-{phone}")
	public String addPhoneNumber(
			@PathVariable("id")int id,
			@PathVariable("phone")int phone){
		Session session = Utill.getSessionFactory().openSession();
		Transaction transaction;
		transaction = session.getTransaction();
		transaction.begin();
		Users user = session.createQuery("from Users where id="+id,Users.class).getSingleResult();
		Phones p = new Phones(phone);
		user.setPhone_numbers(p);
		session.save(user);
		return "redirect:/adminPanelUsers";
	}*/
}
