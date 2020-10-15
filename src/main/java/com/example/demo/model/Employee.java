package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int eid;
	@Column
	private String ename;
	@Column
	private String techicalSkill;
	@Column
	private String email;
	@Column
	private String location;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getTechicalSkill() {
		return techicalSkill;
	}

	public void setTechicalSkill(String techicalSkill) {
		this.techicalSkill = techicalSkill;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", techicalSkill=" + techicalSkill + ", email=" + email
				+ ", location=" + location + "]";
	}

}
