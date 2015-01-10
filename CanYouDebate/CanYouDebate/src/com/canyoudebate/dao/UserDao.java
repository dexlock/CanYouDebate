package com.canyoudebate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.canyoudebate.beans.User;
import com.canyoudebate.beans.daobeans.ProcResponse;

public class UserDao extends OracleDAO {

	private String insertUser= "INSERT INTO T_USER(userId,userName,password,email,name,dateOfBirth,city,country) VALUES(?,?,?,?,?,?,?,?)";
	//private String fetchUser="SELECT *FROM T_USER WHERE userName=? and password=?";

	public ProcResponse addUser(User user){

		ProcResponse response  = null;
		response = new ProcResponse();
		Integer errorCode = null;
		String message = "";

		Connection conn = openConnection();
		try{


			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery("SELECT USERID_SEQ.NEXTVAL FROM DUAL");

			int userId = 0;
			//read the sequence next value in an integer
			if(rs.next())
				userId = rs.getInt(1);			

			PreparedStatement psmt = conn.prepareStatement(insertUser);

			psmt.setInt(1, userId);
			psmt.setString(2, user.getUserName());
			psmt.setString(3, user.getPassword());
			psmt.setString(4, user.getEmail());
			psmt.setString(5, user.getName());
			psmt.setString(6, user.getDateOfBirth());
			psmt.setString(7, user.getCity());
			psmt.setString(8, user.getCountry());

			psmt.execute();
			
			errorCode = 1000;
			message = "success";
		}

		catch(SQLException ex)
		{
			ex.printStackTrace();
			
			errorCode = 999;
			message = "Something went wrong. We are working on it";

		}

		response.setResponseCode(errorCode.toString());
		response.setResponseMessage(message);


		return response;
	}

	
}
