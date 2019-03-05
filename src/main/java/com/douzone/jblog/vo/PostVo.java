package com.douzone.jblog.vo;

public class PostVo {
	private Long NO;
	private String TITLE;
	private String CONTENT;
	private String REG_DATE;
	private Long CATEGORY_NO;
	public Long getNO() {
		return NO;
	}
	public void setNO(Long nO) {
		NO = nO;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getREG_DATE() {
		return REG_DATE;
	}
	public void setREG_DATE(String rEG_DATE) {
		REG_DATE = rEG_DATE;
	}
	public Long getCATEGORY_NO() {
		return CATEGORY_NO;
	}
	public void setCATEGORY_NO(Long cATEGORY_NO) {
		CATEGORY_NO = cATEGORY_NO;
	}
	@Override
	public String toString() {
		return "PostVo [NO=" + NO + ", TITLE=" + TITLE + ", CONTENT=" + CONTENT + ", REG_DATE=" + REG_DATE
				+ ", CATEGORY_NO=" + CATEGORY_NO + "]";
	}
	
}
