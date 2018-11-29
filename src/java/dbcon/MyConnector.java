/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbcon;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException; 
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Lenovo
 */
public class MyConnector {
    private static  String dbname = "tsm_infocentre";
    private static  String username = "root";
    private static  String password = "qwerty";
    
    public Connection conn;
    
    public MyConnector(){
        conn = null;
    }

    public static void main(String[] args) {
        
     
        System.out.println("-------- MySQL JDBC Connection Testing ------------");

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Where is your MySQL JDBC Driver?");
            e.printStackTrace();
            return;
        }

        System.out.println("MySQL JDBC Driver Registered!");
        Connection connection = null;

        try {
            connection = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/"+dbname+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", username, password);

        } catch (SQLException e) {
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return;
        }

        if (connection != null) {
            System.out.println("You made it, take control your database now!");
        } else {
            System.out.println("Failed to make connection!");
        }
    }
    
    public boolean createConnection(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Where is your MySQL JDBC Driver?");
            e.printStackTrace();
            return false;
        }
        
         try {
            conn = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/"+dbname+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", username, password);

        } catch (SQLException e) {
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return false;
        }
        
         if (conn == null) {
            System.out.println("Failed to make connection!");
            return false;
        }
        
        return true;
    }
    
    public Connection getConnection(){
        return conn;
    }
    
    public void closeConnection(){
        try{
            conn.close();
        }catch(Exception e){
        
        }
    }
    
    public boolean executeQuery(String query){
        Statement statement = null;
        boolean isSuccess = true;
        
        try{
            statement = conn.createStatement();
            statement.executeUpdate(query);
        }catch(Exception e){
            e.printStackTrace();
            isSuccess = false;
        }finally{
            try{
                statement.close();
            }catch(Exception e){
                
            }
        }
        
        return isSuccess;
    }
    
    public ArrayList<ArrayList<String>> getData(String query){
        
        ArrayList<ArrayList<String>> records = new ArrayList<ArrayList<String>>();
        
        Statement statement = null;
        ResultSet rs = null;
        ResultSetMetaData rsmd = null;
        
        try{
            statement = conn.createStatement();
            rs = statement.executeQuery(query);
            rsmd = rs.getMetaData();
            
            int columnsNumber = rsmd.getColumnCount();
            
            while(rs.next()){
                ArrayList<String> column = new ArrayList<String>();
                for(int i = 1; i <= columnsNumber; i++){
                    column.add(rs.getString(i));
                }
                
                records.add(column);
            }
        
        }catch(Exception e){
            e.printStackTrace();
        }
        finally{
            try{ rs.close();}catch(Exception e){}
            try{ statement.close();}catch(Exception e){}            
        }
        
        
        return records;
    
    }
    
    public void activitLog(String nik, String tabel, String activity){
        String query="INSERT INTO activity_log(nik,waktu,tabel,activity) VALUES('"+nik+"', now(), '"+tabel+"', '"+activity+"' );";
        executeQuery(query);
    }

}
