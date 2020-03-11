<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

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
			<li class="active"><a href="contents.do"><em class="fa fa-calendar">&nbsp;</em> 콘텐츠 관리</a></li>
			<li><a href="chattingCounseling.do"><em class="fa fa-bar-chart">&nbsp;</em> 상담 관리</a></li>
			<li><a href="counselingList.do"><em class="glyphicon glyphicon-tags">&nbsp;</em> 상담 내역</a></li>
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
				<li class="active">콘텐츠 상세보기</li>
			</ol>
		</div><!--/.row-->
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">콘텐츠 상세보기</h1>
			</div>
		</div>/.row -->

 <div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">

  	<form class="form-horizental" name="updatecontent" id="updatecontent" method="POST" action="">
  			<input type="hidden" name="productSeq" id="productSeq" value="${list.productSeq }" >
			<div class="row row_bottom">
				<div class="col-sm-2">
					<label class="control-label" for="prod_title">상품명</label>
				</div>
				<div class="col-sm-8">
					<input type="prod_title" class="form-control" id ="prodName" name="prodName" value="${list.prodName }">
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
					<label class="control-label2" for="category">카테고리</label>
				</div>
				<div class="col-sm-2 offset-sm-2">
					<select class="selectpicker" name="prodCategory" id="prodCategory">
					<c:if test="${list.prodCategory eq '암보험'}">
						<option selected>암보험</option>
						<option >펫보험</option>
						<option>자동차보험</option>
					</c:if>
					<c:if test="${list.prodCategory eq '펫보험'}">
						<option>암보험</option>
						<option selected>펫보험</option>
						<option>자동차보험</option>
					</c:if>
					<c:if test="${list.prodCategory eq '자동차보험'}">
						<option>암보험</option>
						<option>펫보험</option>
						<option selected>자동차보험</option>
					</c:if>
					</select>
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
				<label class="control-label" for="is_use">사용여부</label>
				</div>
				<div class="col-sm-2 offset-sm-2">
					<c:if test="${list.useStatus eq 'Y'}">
						<label class="radio-inline"><input type="radio" name="useStatus" id="useStatus" value="Y" checked >Y</label>
						<label class="radio-inline"><input type="radio" name="useStatus" id="useStatus" value="N">N</label>
					</c:if>
					<c:if test="${list.useStatus eq 'N'}">
						<label class="radio-inline"><input type="radio" name="useStatus" id="useStatus" value="Y" >Y</label>
						<label class="radio-inline"><input type="radio" name="useStatus" id="useStatus" value="N" checked>N</label>
					</c:if>
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
				<label class="control-label" for="prod_context">소개</label>
				</div>
					<div class="col-sm-8">
				 <textarea class="form-control" rows="3" name="prodIntroduce" id="prodIntroduce">${list.prodIntroduce }</textarea>
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
				<label class="control-label2" for="prod_img">이미지</label>
				</div>
					<div class="col-sm-8">
						<div class="span10 rounded">
							<img src=".\img\1.png"/>
						</div>
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
				<label class="control-label" for="prod_path">이미지 선택</label>
				</div>
					<div class="col-sm-8">
					<input type="prod_path" class="form-control" id ="prod_path">
				</div>
				<div class="col-sm-2">
					<button type="button" class="btn" name="button">파일찾기</button>
				</div>
			</div>
			<div class="row">
				<div class="" style="padding: 10px; float: right; margin-right: 20px;">
						<a href="contents.do" onclick="" class="btn btn-primary" >목록</a>
						<button type="button" class="btn btn-warning" id="btnupdate">수정</button>
						<button type="button" class="btn btn-success" id="btndelete">삭제</button>
				</div>
			</div>
		</form>
  </div>
  </div>
  </div>
  </div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$("#btnupdate").click(function(){
	
		var confirm1 = confirm("수정하시겠습니까?");			
			//alert('1');
			$.ajax({
				url : 'updatecontent.do',
				type : 'POST',
				data : $('#updatecontent').serialize() ,
					success : function(data){
						console.log('게시글 수정 성공');
						alert('수정을 완료하였습니다.');
						location.href="http://localhost:8080/webProject/contents.do";
						 /* var f = $("#updatecontent");
						  
						  f.action = 'contents.do';
						  $("#updatecontent").attr("action","contents.do");
						  					 
						  f.submit(); */
										
					},
					error : function() {
						alert("수정을 실패하였습니다.");
					}
						
							
				});
			
		});

$("#btndelete").click(function(){
	
	var confirm1 = confirm("삭제하시겠습니까?");			
		//alert('1');
		$.ajax({
			url : 'deletecontent.do',
			type : 'POST',
			data : $('#updatecontent').serialize() ,
				success : function(data){
					console.log('게시글 삭제 성공');
					alert('삭제를 완료하였습니다.');
					location.href="http://localhost:8080/webProject/contents.do";
					 /* var f = $("#updatecontent");
					  
					  f.action = 'contents.do';
					  $("#updatecontent").attr("action","contents.do");
					  					 
					  f.submit(); */
									
				},
				error : function() {
					alert("삭제를 실패하였습니다.");
				}
					
						
			});
		
	});
</script>