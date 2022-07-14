package com.database;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class class_subject {
	@Id
	@GeneratedValue (strategy=GenerationType.TABLE)
	@Column(name="id")
	private int id;
	
	private int subjectId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subject_id) {
		this.subjectId = subject_id;
	}

}
