package com.sixpack.chat.admin.vo;

public class FileVO {

	private int fileSeq;
	private String fileName;
	private String filePath;
	private String fileDate;
	private String originalFileName;
	private int empSeq;
	
	public int getFileSeq() {
		return fileSeq;
	}
	public void setFileSeq(int fileSeq) {
		this.fileSeq = fileSeq;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileDate() {
		return fileDate;
	}
	public void setFileDate(String fileDate) {
		this.fileDate = fileDate;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public int getEmpSeq() {
		return empSeq;
	}
	public void setEmpSeq(int empSeq) {
		this.empSeq = empSeq;
	}
	@Override
	public String toString() {
		return "FileVO [fileSeq=" + fileSeq + ", fileName=" + fileName + ", filePath=" + filePath + ", fileDate="
				+ fileDate + ", originalFileName=" + originalFileName + ", empSeq=" + empSeq + "]";
	}
	
} // class
