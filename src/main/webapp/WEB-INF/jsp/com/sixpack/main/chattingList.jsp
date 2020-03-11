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
				<li class="active">채팅 내역 관리</li>
			</ol>
		</div><!--/.row-->
		
<!-- 		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">채팅 내역 관리</h1>
			</div>
		</div>/.row -->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">채팅 리스트</div>

					<div id = "selectbox">
					  <select style = "width:100px; margin-top:5%; margin-left : 70%;">
					    <option value="">회원이름</option>
					    <option value="">상담사이름</option>
					    <option value="">상담카테고리</option>
					    <option value="">예약일</option>
					    <option value="">답변일</option>
					    <option value="">상태</option>
					<input type="text" name = "검색">
					  <input type="submit">

					</select>
					</div>
					<div>
					 <table table class="table table-striped" style = "width:100%;">

			<tr>
			  <td>No</td>
			   <td>회원이름</td>
               <td>상담사이름</td>
			   <td>상담카테고리</td>
			   <td>상담상태</td>
			   <td>등록일</td>
			</tr>
			<tr>
			   <td>1</td>  
			    <td><a href="chattingListDetail.do">김영섭</a></td>  
			    <td>식스팩</td> 
			    <td>폐암</td> 
			    <td>상담중</td>
			    <td>2020.01.15</td> 
			</tr>

			<tr>
			  <td>2</td>
                <td>김영섭</td>      
			    <td>식스팩</td>      
			    <td>폐암</td>      
			    <td>상담중</td>   
			    <td>2020.01.15</td>
			</tr>

			<tr>
				<td>3</td>  
				<td>김영섭</td>   
				<td>식스팩</td>  
				<td>폐암</td> 
				<td>상담중</td> 
				<td>2020.01.15</td>
			</tr>

			<tr>
			  <td>4</td>  
			   <td>김영섭</td>     
			   <td>식스팩</td>   
			   <td>폐암</td>   
			   <td>상담중</td>
			   <td>2020.01.15</td>
			</tr>

			<tr>
			  <td>5</td>
			   <td>김영섭</td>
			   <td>식스팩</td>  
			   <td>폐암</td>    
			   <td>상담중</td>   
			   <td>2020.01.15</td> 
			</tr>

			<tr>
			  <td>6</td>   
			  <td>김영섭</td>       
			   <td>식스팩</td>        
			   <td>폐암</td>         
			   <td>상담중</td>    
			   <td>2020.01.15</td>  
			</tr>

			<tr>
			  <td>7</td>   
			    <td>김영섭</td>       
			    <td>식스팩</td>      
			    <td>폐암</td>      
			    <td>상담중</td>  
			    <td>2020.01.15</td> 
			</tr>

			<tr>
				<td>8</td> 
				<td>김영섭</td> 
				<td>식스팩</td>
				<td>폐암</td>  
				<td>상담중</td>  
				<td>2020.01.15</td>  
			</tr>

			<tr>
			  <td>9</td> 
			     <td>김영섭</td>  
			     <td>식스팩</td>  
			     <td>폐암</td>  
			     <td>상담중</td>  
			     <td>2020.01.15</td> 
			</tr>
			
			  </table>
				<div class="text-center">
				<ul class = "pagination">
					 <li><a href = "">1</a></li>
					 <li><a href = "">2</a></li>
					 <li><a href = "">3</a></li>
					 <li><a href = "">4</a></li>
					 <li><a href = "">5</a></li>
					 <li><a href = "">6</a></li>
					 <li><a href = "">7</a></li>
					 <li><a href = "">8</a></li>
					 <li><a href = "">9</a></li>
					 <li><a href = "">10</a></li>
				 </ul>
			</div>
</div>
        </div><!-- /.panel-->
    </div><!-- /.col-->
    </div><!-- /.row -->
    </div><!--/.main-->
    </body>
