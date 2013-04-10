package action;

//import java.util.ArrayList;

import java.util.ArrayList;

import model.UserData;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String userName = "";
	private String gender = "";
	private String dob = "";
	private String country = "";
	private String emailId = "";
	private String contact = "";
	private String password = "";
	private String passVerify = "";

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

	public String getPassVerify() {
		return passVerify;
	}

	public void setPassVerify(String passVerify) {
		this.passVerify = passVerify;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public ArrayList<UserData> getUser() {
		return User;
	}

	public void User(ArrayList<UserData> user) {
		User = user;
	}

	private ArrayList<UserData> User = new ArrayList<UserData>();

	public String execute() {
		if (this.userName.length() == 0) {
			addActionError(getText("Please fill in the username !"));
			return "error";
		}

		if (this.emailId.length() == 0) {
			addActionError(getText("Please fill in the email id !"));
			return "error";
		}

		if (this.password.length() == 0) {
			addActionError(getText("Please fill in the password !"));
			return "error";
		}

		if (this.passVerify.length() == 0) {
			addActionError(getText("Please fill in the password to verify !"));
			return "error";
		}

		// Assigning the email format regular expression
		String emailPattern = "^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})";
		if (false == this.emailId.matches(emailPattern)) {
			addActionError(getText("email format wrong"));
			return "error";
		}

		else if (!this.password.equals(passVerify)) {
			addActionError(getText("password re-entered does not match !! please try again... !! "));
			return "error";
		}
		User = UserData.find("");
		for (int i = 0; i < User.size(); i++) {
			if (User.get(i).getEmailId().equals(this.emailId)) {
				addActionError(getText("This email id is already registered.. Try again !! "));
				return "error";

			}

		}

		UserData User = new UserData();
		User.setUserName(this.userName);
		User.setGender(this.gender);
		User.setDob(this.dob);
		User.setCountry(this.country);
		User.setEmailId(this.emailId);
		User.setContact(this.contact);
		User.setPassword(this.password);
		User.insert();
		setUserName("");
		setGender("");
		setDob("");
		setCountry("");
		setEmailId("");
		setContact("");
		setPassword("");
		setPassVerify("");

		return "success";
	}

}
