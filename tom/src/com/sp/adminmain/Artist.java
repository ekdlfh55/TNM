package com.sp.adminmain;

import org.springframework.web.multipart.MultipartFile;

public class Artist {
	private int artistNum, listNum;
	private String userId, artistName, date, type, sosoksa, imageFilename, birth, sosang;
	private MultipartFile upload;
	

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
	public String getArtistName() {
		return artistName;
	}
	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSosoksa() {
		return sosoksa;
	}
	public void setSosoksa(String sosoksa) {
		this.sosoksa = sosoksa;
	}
	public String getImageFilename() {
		return imageFilename;
	}
	public void setImageFilename(String imageFilename) {
		this.imageFilename = imageFilename;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public String getSosang() {
		return sosang;
	}
	public void setSosang(String sosang) {
		this.sosang = sosang;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getArtistNum() {
		return artistNum;
	}
	public void setArtistNum(int artistNum) {
		this.artistNum = artistNum;
	}


}
