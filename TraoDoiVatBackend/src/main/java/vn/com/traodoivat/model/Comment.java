package vn.com.traodoivat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "comment")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Comment {

	@Id
	@Column(name = "comID", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int comID;

	@Column(name = "postID", nullable = false)
	private int postID;

	@Column(name = "memID", nullable = false)
	private int memID;

	@Column(name = "content", nullable = false)
	private int content;

	@Column(name = "likeCount", nullable = true)
	private int likeCount;

	@Column(name = "activity", nullable = false)
	private int activity;

	public Comment() {
		super();
	}

	public Comment(int postID, int memID, int content, int likeCount,
			int activity) {
		super();
		this.postID = postID;
		this.memID = memID;
		this.content = content;
		this.likeCount = likeCount;
		this.activity = activity;
	}

	public Comment(int comID, int postID, int memID, int content,
			int likeCount, int activity) {
		super();
		this.comID = comID;
		this.postID = postID;
		this.memID = memID;
		this.content = content;
		this.likeCount = likeCount;
		this.activity = activity;
	}

	public int getComID() {
		return comID;
	}

	public void setComID(int comID) {
		this.comID = comID;
	}

	public int getPostID() {
		return postID;
	}

	public void setPostID(int postID) {
		this.postID = postID;
	}

	public int getMemID() {
		return memID;
	}

	public void setMemID(int memID) {
		this.memID = memID;
	}

	public int getContent() {
		return content;
	}

	public void setContent(int content) {
		this.content = content;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}

	@Override
	public String toString() {
		return "Comment [comID=" + comID + ", postID=" + postID + ", memID="
				+ memID + ", content=" + content + ", likeCount=" + likeCount
				+ ", activity=" + activity + "]";
	}

}
