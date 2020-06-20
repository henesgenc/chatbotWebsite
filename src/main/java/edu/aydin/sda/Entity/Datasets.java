package edu.aydin.sda.Entity;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;
@Table(name="datasets")
@Entity
public class Datasets {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String type;
	private String question;
	private String answer;
	private String link;
	public Datasets() {}
	public Datasets(String type, String question, String answer, String link) {
		this.type = type;
		this.question = question;
		this.answer = answer;
		this.link = link;
	}
	public int getId() {
		return id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
