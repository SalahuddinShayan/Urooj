package com.urooj.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Staff")
public class Staff {
	
	@Id
	@Column(name="AuthorId")
	private int AuthorId;
	
	@Column(name="AuthorName")
	private String AuthorName;
	
	@Column(name="Password")
	private String Password;
	
	@Column(name="Staffpic")
	private String Staffpic;

	public int getAuthorId() {
		return AuthorId;
	}

	public void setAuthorId(int authorId) {
		AuthorId = authorId;
	}

	public String getAuthorName() {
		return AuthorName;
	}

	public void setAuthorName(String authorName) {
		AuthorName = authorName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getStaffpic() {
		return Staffpic;
	}

	public void setStaffpic(String staffpic) {
		Staffpic = staffpic;
	}

		
	
}
