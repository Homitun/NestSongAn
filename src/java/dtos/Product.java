/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;

/**
 *
 * @author SE151471 Hoang Minh Tuan>
 */
public class Product {

    private int pId;
    private String  pName;
    private double price;    
    private int quantity;
    private int cateID;
    private String img;
    private String describe;

    public Product() {
    }
    

    public Product(int pId, String pName, double price, int quantity, int cateID, String img, String describe) {
        this.pId = pId;
        this.pName = pName;
        this.price = price;
        this.quantity = quantity;
        this.cateID = cateID;
        this.img = img;
        this.describe = describe;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }


    
}


