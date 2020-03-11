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
		
<!-- 		<div class="row">
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
		      <input type="text" class="form-control" id="exampleInputAmount" placeholder="">
		    </div>
		  </div>
		  <button type="submit" class="btn btn-primary">검색</button>
		</form>	
	<div>
    <table class="table table-striped">
         <tbody>
        <tr>
            <th align="left">상담자명</th>
            <td>이혜진</td>
            <th align="left">질문 내용</th>
       </tr>
       <tr>
         <th align="left">성별</th>
         <td>여성</td>
         <td rowspan="5">안녕하세요?
            제가 식스팩 펫보험을 들고싶은데<br>
            얘는 포메구요 9개월인데요
            강아지 이지만 약간 차은우??를 닮았거든요<br>
            혹시 보험료 할인이 되나요?</td>
      </tr>

      <tr>
         <th align="left">나이</th>
         <td>21</td>
      </tr>
      <tr>
         <th align="left">전화번호</th>
         <td>01031605064</td>
     </tr>
     <tr>
        <th align="left">분류</th>
        <td>펫</td>
    </tr>
  </tbody>
</table>









    <table class="table table-striped" style="width:100%;">
    	<colgroup>
    		<col style="width:70%;"/>
    		<col style="width:15%"/>
    		<col style="width:15%"/>
    	</colgroup>
        <thead>
             <tr>
                <th colspan="" rowspan="" align="left">답변 내용</th>
                <th rowspan="" align="left">상담사</th>
                <td> 최지연 </td>

             </tr>
        </thead>

        <tbody>
           <tr> 
             <td rowspan="3" colspan="">
            <textarea rows=10 style="text-align:left;width:100%;">이혜진님, 안녕하세요. 펫보험 상담사 최지연입니다.이혜진님이 질문해주신 내용에 대한 답변은 차은우를 닮았다고 하여서 보험료 할인을 해드리는 것은 따로 힘들다는 점 양해 부탁드립니다.
            </textarea>
            </td>

            <th align="left"> 분류 </th>
            <td > 펫 </td>
           </tr>

           <tr>
              <th align="left" colspan="2">답변 형태</th>
           </tr>

           <tr>
              <td colspan="2"> 카카오톡 채팅 전송 </td>
           </tr>

          </tbody>
      </table>


      <table class="table table-striped" style="width:100%;">
      	<colgroup>
    		<col style="width:70%;"/>
    		<col style="width:30%"/>
    	</colgroup>
        <thead>
             <tr>
                <th align="left" colspan="2">추가 답변 진행</th>
             </tr>
        </thead>

        <tbody>
           <tr>
             <td style="width:500px;">
               <textarea rows=10 style="text-align:left;width:100%;">이혜진님, 안녕하세요. 펫보험 상담사 최지연입니다.이혜진님이 질문해주신 내용에 대한 추가 답변을 드리겠습니다. 약간 차은우?? 는 5%, 많이 차은우?? 는 10% 할인이 되는 펫 보험 상품이 나왔는데요,관심 있으시다면 참고 부탁드리겠습니다.
             </textarea> 
             </td>

              <td align="center">
                <input type="button" value="카카오톡 전송하기" style="width:100pt;height:20pt;"><br><br>
                <input type="button" value=" 문자 전송하기 " style="width:100pt;height:20pt;"><br><br>
                <input type="button" value=" 취소 " style="width:40pt;height:20pt;background-color:#BDBDBD">
                <input type="button" value=" 등록 " style="width:40pt;height:20pt;background-color:#5FB404;">
              </td>
           </tr>
          </tbody>
        </table>


		</div>
	</div><!-- /.panel-->
	</div><!-- /.col-->
	</div><!-- /.row -->
	</div><!--/.main-->
</body>
