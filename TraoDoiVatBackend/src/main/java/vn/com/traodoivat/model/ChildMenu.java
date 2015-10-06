package vn.com.traodoivat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "childmenu")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class ChildMenu {

	@Id
	@Column(name = "cid", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cId;

	@Column(name = "sID", nullable = false)
	private int sID;

	@Column(name = "name", nullable = true)
	private String name;

	@Column(name = "activity")
	private int activity;

	public ChildMenu() {
		super();
	}

	public ChildMenu(int sID, String name, int activity) {
		super();
		this.sID = sID;
		this.name = name;
		this.activity = activity;
	}

	public ChildMenu(int cId, int sID, String name, int activity) {
		super();
		this.cId = cId;
		this.sID = sID;
		this.name = name;
		this.activity = activity;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public int getsID() {
		return sID;
	}

	public void setsID(int sID) {
		this.sID = sID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}

	@Override
	public String toString() {
		return "ChildMenu [cId=" + cId + ", sID=" + sID + ", name=" + name
				+ ", activity=" + activity + "]";
	}

}
