package vn.com.traodoivat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "submenu")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Submenu {

	@Id
	@Column(name = "sid", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sId;

	@Column(name = "mID", nullable = false)
	private int mId;

	@Column(name = "name", nullable = true)
	private String name;

	@Column(name = "activity", nullable = false)
	private int activity;

	public Submenu() {
		super();
	}

	public Submenu(int mId, String name, int activity) {
		super();
		this.mId = mId;
		this.name = name;
		this.activity = activity;
	}

	public Submenu(int sId, int mId, String name, int activity) {
		super();
		this.sId = sId;
		this.mId = mId;
		this.name = name;
		this.activity = activity;
	}

	public int getsId() {
		return sId;
	}

	public void setsId(int sId) {
		this.sId = sId;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
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
		return "Submenu [sId=" + sId + ", mId=" + mId + ", name=" + name
				+ ", activity=" + activity + "]";
	}

}
