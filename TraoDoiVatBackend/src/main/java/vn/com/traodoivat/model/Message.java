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
@Table(name = "message")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class Message {
	@Id
	@Column(name = "messID", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int mesID;

	@Column(name = "sender", nullable = false)
	private int sender;

	@Column(name = "receiver", nullable = false)
	private int receiver;

	@Column(name = "sendTime", nullable = false)
	private Date sendTime;

	@Column(name = "content", nullable = false)
	private String content;

	@Column(name = "status", nullable = true)
	private int status;

	public Message() {
		super();
	}

	public Message(int sender, int receiver, Date sendTime, String content,
			int status) {
		super();
		this.sender = sender;
		this.receiver = receiver;
		this.sendTime = sendTime;
		this.content = content;
		this.status = status;
	}

	public Message(int mesID, int sender, int receiver, Date sendTime,
			String content, int status) {
		super();
		this.mesID = mesID;
		this.sender = sender;
		this.receiver = receiver;
		this.sendTime = sendTime;
		this.content = content;
		this.status = status;
	}

	public int getMesID() {
		return mesID;
	}

	public void setMesID(int mesID) {
		this.mesID = mesID;
	}

	public int getSender() {
		return sender;
	}

	public void setSender(int sender) {
		this.sender = sender;
	}

	public int getReceiver() {
		return receiver;
	}

	public void setReceiver(int receiver) {
		this.receiver = receiver;
	}

	public Date getSendTime() {
		return sendTime;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Message [mesID=" + mesID + ", sender=" + sender + ", receiver="
				+ receiver + ", sendTime=" + sendTime + ", content=" + content
				+ ", status=" + status + "]";
	}

}
