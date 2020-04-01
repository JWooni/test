<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script src="js/jquery-1.11.1.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

<script type="text/javascript">

/* 페이지 리스트로 이동하는 함수 */
function goList() {
	location.href="empList.do";	
}

/* 정규식 체크 및 저장/수정 버튼 클릭시 동작하는 함수 */
function addUser() {
   //value
   var empId = $("#empId").val();
   var empPwd = $("#empPwd").val();
   var empPwd2 = $("#empPwd2").val();
   var empName = $("#empName").val();
   var empRank = $("#empRank").val();
   var empArea = $("#empArea").val();
   var empDate = $("#empDate").val();

   //필수값 확인 
    if(empId == null || empId == ''){
       alert("아이디를 입력해주세요.");
       $("#empId").focus();
       return false;
    }
   
    if(empPwd == null || empPwd == ''){
       alert("비밀번호를 입력해주세요.");
       $("#empPwd").focus();
       return false;
    }
    
    if(empPwd2 == null || empPwd2 == ''){
       alert("비밀번호 확인을 입력해주세요.");
       $("#empPwd2").focus();
       return false;
    }
   
    if(empName == null || empName == ''){
       alert("이름를 입력해주세요.");
       $("#empName").focus();
       return false;
    }
   
    if(empRank == null || empRank == ''){
       alert("직급을 입력해주세요.");
       $("#empRank").focus();
       return false;
    }
    
    if ($("#empArea option:selected").val() == 0) {
        alert("지역을 선택해주세요.");
        return false;
	}
    
    var mode = $("#mode").val();
    var modeText = "등록";
    if (mode == 'update') {
    	modeText = "수정";
    }
//     var form = $("#mainForm").serialize();
    var form = new FormData($('#mainForm')[0]);

    
    $.ajax({
    	url : '<c:url value="/empModifyInfo.do" />',
    	type : "POST",
    	enctype: 'multipart/form-data',
    	contentType: false,
    	processData: false,
//     	contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
    	data : form,
    	dataType : "json",
    	success : function(result) {
    		if (result == 1) {
    			alert(modeText + "되었습니다");
    			location.href="empList.do";
    		} else {
    			alert(modeText + "에 실패했습니다");
    			return false;
    		}
    	},
    	error : function(result) {
    		console.log("error");
    		console.log(result);
    		
    	}
    });
    
} // addClass

$(document).ready(function() {
	$("#idCheck").on("click", function() {
		var empId = $("#empId").val();
		if (empId == '' || empId == null) {
			alert("아이디를 입력해주세요");
			$("#empId").focus();
			return false;
		} else {
			$.ajax({
				  url : '<c:url value="idCheck.do" />',
				  type : "post",
				  data : {empId : empId},
				  success : function(data) {
					console.log(data);
				  	if(data == "1") {
				   		alert("이미 사용중인 아이디입니다.");   
			       		$("#empId").focus();
				  	} else {
				   		alert("사용 가능 합니다.");   
				  	} // end if
				  },
				  error : function(data) {
					console.log("error");
					console.log(data);
				  }
			});
			// ajax 끝
		}

	});
	
}); //document

function delUser(){
	var empId = $("#empId").val();

	$.ajax({
    	url : '<c:url value="empDeleteInfo.do" />',
    	type : "post",
    	data : {empId : empId},
    	success : function(result) {
        	console.log(result);
    		if (result == "1") {
    			alert("삭제 되었습니다");
    			location.href="empList.do";
    		} else {
    			alert("삭제에 실패했습니다");
    			return false;
    		}
    	},
    	error : function(result) {
    		console.log("error");
    		console.log(result);
    		
    	}
    });
} //delUser

</script>

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
	               <form role="form" id="mainForm" name="mainForm" action="empList.do" method="post" enctype="multipart/form-data">
					 	<input type="hidden" id="mode" name="mode" value="${mode }">
	               	  <div class="form-group">
        			    <label for="empImg" style="margin-right: 100px;">이미지</label>
						<input type="file" class="form-control" id="file" name="file" placeholder="파일 선택" style="width:400px;display:inline-block;"/>
						<img alt="${detail_list.fileName}" src="${detail_list.filePath}/${detail_list.fileName}">
						<hr>	               	  
	               	  </div>	
					  <div class="form-group">
					    <label for="empId" style="margin-right: 100px;">아이디</label>
					    <input type="text" class="form-control" name="empId" id="empId" value="${detail_list.empId}" style="width:400px;display:inline-block;"> 
	                    <button type="button" class="btn btn-default" id="idCheck" name="idCheck">중복확인</button>
	                    <hr>
					  </div>
					  <div class="form-group">
					    <label for="empPwd" style="margin-right: 87px;">비밀번호</label>
					    <input type="password" class="form-control" name="empPwd" id="empPwd" value="${detail_list.empPwd}" style="width:400px;display:inline-block;">
	                    <hr>
					  </div>
					  <div class="form-group">
					    <label for="empPwd2" style="margin-right: 56px;">비밀번호 확인</label>
					    <input type="password" class="form-control" name="empPwd2" id="empPwd2" value="${detail_list.empPwd}" style="width:400px;display:inline-block;">
	                    <hr>
					  </div>
					  <div class="form-group">
					    <label for="empName" style="margin-right: 116px;">이름</label>
					    <input type="text" class="form-control" name="empName" id="empName" value="${detail_list.empName}" style="width:400px;display:inline-block;"> 
	                    <hr>
					  </div>				
					  <div class="form-group">
					    <label for="empRank" style="margin-right: 116px;">직급</label>
					    <input type="text" class="form-control" name="empRank" id="empRank" value="${detail_list.empRank}" style="width:400px;display:inline-block;">
	                    <hr>
					  </div>									  
					  <div class="form-group">
					    <label for="empArea" style="margin-right: 116px;">지역</label>
					    <c:set var="info" value="${detail_list.empArea}"></c:set>
					  	<select class="form-control" name="empArea" id="empArea" style="width:400px;display:inline-block;">
			  				<option value="" <c:if test="${info eq ''}">selected</c:if>>지역을 선택해주세요</option>
			  				<option value="서울" <c:if test="${info eq '서울'}">selected</c:if>>서울</option>
			  				<option value="경기" <c:if test="${info eq '경기'}">selected</c:if>>경기</option>
							<option value="인천" <c:if test="${info eq '인천'}">selected</c:if>>인천</option>
			  				<option value="부산" <c:if test="${info eq '부산'}">selected</c:if>>부산</option>
			  				<option value="대전" <c:if test="${info eq '대전'}">selected</c:if>>대전</option>
			  				<option value="세종" <c:if test="${info eq '세종'}">selected</c:if>>세종</option>
			  				<option value="대구" <c:if test="${info eq '대구'}">selected</c:if>>대구</option>
			  				<option value="광주" <c:if test="${info eq '광주'}">selected</c:if>>광주</option>
			  				<option value="제주" <c:if test="${info eq '제주'}">selected</c:if>>제주</option>
						</select>					  			  	  					  
	                    <hr>
					  </div>
					  	<c:if test="${mode eq 'update'}">
						<div class="form-group">
							<label for="empDate" style="margin-right: 100px;">입사일</label>
							<input type="text" class="form-control" name="empDate" id="empDate" value="${detail_list.joinDate}" style="width:400px;display:inline-block;">
							<hr>
						</div>
						</c:if>

                    <div class="form-group text-center">
                    	<c:choose>
                    		<c:when test="${mode eq 'update' }">
								<button type="button" class="btn btn-primary" onclick="addUser();">
									수정<i class="fa fa-check spaceLeft"></i>
								</button>
		                        <button type="button" class="btn btn-danger" onclick="delUser();">
		                          	삭제<i class="fa fa-check spaceLeft"></i>
		                        </button>
                    		</c:when>
                    		<c:otherwise>
								<button type="button" class="btn btn-primary" onclick="addUser();">
									등록<i class="fa fa-check spaceLeft"></i>
								</button>
                    		</c:otherwise>
                    	</c:choose>
                        <button type="button" class="btn btn-warning" onclick="goList();">
							취소<i class="fa fa-times spaceLeft"></i>
                        </button>
                    </div>
                </form>
				</div><!-- /.panel-->
			</div><!-- /.col-->
			</div><!--/.row-->
	</div><!--/.main-->	
</body>
