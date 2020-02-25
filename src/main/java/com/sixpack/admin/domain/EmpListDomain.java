package com.sixpack.admin.domain;

public class EmpListDomain {

	private int empSeq, empLevel;
	private String empId, empPwd, empName, empRank, empArea, joinDate, empCategory;
	
	public int getEmpSeq() {
		return empSeq;
	}
	public void setEmpSeq(int empSeq) {
		this.empSeq = empSeq;
	}
	public int getEmpLevel() {
		return empLevel;
	}
	public void setEmpLevel(int empLevel) {
		this.empLevel = empLevel;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpPwd() {
		return empPwd;
	}
	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpRank() {
		return empRank;
	}
	public void setEmpRank(String empRank) {
		this.empRank = empRank;
	}
	public String getEmpArea() {
		return empArea;
	}
	public void setEmpArea(String empArea) {
		this.empArea = empArea;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getEmpCategory() {
		return empCategory;
	}
	public void setEmpCategory(String empCategory) {
		this.empCategory = empCategory;
	}
	@Override
	public String toString() {
		return "EmpListDomain [empSeq=" + empSeq + ", empLevel=" + empLevel + ", empId=" + empId + ", empPwd=" + empPwd
				+ ", empName=" + empName + ", empRank=" + empRank + ", empArea=" + empArea + ", joinDate=" + joinDate
				+ ", empCategory=" + empCategory + "]";
	}
	

	
} // class
