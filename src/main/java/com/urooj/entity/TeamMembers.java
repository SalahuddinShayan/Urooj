package com.urooj.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Team_Members")
public class TeamMembers {
	
	@Id
	@Column(name="Member_Id")
	private int MemberId;
	
	@Column(name="Member_Name")
	private String MemberName;
	
	@Column(name="Position")
	private String Position;
	
	@Column(name="Picture")
	private String Picture;
	
	@Column(name="Password")
	private String Password;
	
	@Column(name="Bio", columnDefinition = "text")
	private String Bio;

	

	public int getMemberId() {
		return MemberId;
	}

	public void setMemberId(int memberId) {
		MemberId = memberId;
	}

	public String getMemberName() {
		return MemberName;
	}

	public void setMemberName(String memberName) {
		MemberName = memberName;
	}

	public String getPosition() {
		return Position;
	}

	public void setPosition(String position) {
		Position = position;
	}

	public String getPicture() {
		return Picture;
	}

	public void setPicture(String picture) {
		Picture = picture;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getBio() {
		return Bio;
	}

	public void setBio(String bio) {
		Bio = bio;
	}
	
	

}
