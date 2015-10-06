package vn.com.traodoivat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "menu")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Menu {

	@Id
	@Column(name = "mID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int mID;

	@Column(name = "menuName", nullable = false)
	private String menuName;

	@Column(name = "orderNo", nullable = true)
	private int orderNo;

	@Column(name = "activity", nullable = false)
	private int activity;

	public Menu() {
		super();
	}

	public Menu(String menuName, int orderNo, int activity) {
		super();
		this.menuName = menuName;
		this.orderNo = orderNo;
		this.activity = activity;
	}

	public Menu(int mID, String menuName, int orderNo, int activity) {
		super();
		this.mID = mID;
		this.menuName = menuName;
		this.orderNo = orderNo;
		this.activity = activity;
	}

	public int getmID() {
		return mID;
	}

	public void setmID(int mID) {
		this.mID = mID;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}

	@Override
	public String toString() {
		return "Menu [mID=" + mID + ", menuName=" + menuName + ", orderNo="
				+ orderNo + ", activity=" + activity + "]";
	}

}
