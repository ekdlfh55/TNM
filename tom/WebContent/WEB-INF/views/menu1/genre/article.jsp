<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript">



function updateGenre() {
	<c:if test="${sessionScope.member.userId==dto.userId}">
	  var num = "${dto.num}";
	  var pageNum = "${pageNum}";
	  var params = "num="+num+"&pageNum="+pageNum;
		var url="<%=cp%>/genre/update?"+params;
		
			location.href=url;
		</c:if>
		
		<c:if test="${sessionScope.member.userId!=dto.userId}">
		 alert("게시물을 수정할 수 없습니다.");
		</c:if>
		
			
}
function deleteGenre() {
	<c:if test="${sessionScope.member.userId=='admin' || sessionScope.memever.userId==dto.userId}">
	var num = "${dto.num}";
	var pageNum="${pageNum}";
	var params = "num=" +num + "&pageNum=" +pageNum;
	var url="<%=cp%>/genre/delete.do?" +params;
	
	if(confirm("위 자료를 삭제 하시겠습니까?"))
		location.href=url;
	</c:if>
	<c:if test="${sessionScope.member.userId!='admin' && sessionScope.member.userId!=dto.userId}" >
		alert("게시물을 삭제할 수 없습니다.");
	</c:if>
}

 $(function() {
	listPage(1);
})  

function listPage(page) {
	var url="<%=cp%>/genre/listReply.do";
	var num="${dto.num}";
	
	$.post(url,{num:num, pageNo:page},function(data) {
		$("#listReply").html(data);
	});
	
 }
function sendReply() {
	var num="${dto.num}";
	
	var content=$.trim($("#content").val());
	if(!content) {
		alert("내용을 입력 하세요!!");
		$("#content").focus();
		return false;
	}
	var params = "num=" + num;
	params+="&content="+content;
	params+="&answer=0";
	
	$.ajax({
		type:"post"
		,url:"<%=cp%>/genre/insertGenreReply.do"
		,data:params
		,dataType:"json"
		,success:function(data) {
			$("#content").val("");
			var state=data.state;
			if(state=="loginFail") {
				lacation.href="<%=cp%>/member/login.do";
				return false;
			}
		
			listPage(1);
		}
		,error:function(e) {
			alert(e.responseText);
		}
	})
}	
	
function deleteReply(replyNum, pageNo) {
	if(!confirm("게시물을 삭제하시겠습니까?"))
		return false;
	var url="<%=cp%>/genre/deleteReply.do";
	$.post(url,{replyNum:replyNum},function(data) {
		if(data.state=="loginFail") {
			location.href="<%=cp%>/member/login.do";
		}else if(data.state=="false") {
			alert("게시물을 삭제 할 수 없습니다.");
		}else {
			listPage(pageNo);
		}
	},"json");
}

</script>

<div class="bodyTable" >

	<div class="container">

		<!-- Begin Content -->
		<div class="col-md-9">

			<!--Basic Table-->
			<div class="panel panel-grey margin-bottom-40">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-tasks"></i>가요 게시판 글보기
					</h3>
				</div>
				<div class="panel-body">
					<form class="form-inline" name="searchForm" action="" method="post">
						<div class="blog-grid margin-bottom-30">
							<h2 class="blog-grid-title-lg"> ${dto.subject}</h2>
							<hr>
							<div class="overflow-h margin-bottom-10">
								<i class="fa fa-user">아이디 &nbsp; ${dto.userId}</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<i class="fa fa-calendar">날짜 &nbsp; ${dto.created}</i>
								<hr>
								

							</div>
						</div>
						<br>
						<div>
							<!-- End Blog Grid -->
							<p>내용&nbsp;  | &nbsp; ${dto.content}</p>
						</div>
						<br>
						<hr>
						
						<div align="center">
	                    		<button style="margin-left: 30px;" class="btn btn-warning" type="button" onclick="updateGenre();"><i class="fa fa-search"></i>수정하기</button> 
								<button type="button"  class="btn btn-warning" onclick="deleteGenre();"><i class="fa fa-search"></i>삭제하기</button>
					     		<button type="submit" class="btn btn-warning" onclick="window.history.back();">돌아가기</button>
                      					
						</div>
					</form>
						<br><hr>

					<!--/end row-->


					<!-- End Blog Thumb v4 -->

					<div>
						<!-- Form -->
						
						
								<div class="row" >
									<div align="center" class="col-md-2" style="margin-left:50px; ">
										<div align="center">
											<img class="rounded-x" style="width: 100px; height: 100px;"
												src="<%=cp%>/res/main/assets/img/album/album1.jpg" />
										</div>
										<br>
										<div style="color:#555" align="center">
											<input type="text" name="name" id="name" placeholder="이름"
												 style="color:#555; text-align:center " class="form-control bg-color-light" readonly="readonly" value="${dto.userId}">
										</div>
									</div>
									<div align="center" class="col-md-6" style="width: 70%; margin-bottom: 30px;">
										<textarea  rows="5" name="content" id="content"
											placeholder="여기에 글을 쓰세요ㅎㅎㅎ ..."
											class="form-control bg-color-light" style="resize: none; color: #555;"></textarea>

										<button style="float: right; margin: 2px;" type="reset" class="btn btn-u-orange">취소</button>
										<button style="float: right; margin: 2px;" type="button" class="btn btn-u-warning" onclick="sendReply()">확인</button>
									</div>
									
									<div style="height: 30px;"></div>
								<div id="listReply" style="width:710px; margin: 0px auto;"></div>
								</div>

							<!-- <div align="right">
						<button type="button" class="btn btn-u-warning">확인</button>
						<button type="reset" class="btn btn-u-orange">취소</button>
					</div> -->
					
					</div><!-- 댓글폼 -->
					
				</div> <!--패널바디  -->
			</div> <!-- 패널 그레이 사십 -->
		</div>
	</div>



	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->