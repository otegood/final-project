package com.withmong.model;

public class Pagination {

	private int totalPages;
	private int totalBlocks;
	
	private int block;
	private int beginPage;
	private int endPage;
	
	public Pagination(int rows, int pages, int pageNo, int totalRows) {
		
		this.totalPages = (int)Math.ceil((double)totalRows/rows);
		this.totalBlocks = (int)Math.ceil((double)totalPages/pages);

		this.block = (int)Math.ceil((double)pageNo/pages);
		this.beginPage = (block - 1)*pages + 1;
		this.endPage = block*pages;
		if (block == totalBlocks) {
			endPage = totalPages;
		}
	}

	public int getTotalPages() {
		return totalPages;
	}

	public int getTotalBlocks() {
		return totalBlocks;
	}

	public int getBlock() {
		return block;
	}

	public int getBeginPage() {
		return beginPage;
	}

	public int getEndPage() {
		return endPage;
	}
}
