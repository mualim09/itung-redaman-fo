package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseAccess {
    private static DatabaseAccess _instance;
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String username = "root";
    private static final String password = "qwerty";
    private static final String url = "jdbc:mysql://localhost:3306/tsm_infocentre?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    private static Connection conn;
    private boolean isFree = true;
  
    public static DatabaseAccess getInstance(){
        if(_instance == null){
            try{
                _instance = new DatabaseAccess();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
       return _instance; 
    }

    static {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static Connection getConnection(){
        return conn;
    }
        
    public synchronized void releaseConnection(){
        while(isFree){
            try{
                wait();
            } catch (InterruptedException ie){
                ie.printStackTrace();
            }
        }
        isFree=true;
        notify();
    }
    
}