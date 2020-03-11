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
			<li class="active"><a href="counselingList.do"><em class="glyphicon glyphicon-tags">&nbsp;</em> 상담 내역</a></li>
			<li><a href=chattingList.do><em class="fa fa-toggle-off">&nbsp;</em> 채팅 내역 관리</a></li>
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
				<li class="active">상담 내역</li>
			</ol>
		</div><!--/.row-->	
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">상담 내역</h1>
			</div>
		</div>/.row -->	
			
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">예약 내역</div>
     <div class="col-lg-7 col-md-7 col-xs-7">
      <div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
        <div class="panel-heading">
          <h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
          &nbsp;&nbsp;상담 신청 리스트</h1>
        </div>
        <table class="table">
          <thead>
            <tr>
              <td>이름</td>
              <td>지역</td>
              <td>나이</td>
              <td>예약 일시</td>
              <td>분류</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>최수현(사용자 이름)</td>
              <td>인천(사용자 지역)</td>
              <td>22(사용자 나이)</td>
              <td>예약일시</td>
              <td>분류</td>
            </tr>
             <tr>
              <td>민슬기(사용자 이름)</td>
              <td>서울(사용자 지역)</td>
              <td>20(사용자 나이)</td>
              <td>예약일시</td>
              <td>분류</td>
            </tr>
             <tr>
              <td>김정운(사용자 이름)</td>
              <td>서울(사용자 지역)</td>
              <td>24(사용자 나이)</td>
              <td>예약일시</td>
              <td>분류</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
        <div class="panel-heading">
          <h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
          &nbsp;&nbsp;답변 완료 리스트</h1>
        </div>
        <table class="table">
          <thead>
            <tr>
              <td>이름</td>
              <td>지역</td>
              <td>나이</td>
              <td>답변 일시</td>
              <td>분류</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>최수현(사용자 이름)</td>
              <td>인천(사용자 지역)</td>
              <td>22(사용자 나이)</td>
              <td>답변일시</td>
              <td>분류</td>
            </tr>
             <tr>
              <td>민슬기(사용자 이름)</td>
              <td>서울(사용자 지역)</td>
              <td>20(사용자 나이)</td>
              <td>답변일시</td>
              <td>분류</td>
            </tr>
             <tr>
              <td>김정운(사용자 이름)</td>
              <td>서울(사용자 지역)</td>
              <td>24(사용자 나이)</td>
              <td>답변일시</td>
              <td>분류</td>
            </tr>
          </tbody>
        </table>
      </div>
</div>
<div class="row">
 <div class="col-lg-5 col-md-5 col-xs-5">
  <div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
          <div class="panel-heading">
          <h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
          &nbsp;&nbsp;상담 상세 내용</h1>
        </div>
        <table class="table">
          <tbody>
            <tr>
              <td>상담자명</td>
              <td><p>최지연(DB에서 가져오기)</p></td>
            </tr>
            <tr>
              <td>전화번호</td>
              <td><p>010-3160-5064<a href="#">&nbsp;&nbsp;[카카오톡 받기]</p></a></td>
            </tr>
            <tr >
              <td>상담내용</td>
              <td></td>
            </tr>
            <table class="table">
               <tbody>
                 <p>
                 안녕하세요?
                 제가 식스팩 펫보험을 들고싶은데
                 얘는 포메구요 9개월인데요
                 강아지이지만 약간 차은우?를 닮았거든요
                 혹시 보험료 할인이 되나요??
                 </p>
               </tbody>
            </table>       
          </tbody>
        </table>
        </div>
        <div class="col-lg-12 col-md-12 col-xs-12" style="background-color:white;height: 400px;">
          <div class="panel-heading">
          <h1 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
          &nbsp;&nbsp;답변 내용</h1>
        </div>
        <table class="table">
          <tbody>
            <p>
              이혜진님, 안녕하세요.
              펫보험 상담사 최지연입니다.
              이혜진님이 질문해주신 내용에 대한 답변은
              차은우를 닮았다고 하여서 보험료 할인을 해드리는 것은
              따로 힘들다는 점 양해 부탁드립니다.
            </p>
          </tbody>
        </table>
        </div>
       <div style="float:right;">
        <button type="submit" class="btn btn-primary" style="width:100px; margin-right: 20px">문자전송</button>
        <button type="submit" class="btn btn-primary" style="width:130px; margin-right: 20px">카카오톡 전송</button>
      </div>
  </div>
		</div><!-- /.panel-->
		</div><!-- /.col--> 
		</div><!-- /.row --> 
	</div><!--/.main-->


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>