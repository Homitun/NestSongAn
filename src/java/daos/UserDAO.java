/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import dtos.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utilities.DBUtils;

/**
 *
 * @author SE151471 Hoang Minh Tuan>
 */
public class UserDAO {

    private static final String LOGIN = "SELECT * FROM tb_User  WHERE email=? AND password=?";
    private static final String CHECK_DUPLICATE = "SELECT userName FROM tb_User WHERE userName = ?";
    private static final String INSERT = "INSERT INTO tb_User(user_Fullname, userName, passWord, phoneNumber, Email, Address, role_ID) VALUES(?,?,?,?,?,?,2)";

    public User CheckLogin(String email, String password) throws SQLException {
        User user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, email);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
//                    System.err.println(rs.getString("user_ID"));
                    int user_ID = rs.getInt("user_ID");
                    String user_Fullname = rs.getString("user_FullName");
                    String phoneNumber = rs.getString("phoneNumber");
                    int role_ID = rs.getInt("role_ID");
                    String Address = rs.getString("Address");
                    String userName = rs.getString("userName");

                    user = new User(user_ID, user_Fullname, userName, password, phoneNumber, email, Address, role_ID);

                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
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
            conn = DBUtils.getConnection();
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
    public boolean insert(User user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement psm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                psm = conn.prepareStatement(INSERT);
                psm.setString(1, user.getFullName());
                psm.setString(2, user.getUserName());
                psm.setString(3, user.getPassWord());
                psm.setString(4, user.getPhoneNumber());
                psm.setString(5, user.getEmail());
                psm.setString(6, user.getAddress());
                psm.setInt(7, user.getRoleID() );
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
