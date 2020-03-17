<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<body>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Username</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li><a href="empList.do"><em class="fa fa-dashboard">&nbsp;</em> 상담사 관리</a></li>
			<li><a href="contents.do"><em class="fa fa-calendar">&nbsp;</em> 콘텐츠 관리</a></li>
			<li><a href="chattingCounseling.do"><em class="fa fa-bar-chart">&nbsp;</em> 상담 관리</a></li>
			<li><a href="counselingList.do"><em class="glyphicon glyphicon-tags">&nbsp;</em>상담 내역</a></li>
			<li class="active"><a href="chattingList.do"><em class="fa fa-toggle-off">&nbsp;</em> 채팅 내역 관리</a></li>
			<li><a href="reservationList.do"><em class="fa fa-clone">&nbsp;</em> 예약 내역 관리</a></li>
			<li><a href="main.do"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    	<div class="row">
			<ol class="breadcrumb">
				<li><a href="empList.do">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">채팅 내역 관리</li>
			</ol>   
		</div><!--/.row-->		
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">콘텐츠 관리</h1>
			</div>
		</div>/.row -->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">채팅 리스트</div>
					<p style="color: #000000;">Total: <span id="count">${total}</span></p>					   	
        <div class="form-inline">
          <div class="col-xs-4" >

          </div>
          <div class="col-xs-4 col-xs-offset-4" style="margin-bottom: 22px;">
          	<form  id="searchForm" name="searchForm" method="post">
          	
          		<input type="hidden" id="pageNo" name="pageNo" value="${pageNo }">
          	
              <select class="form-control form-control-sm" name ="searchType" id="searchType">
              	<!-- <option value="Everything">전체</option> -->
                <option value="user">회원이름</option>
                <option value="emp">상담사이름</option>
                <option value="categori">상담카테고리</option>
              </select>
                <input type="text" class="form-control form-control-sm" name="keyword" id="keyword" style="height: 34px">
                <button class="btn btn-primary" style="color: white; margin-right: 0px;" onclick="javascript:selectListAction('chattingList.do');">검색</button>
            </form>
          </div>
        </div>
      <div class="row_in">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td>No</td>
                <td>회원이름</td>
                <td>상담사이름</td>
                <td>상담카테고리</td>
                <td>상담상태</td>
                <td>등록일</td>
              </tr>
            </thead>
            <tbody>
	            <c:choose>
						<c:when test="${fn:length(chattingservice) > 0}">
						 	<c:forEach var="list" items="${chattingservice}">
								<tr>
									<td style="width: 81px;">${list.chatlistSeq}</td>
									<td style = "cursor:pointer; width: 109px;" onClick = " location.href='http://localhost:8080/webProject/chattingListDetail.do?seq=${list.chatlistSeq }' ">${list.userName}</td>
									<td style="width: 81px;">${list.empId}</td>
									<td style="width: 654px;">${list.csGroup}</td>
									<td style="width: 153px;">${list.ans}</td>
									<td style="width: 160px;">${list.regDate}</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="6" class="com_table_board-info">
									검색결과가 없습니다.
								</td>
							</tr>
						</c:otherwise>
					</c:choose>
             
            </tbody>
          </table>
        </div>
        
        <!-- <a href="writecontent.do" style="float:right; margin-right:18px;" class="btn btn-primary">등록</a> -->
        
        <!-- pagination{s} -->
			<div id="paginationBox" style="padding-left: 140px">
				<ul class="pagination">
					<c:if test="${pagination.prev}">
						<li class="page-item"><a class="page-link"
							style="background: " href="#"
							onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
						</li>
					</c:if>
					<c:forEach begin="${pagination.startPage}"
						end="${pagination.endPage}" var="idx">
						<li
							class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
							<a class="page-link" style="background: " href="#"
							onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
								${idx} </a>
						</li>
					</c:forEach>
					<c:if test="${pagination.next}">
						<li class="page-item"><a class="page-link" href="#"
							style="background: "
							onClick="fn_next('${pagination.range}', 
						'${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
					</c:if>
				</ul>
			</div>
<!--pagination{e}  -->
        
        </div>
      </div>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/contents/contents.js"></script>      
  </body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
//이전 버튼 이벤트

  function fn_prev(page, range, rangeSize) {	//현재 목록의 페이지 번호,각 페이지의 시작 번호,페이지당 게시글 갯수 =10으로 초기화
  	var page = ((range - 2) * rangeSize) + 1;
  	var range = range - 1;
  	var url = "${pageContext.request.contextPath}/chattingList.do";

  	url = url + "?page=" + page;
  	url = url + "&range=" + range;

  	location.href = url;
  }
  //페이지 번호 클릭

  function fn_pagination(page, range, rangeSize, searchType, keyword) { 	//현재 목록의 페이지 번호,각 페이지의 시작 번호,페이지당 게시글 갯수 =10으로 초기화,게시글 검색 시 검색 타입 목록,검색 단어
  	var url = "${pageContext.request.contextPath}/chattingList.do";
  	url = url + "?page=" + page;
  	url = url + "&range=" + range;
  	location.href = url;	
  }

  //다음 버튼 이벤트
  function fn_next(page, range, rangeSize) {	//현재 목록의 페이지 번호,각 페이지의 시작 번호,페이지당 게시글 갯수 =10으로 초기화
  	var page = parseInt((range * rangeSize)) + 1;
  	var range = parseInt(range) + 1;
  	var url = "${pageContext.request.contextPath}/chattingList.do";

  	url = url + "?page=" + page;
  	url = url + "&range=" + range;
  	
  	location.href = url;
  }

  $(document).on('click', '#btnSearch', function(e){

  	e.preventDefault();

  	var url = "${pageContext.request.contextPath}/chattingList.do";
  	url = url + "?searchType=" + $('#searchType').val();
  	url = url + "&keyword=" + $('#keyword').val();
  	location.href = url;
  	console.log(url);

  });

  function selectListAction(page) {
		
	  var f = $("#searchForm");	  
	  console.log("f : " + $("#searchForm").serialize());
	  f.action = page;
	  $("#searchForm").attr("action",page);
	  console.log( $("#searchForm").attr("action"));
	  //debugger;
	  f.submit();
	

}
  </script>