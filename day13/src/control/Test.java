package control;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int totalPage = 0;
		int cntPerPage=3;//1페이지별 3건씩 보여준다
		int totalCount;
		for(totalCount = 1; totalCount<=90; totalCount++) {
			totalPage = (int)Math.ceil((double)totalCount/ cntPerPage);
		//	System.out.println("총목록수=" + totalCount + ":" +"총페이지수="+ totalPage);
		}
		int currentPage = 1;
		int cntPerPageGroup=5; //페이지그룹별 5페이지씩 보여준다		
		int startPage = 1;
		int endPage = 1;	
		//currentPage    startPage  endPage
		// 1               1         5
		// 2               1         5
		// 3               1         5
		// 4               1         5
		// 5               1         5
		// 6               6
		
		totalPage = 13;
		for(currentPage = 1; currentPage<=13; currentPage++) {
		
			startPage = (int)Math.floor((double)(currentPage)/(cntPerPageGroup+1))*cntPerPageGroup+1;   //currentPage/cntPerPageGroup*cntPerPageGroup+1;
			endPage = startPage+cntPerPageGroup-1;
			if(endPage > totalPage) {
				endPage = totalPage;
			}
			System.out.println(currentPage +":" + startPage +":" + endPage);
		}
	}

}
