package com.douzone.jblog.vo;

public class SiteVo {
	private Long USER_NO;
	private String TITLE;
	private String LOGO;
	public Long getUSER_NO() {
		return USER_NO;
	}
	public void setUSER_NO(Long uSER_NO) {
		USER_NO = uSER_NO;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getLOGO() {
		return LOGO;
	}
	public void setLOGO(String lOGO) {
		LOGO = lOGO;
	}
	@Override
	public String toString() {
		return "SiteVo [USER_NO=" + USER_NO + ", TITLE=" + TITLE + ", LOGO=" + LOGO + "]";
	}
	
}
