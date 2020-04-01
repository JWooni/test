<<<<<<< HEAD
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
			<li><a href="contents.do"><em class="fa fa-calendar">&nbsp;</em> 콘텐츠 관리</a></li>
			<li class="active"><a href="chattingCounseling.do"><em class="fa fa-bar-chart">&nbsp;</em> 상담 관리</a></li>
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
				<li class="active">상담 관리</li>
			</ol>
		</div><!--/.row-->
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">상담 관리</h1>
			</div>
		</div>/.row -->	
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">채팅상담</div>

		<div class="row_in">
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 800px;">
				<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;상담자 리스트</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>상담자</td>
							<td>상담 분류</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>최수현</td>
							<td><a href="lecture.html?lectureName=Java">동물</a></td>
						</tr>
						<tr>
							<td>민슬기</td>
							<td><a href="lecture.html?lectureName=Java">암</a></td>
						</tr>
						<tr>
							<td>김정운</td>
							<td><a href="lecture.html?lectureName=Android">자동차</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;현재 상담자 리스트</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>상담자</td>
							<td>상담 분류</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>최수현(사용자 이름)</td>
							<td><button type="button" onclick="#">채팅</button></td>
						</tr>
						<tr>
							<td>민슬기</td>
							<td><button type="button" onclick="#">채팅</button></td>
						</tr>
						<tr>
							<td>김정운</td>
							<td><button type="button" onclick="#">채팅</button></td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;완료 상담자 리스트</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>상담자</td>
							<td>기타</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>최수현</td>
							<td><button type="button" onclick="#">메모 보기</button></td>
						</tr>
						<tr>
							<td>민슬기</td>
							<td><button type="button" onclick="#">메모 보기</button></td>
						</tr>
						<tr>
							<td>김정운</td>
							<td><button type="button" onclick="#">메모 보기</button></td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 800px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;채팅 화면</h1>
				</div>
				<form class="form-horizontal" >
						<div class="form-group" style="background-color:white;height: 700px;">
							<textarea class="form-control" rows="30" id="commentContent" name="commentContent"></textarea>
							<textarea class="form-control" rows="2" id="commentContent" name="commentContent"></textarea>
							<button type="submit" class="btn btn-primary" style="float:right">전송</button>
						</div>
				</form>
			</div>
		</div>
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 300px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;현재 상담자 정보</h1>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<td>이름</td>
							<td><p>최지연(DB에서 가져오기)</p></td>
						</tr>
						<tr>
							<td>나이</td>
							<td><p>22세</p></td>
						</tr>
						<tr>
							<td>성별</td>
							<td><p>여성</p></td>
						</tr>
						<tr>
							<td>관심</td>
							<td><p>동물</p></td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 200px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;상담 결과</h1>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<td><input type="radio" name="result" value="complete">완료</td>
							<td><input type="radio" name="result" value="Incomplete">미완료</td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 250px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;상담 메모</h1>
				</div>
				<hr>
				<table class="table">
					<tbody>
						<p>노령견은 왜 가입이 되지 않느냐며 불만</p>
					</tbody>
					</table>
					</div>
					<button type="submit" class="btn btn-primary" style="width:100%;">채팅 종료</button>
						</div>
					</div>
				</div><!-- /.panel-->
			</div><!-- /.col-->		
		</div><!-- /.row -->
	</div><!--/.main-->	
=======
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
			<li><a href="contents.do"><em class="fa fa-calendar">&nbsp;</em> 콘텐츠 관리</a></li>
			<li class="active"><a href="chattingCounseling.do"><em class="fa fa-bar-chart">&nbsp;</em> 상담 관리</a></li>
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
				<li class="active">상담 관리</li>
			</ol>
		</div><!--/.row-->
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">상담 관리</h1>
			</div>
		</div>/.row -->	
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">채팅상담</div>

		<div class="row_in">
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 800px;">
				<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;상담자 리스트</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>상담자</td>
							<td>상담 분류</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>최수현</td>
							<td><a href="lecture.html?lectureName=Java">동물</a></td>
						</tr>
						<tr>
							<td>민슬기</td>
							<td><a href="lecture.html?lectureName=Java">암</a></td>
						</tr>
						<tr>
							<td>김정운</td>
							<td><a href="lecture.html?lectureName=Android">자동차</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;현재 상담자 리스트</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>상담자</td>
							<td>상담 분류</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>최수현(사용자 이름)</td>
							<td><button type="button" onclick="#">채팅</button></td>
						</tr>
						<tr>
							<td>민슬기</td>
							<td><button type="button" onclick="#">채팅</button></td>
						</tr>
						<tr>
							<td>김정운</td>
							<td><button type="button" onclick="#">채팅</button></td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;완료 상담자 리스트</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td>상담자</td>
							<td>기타</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>최수현</td>
							<td><button type="button" onclick="#">메모 보기</button></td>
						</tr>
						<tr>
							<td>민슬기</td>
							<td><button type="button" onclick="#">메모 보기</button></td>
						</tr>
						<tr>
							<td>김정운</td>
							<td><button type="button" onclick="#">메모 보기</button></td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 800px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;채팅 화면</h1>
				</div>
				<form class="form-horizontal" >
						<div class="form-group" style="background-color:white;height: 700px;">
							<textarea class="form-control" rows="30" id="commentContent" name="commentContent"></textarea>
							<textarea class="form-control" rows="2" id="commentContent" name="commentContent"></textarea>
							<button type="submit" class="btn btn-primary" style="float:right">전송</button>
						</div>
				</form>
			</div>
		</div>
			<div class="col-lg-3 col-md-3 col-xs-3" style="background-color:white;height: 800px;">
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 300px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;현재 상담자 정보</h1>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<td>이름</td>
							<td><p>최지연(DB에서 가져오기)</p></td>
						</tr>
						<tr>
							<td>나이</td>
							<td><p>22세</p></td>
						</tr>
						<tr>
							<td>성별</td>
							<td><p>여성</p></td>
						</tr>
						<tr>
							<td>관심</td>
							<td><p>동물</p></td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 200px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;상담 결과</h1>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<td><input type="radio" name="result" value="complete">완료</td>
							<td><input type="radio" name="result" value="Incomplete">미완료</td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 250px;">
					<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
					&nbsp;&nbsp;상담 메모</h1>
				</div>
				<hr>
				<table class="table">
					<tbody>
						<p>노령견은 왜 가입이 되지 않느냐며 불만</p>
					</tbody>
					</table>
					</div>
					<button type="submit" class="btn btn-primary" style="width:100%;">채팅 종료</button>
						</div>
					</div>
				</div><!-- /.panel-->
			</div><!-- /.col-->		
		</div><!-- /.row -->
	</div><!--/.main-->	
>>>>>>> refs/heads/master
</body>