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
				<li class="active">콘텐츠 관리</li>
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
					<div class="panel-heading">콘텐츠 리스트</div>	
							
	<form class="form-inline" style="padding-top: 5px; padding-right: 5px;">
		  <div class="form-group">
		  	<select class="form-control">                
		  		<option>등록일 </option>
                <option>상품명 </option>
                <option>등록자 </option>
              </select>
          </div>    
		  <div class="form-group pull-right">          
              <select class="form-control">
                <option>상품명</option>
                <option>등록일 </option>
                <option>등록자 </option>
              </select>
		    <div class="input-group">		    
		      <input type="text" class="form-control" id="exampleInputAmount" placeholder="암 보험" style="height: 35px;">
		    </div>
		  <button type="submit" class="btn btn-primary">검색</button>
          </div>
		</form>	
      <div class="row_in">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>No</th>
                <th>이미지</th>
                <th>상품명</th>
                <th>소개</th>
                <th>등록자</th>
                <th>등록일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><a href="contentsDetail.do"><img src =".\img\1.png"/></a></td>
                <td id = "product_title">암 보험</td>
                <td id = "product_contents">암 진단비 감액 없이 91일 부터 바로 100% 보장</td>
                <td>최금강</td>
                <td>19.01.12</td>
              </tr>
              <tr>
                <td>2</td>
                <td><a href="contentsDetail.do"><img src =".\img\1.png"/></a></td>
                <td id = "product_title">암 보험</td>
                <td id = "product_contents">암 진단비 감액 없이 91일 부터 바로 100% 보장</td>
                <td>금강맘</td>
                <td>19.01.14</td>
              </tr>
            </tbody>
          </table>
            <div class="pull-right">
           	 <input class="btn btn-primary" type="button" name="st_assign" value="신규등록">
           	 
          	</div>
        </div>
        <div class="row">
          <div class="text-center col-xs-7 col-xs-offset-2">
            <ul class="pagination justify-content-center">
      			<li><a href="#"><img width= 20px height= 18px src =".\img\left_darrow.png"/></a></li>
      			<li class="previous"><a href="#"><img width= 20px height= 18px src =".\img\left_arrow.png"/></a></li>
      			<li><a href="#">1</a></li>
      			<li class="active"><a href="#">2</a></li>
      			<li><a href="#">3</a></li>
      			<li><a href="#">4</a></li>
      			<li><a href="#">5</a></li>
      			<li><a href="#">6</a></li>
      			<li><a href="#">7</a></li>
      			<li><a href="#">8</a></li>
      			<li><a href="#">9</a></li>
      			<li class="next"><a href="#"><img width= 20px height= 18px src ="./img/right_arrow.png"/></a></li>
      			<li><a href="#"><img width= 20px height= 18px src ="./img/right_darrow.png"/></a></li>
            </ul>
          </div>
          <div class="col-xs-2 col-xs-offset-1">
            <input class="form-control" type="button" name="st_assign" onclick="" value="신규등록">
          </div>
        </div>
        </div>
				</div><!-- /.panel-->
			</div><!-- /.col-->
		</div><!-- /.row -->
	</div><!--/.main-->
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