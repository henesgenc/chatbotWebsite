package edu.aydin.sda.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Table(name="ProductStocks")
@Entity
public class Stocks {
	
	@Id
	private int id;
	private int stock;
	public Stocks() {};
	public Stocks(int id, int stock) {
		this.id = id;
		this.stock = stock;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
}
