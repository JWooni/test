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

	<form class="form-horizental" name="updatechatting" id="updatechatting" method="POST" action="">
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default" style="height: 440px;">
		   <table class="table">
		               <tbody>
		                  <tr>
		                     <td><h5>회원 이름</h5></td>
		                     <td><input type="text" class="form-control" readonly style = "width : 90%; background-color:#EEE;margin-left:2%" value="${list.userName}"></td>
		                  </tr>
		                  <tr>
							  <td><h5>상담사 이름</h5></td>
							  <td><input type="text" class="form-control" readonly style = "width : 90%; background-color:#EEE; margin-left:2%" value="${list.empId}"></td>
							</tr>
		              		<tr>
		                     <td><h5>카테고리</h5></td>
                                <td>
<%--                                 <select class="selectpicker" name="prodCategory" id="prodCategory">
									<c:if test="${list.csGroup eq '회원이름'}">
										<option selected value="user">회원이름</option>
					                	<option value="emp">상담사이름</option>
					                	<option value="categori">상담카테고리</option>
									</c:if>
									<c:if test="${list.csGroup eq '상담사이름'}">
										<option value="user">회원이름</option>
					                	<option selected value="emp">상담사이름</option>
					                	<option value="categori">상담카테고리</option>
									</c:if>
									<c:if test="${list.csGroup eq '상담카테고리'}">
										<option value="user">회원이름</option>
					                	<option value="emp">상담사이름</option>
					                	<option selected value="categori">상담카테고리</option>
									</c:if>
								</select> --%>
		                        <select class="form-control form-control-sm" name ="searchType" id="searchType" style="width: 20%; margin-left: 2%;"> 
					              	<option value="Everything">전체</option>
					                <option value="user">회원이름</option>
					                <option value="emp">상담사이름</option>
					                <option value="categori">상담카테고리</option>
					              </select>
                                </td>
		                       </tr>
		                  <tr>
		                     <td><h5>상담 상태</h5></td>
		                     <td>
		                     <c:if test="${list.ans eq 1}">
		                     <input class="form-group checkbox" type="radio" name="result" value="complete" style = "display: inline; margin-left:2%;" checked>완료
		                     <input class="form-group checkbox" type="radio" name="result" value="Incomplete" style = "display:inline; margin-left:3%">미완료
		                     </c:if>
		                     <c:if test="${list.ans eq 0}">
		                     <input class="form-group checkbox" type="radio" name="result" value="complete" style = "display: inline; margin-left:2%;">완료
		                     <input class="form-group checkbox" type="radio" name="result" value="Incomplete" style = "display:inline; margin-left:3%" checked>미완료
		                     </c:if>
		                     </td>
		                  </tr>
		                  <tr>
		                     <td><h5>채팅 내용</h5></td>
		                     <td><textarea style="margin-left: 2%; width: 90%;"  class="form-control" cols = "80" rows="5" id="commentContent" name="commentContent" ></textarea></td>
		                  </tr>
		               </tbody>
		            </table>
		            <div style="padding: 10px; float: right; margin-right: 20px;">
						<a href="chattingList.do" onclick="" class="btn btn-md btn-default" >목록</a>
				  		<button type="button" class="btn btn-md btn-success" id="btnupdate">수정</button>
						<button type="button" class="btn btn-md btn-danger" id="btndelete">삭제</button>
					</div>
				</div><!-- /.panel-->
			</div><!-- /.col-->
			</div><!--/.row-->
			</form>
	</div><!--/.main-->	
</body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$("#btnupdate").click(function(){
	
		var confirm1 = confirm("수정하시겠습니까?");			
			//alert('1');
		if(confirm1 == 1){
			$.ajax({
				url : 'updatechatting.do',
				type : 'POST',
				data : $('#updatechatting').serialize() ,
					success : function(data){
						console.log('게시글 수정 성공');
						alert('수정을 완료하였습니다.');
						location.href="http://localhost:8080/webProject/chattingList.do";
						 /* var f = $("#updatecontent");
						  
						  f.action = 'contents.do';
						  $("#updatecontent").attr("action","contents.do");
						  					 
						  f.submit(); */
										
					},
					error : function() {
						alert("수정을 실패하였습니다.");
					}
						
							
				});
			}
		});

$("#btndelete").click(function(){
	
	var confirm1 = confirm("삭제하시겠습니까?");			
		//alert('1');
	if(confirm1 == 1){
		$.ajax({
			url : 'deletechatting.do',
			type : 'POST',
			data : $('#updatechatting').serialize() ,
				success : function(data){
					console.log('채팅 내역 삭제 성공');
					alert('삭제를 완료하였습니다.');
					location.href="http://localhost:8080/webProject/chattingList.do";
					 /* var f = $("#updatecontent");
					  
					  f.action = 'contents.do';
					  $("#updatecontent").attr("action","contents.do");
					  					 
					  f.submit(); */
									
				},
				error : function() {
					alert("삭제를 실패하였습니다.");
				}
					
						
			});
		}
	});
</script>