package com.bean;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dbo.TblCaterers")
public class TblCaterers implements Serializable {
       @Id
       @GeneratedValue(strategy=GenerationType.AUTO)
	   private Long  caterersId;
	   private String name;
	   private String email;
	   private String password;
	   private Long  contactNumber;
	   private String address;
	   private int isActive;


	public TblCaterers() {
		super();
	}
	public TblCaterers(Long caterersId, String name, String email, String password, Long contactNumber, String address,
			int isActive) {
		super();
		this.caterersId = caterersId;
		this.name = name;
		this.email = email;
		this.password = password;
		this.contactNumber = contactNumber;
		this.address = address;
		this.isActive = isActive;
	}
	public Long getCaterersId() {
		return caterersId;
	}
	public void setCaterersId(Long caterersId) {
		this.caterersId = caterersId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(Long contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}



}
