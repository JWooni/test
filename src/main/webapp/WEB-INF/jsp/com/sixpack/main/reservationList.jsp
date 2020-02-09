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
			<li><a href="counselingList.do"><em class="glyphicon glyphicon-tags">&nbsp;</em>상담 내역</a></li>
			<li><a href="chattingList.do"><em class="fa fa-toggle-off">&nbsp;</em> 채팅 내역 관리</a></li>
			<li class="active"><a href="reservationList.do"><em class="fa fa-clone">&nbsp;</em> 예약 내역 관리</a></li>
	        <li><a href="main.do"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
      </ul>
   </div><!--/.sidebar-->
      
   <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
      <div class="row">
         <ol class="breadcrumb">
            <li><a href="empList.do">
               <em class="fa fa-home"></em>
            </a></li>
            <li class="active">예약 내역 관리</li>
         </ol>
      </div><!--/.row-->
      
<!--       <div class="row">
         <div class="col-lg-12">
            <h1 class="page-header">예약 내역 관리</h1>
         </div>
      </div>/.row -->
            
      
      <div class="row">
         <div class="col-lg-12">
            <div class="panel panel-default">
               <div class="panel-heading">예약 내역</div>

      <form class="form-inline pull-right" style="padding-top: 5px; padding-right: 5px;">
        <div class="form-group">
           <select class="form-control">
              <option>회원 이름</option>
              <option>상담사 이름</option>
            <option>상담 카테고리</option>
              <option>예약일</option>
               <option>답변일</option>            
             <option>상태</option>                          
         </select>
          <div class="input-group">          
            <input type="text" class="form-control" style="height: 35px;" id="exampleInputAmount" placeholder="우거지">
          </div>
        </div>
        <button type="submit" class="btn btn-primary">검색</button>
      </form>   
   <div>
    <table class="table table-striped">
       <thead>
          <tr>
             <th>No</th>
             <th>회원이름</th>
             <th>상담사이름</th>
             <th>상담 카테고리</th>
             <th>예약일</th>
             <th>답변일</th>
             <th>상태</th>
          </tr>
       </thead>
       <tbody>
          <tr>
             <td align="center">1</td>
             <td> <a href="reservationListDetail.do">우거지 </a></td>
             <td> 최지연 </td>
             <td> 모태솔로보험 </td>
             <td> 19.12.24 12:00 </td>
             <td> 19.12.25 12:30 </td>
             <td> 완료 </td>
          </tr>

          <tr>
             <td align="center"> 2 </td>
             <td> 이혜진 </td>
             <td> 최지연 </td>
             <td> 펫보험 </td>
             <td> 19.12.25 14:20 </td>
             <td> 19.12.26 14:40 </td>
             <td> 완료 </td>
          </tr>

          <tr>
             <td align="center"> 3 </td>
             <td> 김영섭 </td>
             <td> 최지연 </td>
             <td> 건강보험 </td>
             <td> 19.12.25 14:20 </td>
             <td>  </td>
             <td> 미완료 </td>
          </tr>

          <tr>
             <td align="center"> 4 </td>
             <td> 민슬기 </td>
             <td> 최지연 </td>
             <td> 암보험 </td>
             <td> 19.12.25 14:20 </td>
             <td>  </td>
             <td> 미완료 </td>
          </tr>

          <tr>
             <td align="center"> 5 </td>
             <td> 김정운 </td>
             <td> 최지연 </td>
             <td> 여성건강보험 </td>
             <td> 19.12.25 09:00 </td>
             <td> 19.12.25 12:30 </td>
             <td> 완료 </td>
          </tr>

          <tr>
             <td align="center"> 6 </td>
             <td> 최수현 </td>
             <td> 최지연 </td>
             <td> 애견보험 </td>
             <td> 19.12.26 12:00 </td>
             <td> </td>
             <td> 미완료 </td>
          </tr>

          <tr>
             <td align="center"> 7 </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
          </tr>

          <tr>
             <td align="center"> 8 </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
          </tr>

          <tr>
             <td align="center"> 9 </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
          </tr>

          <tr>
             <td align="center"> 10 </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
             <td> </td>
          </tr>
       </tbody>
        </table>

      <div class="text-center">
         <ul  class="pagination">
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
