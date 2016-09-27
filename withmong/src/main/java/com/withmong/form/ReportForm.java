package com.withmong.form;


public class ReportForm {

	private String contents;
	private String reason;
	private String reporter;
	private String suspect;
	
	public ReportForm() {}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getReporter() {
		return reporter;
	}

	public void setReporter(String reporter) {
		this.reporter = reporter;
	}

	public String getSuspect() {
		return suspect;
	}

	public void setSuspect(String suspect) {
		this.suspect = suspect;
	}

	@Override
	public String toString() {
		return "ReportForm [contents=" + contents + ", reason=" + reason + ", reporter=" + reporter + ", suspect="
				+ suspect + "]";
	}
	
	
	
}
