package com.sixpack.chat.admin.service;

import org.springframework.stereotype.Component;

@Component
public class IndexService {

			public int pageScale() {
				int pageScale = 10;

				return pageScale;
			}

			public int totalPage(int totalCount) {
				int totalPage = totalCount / pageScale();
				if (totalCount % pageScale() != 0) {
					totalPage++;
				}

				return totalPage;
			}

			public int startNum(int currentPage) {
				int startNum = 1;
				startNum = currentPage * pageScale() - pageScale() + 1;
				return startNum;
			}

			public int endNum(int startNum) {
				int endNum = startNum + pageScale() - 1;

				return endNum;
			}
			
			/**
			 * �ε��� ����Ʈ [ << ] ... [1][2][3] ... [ >> ]
			 * 
			 * @param current_page
			 * @param total_page
			 * @param list_url
			 * @return
			 */
			public String indexList(int current_page, int total_page, String list_url) {
				int pagenumber;
				int startpage; 
				int endpage; 
				int curpage; 

				String strList = ""; 
				pagenumber = 10; 

				startpage = ((current_page - 1) / pagenumber) * pagenumber + 1;

				endpage = (((startpage - 1) + pagenumber) / pagenumber) * pagenumber;



				if (total_page <= endpage) {
					endpage = total_page;
				} // end if

				if (current_page > pagenumber) {
					curpage = startpage - 1; 
					strList = strList + "<li class='page-item'><a class='page-link' href=" + list_url + "?currentPage=" + curpage + ">Prev</a></li>";
				} else {
					strList = strList + "<li class='page-item'><a class='page-link' href='#'>Prev</a></li>";
					
				}

				curpage = startpage;

				while (curpage <= endpage) {
					if (curpage == current_page) {
						strList = strList + "<li class='page-item active'><a class='page-link' href='#'>"+current_page+"</a>";
					} else {
						strList = strList + "<li class='page-item'><a class='page-link' href=" + list_url + "?currentPage="+curpage+">"+curpage+"</a></li>";
					} // end else

					curpage++;
				} // end while

				if (total_page > endpage) {
					curpage = endpage + 1;
					strList = strList + "<li class='page-item'><a class='page-link' href="+list_url+"?currentPage="+curpage+">Next</a></li>";
				} else {
					strList = strList + "<li class='page-item'><a class='page-link' href='#'>Next</a></li>";
				} // end else

				return strList;
			}// indexList	
	
}
