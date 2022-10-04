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
public class User {
    private int userID;
    private String fullName;
    private String userName;
    private String passWord;
    private String phoneNumber;
    private String email;
    private String address;
    private int roleID;

    public User() {
    }

    public User(int userID, String fullName, String userName, String passWord, String phoneNumber, String email, String address, int roleID) {
        this.userID = userID;
        this.fullName = fullName;
        this.userName = userName;
        this.passWord = passWord;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.roleID = roleID;
    }

    public User(String user, String fullName, String roleID, String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "User{" + "userID=" + userID + ", fullName=" + fullName + ", userName=" + userName + ", passWord=" + passWord + ", phoneNumber=" + phoneNumber + ", email=" + email + ", address=" + address + ", roleID=" + roleID + '}';
    }
    
}
