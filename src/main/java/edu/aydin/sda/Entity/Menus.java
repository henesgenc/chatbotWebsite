package edu.aydin.sda.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Menus {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	private String menu;
	private String content;
	private String uppermenu;
	public Menus() {}
	public int getId() {
		return id;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getUppermenu() {
		return uppermenu;
	}
	public void setUppermenu(String uppermenu) {
		this.uppermenu = uppermenu;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
