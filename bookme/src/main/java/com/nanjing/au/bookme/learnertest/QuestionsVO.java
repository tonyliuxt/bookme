package com.nanjing.au.bookme.learnertest;

/**
 * Question items
 * @author Gordon
 */
public class QuestionsVO {
	
	private Integer id;

	private String ctitle;
	private String etitle;
	
	private String[] coptions;
	private String[] eoptions;

	private String cinstruction;
	private String einstruction;
	
	private Integer answer;

	private String imgpath;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getEtitle() {
		return etitle;
	}

	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}

	public String[] getCoptions() {
		return coptions;
	}

	public void setCoptions(String[] coptions) {
		this.coptions = coptions;
	}

	public String[] getEoptions() {
		return eoptions;
	}

	public void setEoptions(String[] eoptions) {
		this.eoptions = eoptions;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getCinstruction() {
		return cinstruction;
	}

	public void setCinstruction(String cinstruction) {
		this.cinstruction = cinstruction;
	}

	public String getEinstruction() {
		return einstruction;
	}

	public void setEinstruction(String einstruction) {
		this.einstruction = einstruction;
	}

	public Integer getAnswer() {
		return answer;
	}

	public void setAnswer(Integer answer) {
		this.answer = answer;
	}

}
