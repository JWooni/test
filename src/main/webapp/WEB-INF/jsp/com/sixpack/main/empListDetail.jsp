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
			<li class="active"><a href="empList.do"><em class="fa fa-dashboard">&nbsp;</em> 상담사 관리</a></li>
			<li><a href="contents.do"><em class="fa fa-calendar">&nbsp;</em> 콘텐츠 관리</a></li>
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
				<li class="active">상담사 상세보기</li>
			</ol>
		</div><!--/.row-->
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">상담사 상세보기</h1>
			</div>
		</div>/.row -->
				
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<hr>	
					  <div class="form-group">
					    <label for="exampleInputId" style="margin-right: 100px;">아이디</label>
					    <input type="text" class="form-control" id="exampleInputId" placeholder="SIXPACK" style="width:400px;display:inline-block;"> 
	                    <button type="submit" class="btn btn-default">중복확인</button>
	                    <hr>
					  </div>
               <form role="form" action="empList.do">
					  <div class="form-group">
					    <label for="exampleInputPassword" style="margin-right: 87px;">비밀번호</label>
					    <input type="password" class="form-control" id="exampleInputPassword" placeholder="********" style="width:400px;display:inline-block;">
	                    <hr>
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword2" style="margin-right: 56px;">비밀번호 확인</label>
					    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="********" style="width:400px;display:inline-block;">
	                    <hr>
					  </div>
					  <div class="form-group">
					    <label for="exampleInputName" style="margin-right: 116px;">이름</label>
					    <input type="text" class="form-control" id="exampleInputName" placeholder="근육몬" style="width:400px;display:inline-block;"> 
	                    <hr>
					  </div>				
					  <div class="form-group">
					    <label for="exampleInputRank" style="margin-right: 116px;">직급</label>
					    <input type="text" class="form-control" id="exampleInputRank" placeholder="사원" style="width:400px;display:inline-block;">
	                    <hr>
					  </div>									  
					  <div class="form-group">
					    <label for="exampleInputArea" style="margin-right: 116px;">지역</label>
					  	<select class="form-control" style="width:400px;display:inline-block;">
			  				<option>서울</option>
			  				<option>경기</option>
							<option>인천</option>
			  				<option>부산</option>
			  				<option>대전</option>
			  				<option>세종</option>
			  				<option>대구</option>
			  				<option>광주</option>
			  				<option>제주</option>
						</select>					  			  	  					  
	                    <hr>
					  </div>
					  <div class="form-group">
					    <label for="exampleInputDate" style="margin-right: 100px;">입사일</label>
					    <input type="text" class="form-control" id="exampleInputDate" placeholder="" style="width:400px;display:inline-block;">
	                    <hr>
					  </div>

                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-danger">
                            삭제<i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button type="submit" class="btn btn-warning">
                            취소<i class="fa fa-times spaceLeft"></i>
                        </button>
						<button type="submit" class="btn btn-primary">
							수정<i class="fa fa-check spaceLeft"></i>
						</button>
                    </div>
                </form>
				</div><!-- /.panel-->
			</div><!-- /.col-->
			</div><!--/.row-->
	</div><!--/.main-->	
</body>
