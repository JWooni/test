<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
				<li class="active">콘텐츠 등록하기</li>
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

  	<form class="form-horizental" name="insertcontent" id="insertcontent" method="POST" enctype="multipart/form-data" action="insertcontent.do">
			<div class="row row_bottom">
				<div class="col-sm-2">
					<label class="control-label" for="prod_title">상품명</label>
				</div>
				<div class="col-sm-8">
					<input type="prod_title" class="form-control" id ="prodName" name="prodName">
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
					<label class="control-label2" for="category">카테고리</label>
				</div>
				<div class="col-sm-2 offset-sm-2">
					<select class="selectpicker" name="prodCategory" id="prodCategory">
						<option>암보험</option>
						<option>펫보험</option>
						<option>자동차보험</option>
					</select>
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
				<label class="control-label" for="is_use">사용여부</label>
				</div>
				<div class="col-sm-2 offset-sm-2">
					<label class="radio-inline"><input type="radio" name="useStatus" id="useStatus" checked value="Y">Y</label>
					<label class="radio-inline"><input type="radio" name="useStatus" id="useStatus" value="N">N</label>
				</div>
			</div>
			<div class="row row_bottom">
				<div class="col-sm-2">
				<label class="control-label" for="prod_context">소개</label>
				</div>
					<div class="col-sm-8">
				 <textarea class="form-control" rows="3" name="prodIntroduce" id="prodIntroduce"></textarea>
				</div>
			</div>
			
			<div class="row row_bottom">
				<div class="col-sm-2">
				<label class="control-label" for="prod_path">이미지 선택</label>
				</div>
				<!-- 	<div class="col-sm-8">
					<input type="prod_path" class="form-control" id ="prod_path">
				</div> -->
				<div class="col-sm-2">
					<input type="file" name="file">
				</div>
			</div>
			<div class="row">
				<div style="padding: 12px; float: right; margin-right: 20px;">
						<a href="contents.do" onclick="" class="btn btn-primary" >목록</a>
						<button type="submit" class="btn btn-success" id="btninsert">등록</button>
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
/* 
$(document).ready(function(){
	var formObj = $("form[name='insertcontent']");
	$("#btninsert").on("click", function(){
		if(fn_valiChk()){
			return false;
		}
		formObj.attr("action", "insertcontent.do");
		formObj.attr("method", "post");
		formObj.submit();
	});
})
function fn_valiChk(){
	var regForm = $("form[name='writeForm'] .chk").length;
	for(var i = 0; i<regForm; i++){
		if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
			alert($(".chk").eq(i).attr("title"));
			return true;
		}
	}
} */

$("#btninsert").click(function(){

	//preventDefault 는 기본으로 정의된 이벤트를 작동하지 못하게 하는 메서드이다. submit을 막음
   // event.preventDefault();
	
	var confirm1 = confirm("등록하시겠습니까?");			
		//alert('1');
		$.ajax({
			url : 'insertcontent.do',
			type : 'POST',
			data : $('#insertcontent').serialize() ,
			enctype: 'multipart/form-data',
				success : function(data){
					console.log('게시글 등록 성공');
					alert('등록을 완료하였습니다.');
					location.href="http://localhost:8080/webProject/contents.do";
					 /* var f = $("#insertcontent");
					  
					  f.action = 'contents.do';
					  $("#insertcontent").attr("action","contents.do");
					  					 
					  f.submit(); */
									
				},
				error : function() {
					alert("등록을 실패하였습니다.");
				}
					
						
			});
		
	});
</script>