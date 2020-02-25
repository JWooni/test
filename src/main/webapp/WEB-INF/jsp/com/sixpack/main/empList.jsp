<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
			<li class="active"><a href="empList.do"><em class="fa fa-dashboard">&nbsp;</em> 상담사 관리</a></li>
			<li><a href="contents.do"><em class="fa fa-calendar">&nbsp;</em> 콘텐츠 관리</a></li>
			<li><a href="chattingCounseling.do"><em class="fa fa-bar-chart">&nbsp;</em> 상담 관리</a></li>
			<li><a href="counselingList.do"><em class="glyphicon glyphicon-tags">&nbsp;</em>상담 내역</a></li>
			<li><a href="chattingList.do"><em class="fa fa-toggle-off">&nbsp;</em> 채팅 내역 관리</a></li>
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
				<li class="active">상담사 관리</li>
			</ol>
		</div><!--/.row-->
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">상담사 관리</h1>
			</div>
		</div>/.row -->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">상담사 리스트</div>

		<form class="form-inline pull-right" style="padding-top: 5px; padding-right: 5px;">
		  <div class="form-group">
		  	<select class="form-control">
  				<option>아이디</option>
  				<option>이름</option>
				<option>직급</option>
  				<option>지역</option>
			</select>
		    <div class="input-group">		    
		      <input type="text" class="form-control" id="exampleInputAmount" placeholder="SIXPACK" style="height: 35px;">
		    </div>
		  </div>
		  <button type="submit" class="btn btn-primary">검색</button>
		</form>					
				
				<div>
						<table class="table table-striped">
							<thead>	
							<tr>
								<th>번호</th>
								<th>아이디</th>
								<th>이름</th>
								<th>직급</th>
								<th>지역</th>
								<th>등록일</th>
							</tr>
							</thead>
							<tbody>
							<c:if test="${conList != null}">
								<c:forEach var="list" items="${conList}" varStatus="status">
								<tr>
									<td>${fn:length(conList)-status.index}</td>
									<td><a href="empListDetail.do"><c:out value="${list.empId}"/></a></td>
									<td><c:out value="${list.empName}"/></td>
									<td><c:out value="${list.empRank}"/></td>
									<td><c:out value="${list.empArea}"/></td>
									<td><c:out value="${list.joinDate}"/></td>
								</tr>							
								</c:forEach>																			
							</c:if>
							</tbody>														
						</table>
						<div class="panel-body pull-right">
						<div class="col-md-6">
							<button type="submit" class="btn btn-primary">신규등록</button>
						</div>
						</div>
						<div class="text-center">
							<ul class="pagination">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
						</div>
					</div>
				</div><!-- /.panel-->
			</div><!-- /.col-->
		</div><!-- /.row -->
	</div><!--/.main-->
</body>	