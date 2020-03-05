package RESERVATION_LIST;

import java.sql.Date;

public class ReservationListDTO {
	int resSeq;
	String phoneNo;
	String userName;
	Date resDate;
	String prodCategory;
	String empID;
	Date resAnsDate;
	String ansType;
	String userComment;
	String empComment;
	String empMemo;
	public int getResSeq() {
		return resSeq;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public String getUserName() {
		return userName;
	}
	public Date getResDate() {
		return resDate;
	}
	public String getProdCategory() {
		return prodCategory;
	}
	public String getEmpID() {
		return empID;
	}
	public Date getResAnsDate() {
		return resAnsDate;
	}
	public String getAnsType() {
		return ansType;
	}
	public String getUserComment() {
		return userComment;
	}
	public String getEmpComment() {
		return empComment;
	}
	public String getEmpMemo() {
		return empMemo;
	}	
	
	
}
