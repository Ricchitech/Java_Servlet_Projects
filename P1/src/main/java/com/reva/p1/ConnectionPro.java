package com.reva.p1;

import java.sql.*;

/**
 *
 * @author Bharathraj
 */
public class ConnectionPro {
    private static Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","root");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}

