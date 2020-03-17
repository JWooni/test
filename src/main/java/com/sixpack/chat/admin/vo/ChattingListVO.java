package com.sixpack.chat.admin.vo;

public class ChattingListVO {
	
	private String chatlistSeq;
	private String phoneNo;
	private String csGroup;
	private String userName;
	private String empId;
	private int ans;
	private String regDate;
	
	/*페이징관련*/
	private int pageNo;
	private int searchCount;
	private String searchInput;
	private String search;
	public String getChatlistSeq() {
		return chatlistSeq;
	}
	public void setChatlistSeq(String chatlistSeq) {
		this.chatlistSeq = chatlistSeq;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getCsGroup() {
		return csGroup;
	}
	public void setCsGroup(String csGroup) {
		this.csGroup = csGroup;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public int getAns() {
		return ans;
	}
	public void setAns(int ans) {
		this.ans = ans;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getSearchCount() {
		return searchCount;
	}
	public void setSearchCount(int searchCount) {
		this.searchCount = searchCount;
	}
	public String getSearchInput() {
		return searchInput;
	}
	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	

}
