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
@Table(name = "post")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Post {

	@Id
	@Column(name = "pID", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pID;

	@Column(name = "memID", nullable = false)
	private int memID;

	@Column(name = "childID", nullable = false)
	private int childID;

	@Column(name = "tittle", nullable = false)
	private String title;

	@Column(name = "content", nullable = false)
	private String content;

	@Column(name = "postTime", nullable = false)
	private Date postTime;

	@Column(name = "pstatus", nullable = true)
	private int pstatus;

	@Column(name = "cost", nullable = false)
	private double cost;

	@Column(name = "starRate", nullable = true)
	private int starRate;

	@Column(name = "likeCount", nullable = true)
	private int likeCount;

	@Column(name = "zoneID", nullable = true)
	private int zoneID;

	@Column(name = "stickOrder", nullable = true)
	private int stickOrder;

	@Column(name = "activity", nullable = false)
	private int activity;

	public Post() {
		super();
	}

	public Post(int memID, int childID, String title, String content,
			Date postTime, int pstatus, double cost, int starRate,
			int likeCount, int zoneID, int stickOrder, int activity) {
		super();
		this.memID = memID;
		this.childID = childID;
		this.title = title;
		this.content = content;
		this.postTime = postTime;
		this.pstatus = pstatus;
		this.cost = cost;
		this.starRate = starRate;
		this.likeCount = likeCount;
		this.zoneID = zoneID;
		this.stickOrder = stickOrder;
		this.activity = activity;
	}

	public Post(int pID, int memID, int childID, String title, String content,
			Date postTime, int pstatus, double cost, int starRate,
			int likeCount, int zoneID, int stickOrder, int activity) {
		super();
		this.pID = pID;
		this.memID = memID;
		this.childID = childID;
		this.title = title;
		this.content = content;
		this.postTime = postTime;
		this.pstatus = pstatus;
		this.cost = cost;
		this.starRate = starRate;
		this.likeCount = likeCount;
		this.zoneID = zoneID;
		this.stickOrder = stickOrder;
		this.activity = activity;
	}

	public int getpID() {
		return pID;
	}

	public void setpID(int pID) {
		this.pID = pID;
	}

	public int getMemID() {
		return memID;
	}

	public void setMemID(int memID) {
		this.memID = memID;
	}

	public int getChildID() {
		return childID;
	}

	public void setChildID(int childID) {
		this.childID = childID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPostTime() {
		return postTime;
	}

	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}

	public int getPstatus() {
		return pstatus;
	}

	public void setPstatus(int pstatus) {
		this.pstatus = pstatus;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getStarRate() {
		return starRate;
	}

	public void setStarRate(int starRate) {
		this.starRate = starRate;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public int getZoneID() {
		return zoneID;
	}

	public void setZoneID(int zoneID) {
		this.zoneID = zoneID;
	}

	public int getStickOrder() {
		return stickOrder;
	}

	public void setStickOrder(int stickOrder) {
		this.stickOrder = stickOrder;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}

	@Override
	public String toString() {
		return "Post [pID=" + pID + ", memID=" + memID + ", childID=" + childID
				+ ", title=" + title + ", content=" + content + ", postTime="
				+ postTime + ", pstatus=" + pstatus + ", cost=" + cost
				+ ", starRate=" + starRate + ", likeCount=" + likeCount
				+ ", zoneID=" + zoneID + ", stickOrder=" + stickOrder
				+ ", activity=" + activity + "]";
	}

}
