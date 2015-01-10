package com.canyoudebate.dao;



import java.sql.*;

public abstract class OracleDAO 
{
	/*
	 * Oracle Connection details 
	 */
	private String DB_NAME = "ORCL";
	
	private final String DB_USERID = "C##DEXLOCKED";
	
	private final String DB_PASSWD = "ItsLocked";
	
	private final String DB_DRIVER = "oracle.jdbc.OracleDriver" ;
	
	private final String DB_URL = "jdbc:oracle:thin:@localhost:1521:"+DB_NAME;
		
	
	/**
	 * To establish/open a connection to the Oracle database
	 * It will open a database connection with the help
	 * of the JDBC driver, and return back a Connection object 
	 */
	public Connection openConnection()
	{
		Connection conn = null;
		
		try
		{
			//load the Oracle JDBC driver from the ojdbc6.jar
			Class.forName(DB_DRIVER);
			
			//initialize the connection
			conn = DriverManager.getConnection(DB_URL, DB_USERID, DB_PASSWD);
		}
		catch(ClassNotFoundException c){c.printStackTrace();}
		catch(SQLException s){s.printStackTrace();}
		
		
		return conn;
	}

}
