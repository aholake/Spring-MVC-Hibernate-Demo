package vn.com.traodoivat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "user")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class User {

	@Id
	@Column(name = "uID", nullable = false)
	private String uID;

	@Column(name = "memID", nullable = false)
	private int memID;

	@Column(name = "user_pw", nullable = false)
	private String user_pw;

	@Column(name = "activity", nullable = false)
	private int activity;

	public User() {
		super();
	}

	public User(String uID, int memID, String user_pw, int activity) {
		super();
		this.uID = uID;
		this.memID = memID;
		this.user_pw = user_pw;
		this.activity = activity;
	}

	public String getuID() {
		return uID;
	}

	public void setuID(String uID) {
		this.uID = uID;
	}

	public int getMemID() {
		return memID;
	}

	public void setMemID(int memID) {
		this.memID = memID;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}

	@Override
	public String toString() {
		return "User [uID=" + uID + ", memID=" + memID + ", user_pw=" + user_pw
				+ ", activity=" + activity + "]";
	}

}
