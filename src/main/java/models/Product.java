/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author fadhlan
 */
public class Product {
    private int id;
    private String name;
    private double price;

    public Product() {
        
    }

    public Product(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }  

    public Product(int id) {
        this.id = id;
    }
    
    Product toModel(ResultSet rs){
        try {
            return new Product (
            rs.getInt("id"),
            rs.getString("name"),
            rs.getDouble("price")
            );
        } catch (Exception e) {
            setMessage(e.getMessage());
        }
        return null;
    }

    /*public ArrayList<Product>(){
        ArrayList<Product> res = new ArrayList<>;
        try {
            ResultSet rs = getData("")
        } catch (Exception e) {
        }
    }*/

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    private void setMessage(String message) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
