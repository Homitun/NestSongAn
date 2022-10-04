/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author SE151471 Hoang Minh Tuan>
 */
public class DBUtils {
     public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection conn = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url ="jdbc:sqlserver://localhost:1433;databaseName=NestSongAn";
        conn= DriverManager.getConnection(url, "sa", "12345");
        return conn;
    } 
}
