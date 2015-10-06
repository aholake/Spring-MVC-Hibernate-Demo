package vn.com.traodoivat.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "member")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Member {
	@Id
	@Column(name = "memID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int memID;

	@Column(name = "name", nullable = true)
	private String name;

	@Column(name = "birthday", nullable = true)
	private Date birthday;

	@Column(name = "sex", nullable = true)
	private int sex;

	@Column(name = "phone", nullable = true)
	private String phone;

	@Column(name = "avatar", nullable = true)
	private String avatar;

	@Column(name = "email", nullable = true)
	private String email;

	@Column(name = "address", nullable = true)
	private String address;

	@Column(name = "star", nullable = true)
	private int star;

	@Column(name = "joindate", nullable = true)
	private Date joinDate;

	@Column(name = "intrduce", nullable = true)
	private String introduce;

	@Column(name = "activity", nullable = false)
	private int activity;

	public Member() {
		super();
	}

	public Member(String name, Date birthday, int sex, String phone,
			String avatar, String email, String address, int star,
			Date joinDate, String introduce, int activity) {
		super();
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
		this.phone = phone;
		this.avatar = avatar;
		this.email = email;
		this.address = address;
		this.star = star;
		this.joinDate = joinDate;
		this.introduce = introduce;
		this.activity = activity;
	}

	public Member(int memID, String name, Date birthday, int sex, String phone,
			String avatar, String email, String address, int star,
			Date joinDate, String introduce, int activity) {
		super();
		this.memID = memID;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
		this.phone = phone;
		this.avatar = avatar;
		this.email = email;
		this.address = address;
		this.star = star;
		this.joinDate = joinDate;
		this.introduce = introduce;
		this.activity = activity;
	}

	public int getMemID() {
		return memID;
	}

	public void setMemID(int memID) {
		this.memID = memID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}

	@Override
	public String toString() {
		return "Member [memID=" + memID + ", name=" + name + ", birthday="
				+ birthday + ", sex=" + sex + ", phone=" + phone + ", avatar="
				+ avatar + ", email=" + email + ", address=" + address
				+ ", star=" + star + ", joinDate=" + joinDate + ", introduce="
				+ introduce + ", activity=" + activity + "]";
	}

}
