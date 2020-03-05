package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	
	public Connection getConnection(){
		try{
			String dbURL = "jdbc:mysql://localhost:3306/sixpack4ever";
			String dbID = "root";
			String dbPassword = "dkwowjddns2!";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
					
		} catch (Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
