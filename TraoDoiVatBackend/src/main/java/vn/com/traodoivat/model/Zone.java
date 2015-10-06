package vn.com.traodoivat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "zone")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Zone {

	@Id
	@Column(name = "zoneID", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int zoneID;

	@Column(name = "city", nullable = false)
	private String city;

	@Column(name = "district", nullable = true)
	private String district;

	@Column(name = "activity", nullable = false)
	private int activity;

	public Zone() {
		super();
	}

	public Zone(String city, String district, int activity) {
		super();
		this.city = city;
		this.district = district;
		this.activity = activity;
	}

	public Zone(int zoneID, String city, String district, int activity) {
		super();
		this.zoneID = zoneID;
		this.city = city;
		this.district = district;
		this.activity = activity;
	}

	public int getZoneID() {
		return zoneID;
	}

	public void setZoneID(int zoneID) {
		this.zoneID = zoneID;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}

	@Override
	public String toString() {
		return "Zone [zoneID=" + zoneID + ", city=" + city + ", district="
				+ district + ", activity=" + activity + "]";
	}

}
