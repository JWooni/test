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
	<hr>
  	<form class="form-horizental">
			<div class="form-group">
					<label class="control-label" for="prod_title" style="margin-right: 100px;">상품명</label>
				    <input type="text" class="form-control" placeholder="암 보험" style="width:400px;display:inline-block;"> 
					<hr>
			</div>
			<div class="form-group">
					<label class="control-label" for="category" style="margin-right: 87px;">카테고리</label>
				  	<select class="form-control" style="width:400px;display:inline-block;">
						<option>암보험</option>
						<option>펫보험</option>
						<option>자동차보험</option>
					</select>
					<hr>
			</div>
			<div class="form-group">
				<label class="control-label" for="is_use" style="margin-right: 87px;">사용여부</label>				
					<label class="radio-inline"><input type="radio" name="use_yes" checked>Y</label>
					<label class="radio-inline"><input type="radio" name="use_yes" >N</label>
					<hr>
			</div>
			<div class="form-group">
				<label class="control-label" for="prod_context" style="margin-right: 116px;">소개</label>				
				<textarea rows="3" name ="prod_text" style="width:400px; height:200px; display:inline-block;" placeholder="진호형 제가 다 다시 수정합니다."></textarea>
				 <hr>
			</div>
			<div class="form-group">
				<label class="control-label" for="prod_img" style="margin-right: 100px; ">이미지</label>				
				<img src=".\img\1.png"/>
				<hr>
			</div>
			<div class="form-group">
				<label class="control-label" for="prod_path" style="margin-right: 60px;">이미지 선택</label>				
					<input type="text" class="form-control" id ="prod_path" style="width:400px;display:inline-block;">
					<input type="button" class="btn btn-primary" style="padding: 10px;" value="업로드" onclick=document.all.file.click();> 
										<hr>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<button type="button" class="btn btn-danger" name="button">삭제</button>
				</div>
				<div class="col-sm-2 col-sm-offset-8">
						<button type="button" class="btn btn-warning" name="button">취소</button>
						<button type="button" class="btn btn-primary" name="button">등록</button>
				</div>
			</div>
		</form>
  </div>
  </div>
  </div>
  </div>
</body>
