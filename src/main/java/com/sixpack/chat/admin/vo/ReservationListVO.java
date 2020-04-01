package com.sixpack.chat.admin.vo;

import java.sql.Date;

public class ReservationListVO {
	private int resSeq;
	private String phoneNo;
	private String userName; 
	private Date resDate;
	private String prodCategory;
	private String empID;  
	private String resAnsDate; 
	private String ansType; 
	private String userComment;
	private String empComment; 
	private String empMemo;
	
	
	public int getResSeq() {
		return resSeq;
	}
	public void setResSeq(int resSeq) {
		this.resSeq = resSeq;
	}
	
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getProdCategory() {
		return prodCategory;
	}
	public void setProdCategory(String prodCategory) {
		this.prodCategory = prodCategory;
	}
	
	
	public String getAnsType() {
		return ansType;
	}
	public void setAnsType(String ansType) {
		this.ansType = ansType;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	public String getResAnsDate() {
		return resAnsDate;
	}
	public void setResAnsDate(String resAnsDate) {
		this.resAnsDate = resAnsDate;
	}
	public String getUserComment() {
		return userComment;
	}
	public void setUserComment(String userComment) {
		this.userComment = userComment;
	}
	public String getEmpComment() {
		return empComment;
	}
	public void setEmpComment(String empComment) {
		this.empComment = empComment;
	}
	public String getEmpMemo() {
		return empMemo;
	}
	public void setEmpMemo(String empMemo) {
		this.empMemo = empMemo;
	}
	public String getEmpID() {
		return empID;
	}
	public void setEmpID(String empID) {
		this.empID = empID;
	}


	
}
