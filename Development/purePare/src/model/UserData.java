package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.UserData;

import util.DBAction;
import util.MyLogAction;

public class UserData {
	private String userName = "";
	private String gender = "";
	private String dob = "";
	private String country = "";
	private String emailId = "";
	private String contact = "";
	private String password = "";

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int insert() {
		String insertSQL = "insert into  userinfo"
				+ "(username, gender, dob, country, email_id, contact, password) "
				+ "values('" + userName + "', '" + gender + "', '" + dob
				+ "', '" + country + "', '" + emailId + "', '" + contact + "','"+ password
				+ "');";
		return DBAction.update(insertSQL);
	}

	public static ArrayList<UserData> find(String selectionModifier) {
		ArrayList<UserData> selection = new ArrayList<UserData>();
		ResultSet resultSet = null;
		String query = "select * " + "from userinfo " + selectionModifier;
		Connection connection = DBAction.getConnection();
		resultSet = DBAction.readFromDB(query, connection);
		try {
			while (resultSet.next()) {
				UserData User = new UserData();
				User.userName = resultSet.getString("username");
				User.gender = resultSet.getString("gender");
				User.dob = resultSet.getString("dob");
				User.country = resultSet.getString("country");
				User.emailId = resultSet.getString("email_id");
				User.contact = resultSet.getString("contact");
				User.password = resultSet.getString("password");

				selection.add(User);
			}
		} catch (SQLException e) {
			MyLogAction.myCatch("UserData.java", 43, e);
			e.printStackTrace();
		}
		DBAction.close(resultSet);
		DBAction.close(connection);
		return selection;
	}

}
