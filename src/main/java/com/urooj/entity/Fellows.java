package com.urooj.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="Fellows")
public class Fellows {
	
	@Id
	@Column(name="fellowid")
	private int fellowId;
	
	@Column(name="fname")
	private String fName;
	
	@Column(name="batch")
	private int batch;
	
	@Lob
	@Column(name="picture")
	private byte[] picture;
	
	@Column(name="Bio", columnDefinition = "text")
	private String Bio;

	public int getFellowId() {
		return fellowId;
	}

	public void setFellowId(int fellowId) {
		this.fellowId = fellowId;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public int getBatch() {
		return batch;
	}

	public void setBatch(int batch) {
		this.batch = batch;
	}

	public byte[] getPicture() {
		return picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

	public String getBio() {
		return Bio;
	}

	public void setBio(String bio) {
		Bio = bio;
	}
	
	

}
