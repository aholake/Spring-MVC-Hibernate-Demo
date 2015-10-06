package vn.com.traodoivat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "report")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Report {

	@Id
	@Column(name = "repID", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int repID;

	@Column(name = "reporter", nullable = false)
	private int reporter;

	@Column(name = "repMem", nullable = false)
	private int repMem;

	@Column(name = "repPost", nullable = false)
	private int repPost;

	@Column(name = "reason", nullable = false)
	private String reason;

	public Report() {
		super();
	}

	public Report(int reporter, int repMem, int repPost, String reason) {
		super();
		this.reporter = reporter;
		this.repMem = repMem;
		this.repPost = repPost;
		this.reason = reason;
	}

	public Report(int repID, int reporter, int repMem, int repPost,
			String reason) {
		super();
		this.repID = repID;
		this.reporter = reporter;
		this.repMem = repMem;
		this.repPost = repPost;
		this.reason = reason;
	}

	public int getRepID() {
		return repID;
	}

	public void setRepID(int repID) {
		this.repID = repID;
	}

	public int getReporter() {
		return reporter;
	}

	public void setReporter(int reporter) {
		this.reporter = reporter;
	}

	public int getRepMem() {
		return repMem;
	}

	public void setRepMem(int repMem) {
		this.repMem = repMem;
	}

	public int getRepPost() {
		return repPost;
	}

	public void setRepPost(int repPost) {
		this.repPost = repPost;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	@Override
	public String toString() {
		return "Report [repID=" + repID + ", reporter=" + reporter
				+ ", repMem=" + repMem + ", repPost=" + repPost + ", reason="
				+ reason + "]";
	}

}
