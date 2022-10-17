/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.DTO.userDTO;
import sample.Utils.DBUtil;

/**
 *
 * @author user
 */
public class userDAO {

    private static final String LOGIN = "SELECT * FROM tb_User WHERE userName = ? AND passWord = ? ";
    private static final String CHECK_DUPLICATE = "SELECT userName FROM tb_User WHERE userName = ?";
    private static final String INSERT = "INSERT INTO tb_User(user_Fullname, userName, passWord, phoneNumber, Email, Address, role_ID) VALUES(?,?,?,?,?,?,2)";
    private static final String SEARCH="SELECT * FROM tb_User WHERE Email = ? ";
    private static final String UPDATE="UPDATE tb_User SET passWord =? WHERE userID =?";
    public  static userDTO findByEmail(String email) throws SQLException {
        userDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement(SEARCH);
                ptm.setString(1, email);
                rs = ptm.executeQuery();
                while (rs.next()){
                     int user_ID = rs.getInt("user_ID");
                    String user_Fullname = rs.getString("user_Fullname");
                    String userName = rs.getString("userName");
                    String passWord = rs.getString("passWord");
                    int phoneNumber = rs.getInt("phoneNumber");
                    String Email = rs.getString("Email");
                    String Address = rs.getString("Address");
                    String role_ID = rs.getString("role_ID");
                   user = new userDTO(user_ID, user_Fullname, userName, passWord, phoneNumber, Email, Address, role_ID);
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(ptm != null) ptm.close();
            if(conn != null) conn.close();
        }
        return user;
    }
    
    static boolean update(userDTO user) throws SQLException {
        boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtil.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement(UPDATE);
                ptm.setString(1, user.getPassWord());
                ptm.setInt(2, user.getUser_ID());
                
                checkUpdate = ptm.executeUpdate()>0?true:false;
            }
        } catch (Exception e) {
        } finally{
            if(ptm != null)ptm.close();
            if(conn != null) conn.close();
        }
        return checkUpdate;
    }

    public userDTO checkLogin(String userName, String passWord) throws SQLException {
        userDTO user = null;
        Connection conn = null;
        PreparedStatement psm = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                psm = conn.prepareStatement(LOGIN);
                psm.setString(1, userName);
                psm.setString(2, passWord);
                rs = psm.executeQuery();
                if (rs.next()) {
                    int user_ID = rs.getInt("user_ID");
                    String user_Fullname = rs.getString("user_Fullname");
                    int phoneNumber = rs.getInt("phoneNumber");
                    String Email = rs.getString("Email");
                    String Address = rs.getString("Address");
                    String role_ID = rs.getString("role_ID");
                    user = new userDTO(user_ID, user_Fullname, userName, "", phoneNumber, Email, Address, role_ID);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (psm != null) {
                psm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return user;
    }

    public boolean checkDuplicate(String userName) throws SQLException {
        boolean check = true;
        PreparedStatement psm = null;
        ResultSet rs = null;
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                psm = conn.prepareStatement(CHECK_DUPLICATE);
                psm.setString(1, userName);
                rs = psm.executeQuery();
                if (rs.next()) {
                    check = false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (psm != null) {
                psm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public boolean insert(userDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement psm = null;
        try {
            conn = DBUtil.getConnection();
            if (conn != null) {
                psm = conn.prepareStatement(INSERT);
                psm.setString(1, user.getUser_Fullname());
                psm.setString(2, user.getUserName());
                psm.setString(3, user.getPassWord());
                psm.setInt(4, user.getPhoneNumber());
                psm.setString(5, user.getEmail());
                psm.setString(6, user.getAddress());
//                psm.setString(7, user.getRole_ID() );
                check = psm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (psm != null) {
                psm.close();
            }

            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    
}
