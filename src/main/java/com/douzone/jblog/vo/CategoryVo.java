package com.douzone.jblog.vo;

public class CategoryVo {
	private Long NO;
	private String NAME;
	private String DESCRIPTION;
	private String REG_DATE;
	private Long USER_NO;
	public Long getNO() {
		return NO;
	}
	public void setNO(Long nO) {
		NO = nO;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	public String getREG_DATE() {
		return REG_DATE;
	}
	public void setREG_DATE(String rEG_DATE) {
		REG_DATE = rEG_DATE;
	}
	public Long getUSER_NO() {
		return USER_NO;
	}
	public void setUSER_NO(Long uSER_NO) {
		USER_NO = uSER_NO;
	}
	@Override
	public String toString() {
		return "CategoryVo [NO=" + NO + ", NAME=" + NAME + ", DESCRIPTION=" + DESCRIPTION + ", REG_DATE=" + REG_DATE
				+ ", USER_NO=" + USER_NO + "]";
	}
	
}
