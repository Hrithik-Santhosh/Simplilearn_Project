package com.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table(name="subject")

public class Subject {
	@Id
	@GeneratedValue (strategy=GenerationType.TABLE)
	@Column(name="subjectId")
	private int subjectId;
	
	@Column(name="subjectName")
	private String subjectName;
	
	public Subject() {
		
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

}
