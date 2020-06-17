package kr.co.travel2.domain;

import java.util.List;

public class PageTO {
	private int curPage = 1;// 현재페이지
	private int perPage = 10;// 한페이지에 표시되는 게시글수
	private int pageLine = 10;// 페이지를 몇개 보여줄지 정함.
	private int amount; // 게시글 전체의 총갯수
	private int totalPage; // 페이지 총 갯수
	private int startNum; // 오라클 rownum 시작 curPage 종속
	private int endNum; // 오라클 rownum 끝 curPage 종속
	private int beginPageNum; // 페이징 시작 번호 curPage 종속
	private int stopPageNum; // 페이징 끝 번호 curPage 종속

	private List<BoardDTO> list;
	
	public PageTO() {
		changeVarVal();
	}

	public PageTO(int curPage) {
		super();
		this.curPage = curPage;
		changeVarVal();
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
		changeVarVal();
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
		changeVarVal();
	}
	public int getPageLine() {
		return pageLine;
	}
	public void setPageLine(int pageLine) {
		this.pageLine = pageLine;
		changeVarVal();
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
		changeVarVal();
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getBeginPageNum() {
		return beginPageNum;
	}
	public void setBeginPageNum(int beginPageNum) {
		this.beginPageNum = beginPageNum;
	}
	public int getStopPageNum() {
		return stopPageNum;
	}
	public void setStopPageNum(int stopPageNum) {
		this.stopPageNum = stopPageNum;
	}
	public List<BoardDTO> getList() {
		return list;
	}
	public void setList(List<BoardDTO> list) {
		this.list = list;
	}

	private void changeVarVal() {
		totalPage = amount/perPage;
		if(amount % perPage != 0) {
			totalPage = totalPage + 1;
		}
		
		startNum = (curPage - 1) * perPage + 1;
		endNum = curPage * perPage;
		if(endNum > amount) {
			endNum = amount;
		}
		
		beginPageNum = ((curPage - 1) / pageLine) * pageLine + 1;
		stopPageNum = beginPageNum + (pageLine - 1);
		if(stopPageNum > totalPage) {
			stopPageNum = totalPage;
		}
	}	
}