package com.sp.adminmain;

import org.springframework.web.multipart.MultipartFile;

public class Event {
	private int eventNum, listNum;
	private String userId, subject, content, eventFilename;
	private String createdstart, createdend,division;
	private MultipartFile  upload;

	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public int getEventNum() {
		return eventNum;
	}
	public void setEventNum(int eventNum) {
		this.eventNum = eventNum;
	}
	public int getListNum() {
		return listNum;
	}
	public void setListNum(int listNum) {
		this.listNum = listNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEventFilename() {
		return eventFilename;
	}
	public void setEventFilename(String eventFilename) {
		this.eventFilename = eventFilename;
	}
	public String getCreatedstart() {
		return createdstart;
	}
	public void setCreatedstart(String createdstart) {
		this.createdstart = createdstart;
	}
	public String getCreatedend() {
		return createdend;
	}
	public void setCreatedend(String createdend) {
		this.createdend = createdend;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}

}