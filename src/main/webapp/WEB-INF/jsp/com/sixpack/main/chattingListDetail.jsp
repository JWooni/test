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
				<li class="active">채팅 내역 상세보기</li>
			</ol>
		</div><!--/.row-->
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">채팅 내역 상세보기</h1>
			</div>
		</div>/.row -->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
		   <table class="table">
		               <tbody>
		                  <tr>
		                     <td><h5>회원 이름</h5></td>
		                     <td><input type="text" class="form-control" readonly style = "width : 40%; background-color:#EEE;margin-left:1%"></td>
		                  </tr>
		                  <tr>
											<td><h5>상담사 이름</h5></td>
										 <td><input type="text" class="form-control" readonly style = "width : 40%; background-color:#EEE; margin-left:1%"></td>
									</tr>
		              <tr>
		                     <td><h5>카테고리</h5></td>
                                <td>
		                        <select class="form-control" style="margin-left: 1em; width: 40%" >
                                <option value="">암보험</option>
		                        <option value="">회원이름</option>
		                        <option value="">상담사이름</option>
		                        <option value="">상담카테고리</option>
		                        <option value="">예약일</option>
		                        <option value="">답변일</option>
		                        <option value="">상태</option>
                                </select>
                                </td>
		                       </tr>
		                  <tr>
		                     <td><h5>상담 상태</h5></td>
		                     <td>
		                     <input class="form-group checkbox" type="radio" name="result" value="complete" style = "display: inline; margin-left:2%;">완료
		                     <input class="form-group checkbox" type="radio" name="result" value="Incomplete" style = "display:inline; margin-left:3%">미완료
		                     </td>
		                  </tr>
		                  <tr>
		                     <td><h5>채팅 내용</h5></td>
		                     <td><textarea style="margin-left: 1em; width: 61%;"  class="form-control" cols = "80" rows="5" id="commentContent" name="commentContent" ></textarea></td>
		                  </tr>
		               </tbody>
		            </table>
		<button type="button" class="btn btn-md btn-danger" onclick = "alert('삭제되었습니다.')" style = "margin-left:14%;">삭제</button>
		<button type="button" class="btn btn-md btn-default"onclick = "alert('취소되었습니다.')" style = "margin-left:38%;">취소</button>
  	<button type="button" class="btn btn-md btn-success"onclick = "alert('수정 완료')">수정</button>

				</div><!-- /.panel-->
			</div><!-- /.col-->
			</div><!--/.row-->
	</div><!--/.main-->	
    </body>
