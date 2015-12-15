<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript">

function deleteEvent(){
	<c:if test="${sessionScope.member.userId=='admin' || sessionScope.member.userId!=dto.userId}">
	var eventNum = "${dto.eventNum}";
	var pageNum = "${pageNum}";
	var params = "eventNum="+eventNum+"&pageNum="+pageNum;
	var url="<%=cp%>/event/delete?" + params;
	
	if(confirm("위 자료를 삭제 하시 겠습니까?"))
		location.href=url;
	</c:if>
	<c:if test="${sessionScope.member.userId!='admin' && sessionScope.member.userId!=dto.userId}">
		alert("게시물을 삭제할 수 없습니다.");
	</c:if>
}

function updateEvent() {
	<c:if test="${sessionScope.member.userId==dto.userId}">
		var eventNum = "${dto.eventNum}";
		var pageNum ="${pageNum}";
		var params = "eventNum="+eventNum+"&pageNum="+pageNum;
		var url ="<%=cp%>/admin/event/updateeventform.do?" + params;
		// var url = "<%=cp%>/admin/event.do?" + params;
		
		location.href=url;
		</c:if>
		
	<c:if test="${sessionScope.member.userId!=dto.userId}">
		alert("게시물을 수정할 수 없습니다.");
	</c:if>	
}

</script>

 
<br><br>
	<div class="container">

		<!-- Begin Content -->
		<div class="col-md-12">

			<!--Basic Table-->
			<div class="panel panel-grey margin-bottom-40" >
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-tasks"></i>이벤트
					</h3>
				</div>
				<div class="panel-body" style="margin: 10px auto;">
					<form class="form-inline" name="searchForm" action="" method="post">
						<div class="blog-grid margin-bottom-30" style="margin: 10px auto;">
							<h2 align="center" class="blog-grid-title-lg">${dto.subject}</h2>
							<div align="center">
							 	<img style="width: 450px; height: 250px;" class="img-responsive" src="<%=cp%>/uploads/event/${dto.eventFilename}" alt="">
							</div>
							<hr>
							<div align="center" class="overflow-h margin-bottom-10">
								<i class=" icon-user"> ${dto.division}</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
									class="fa fa-calendar">${dto.createdstart}~${dto.createdend}</i>
								<hr>
							</div>
						</div>
						<br>
						<div>
							<!-- End Blog Grid -->
							<p>${dto.content}</p>
							</div>
							<br>
							<hr>
							<div align="center">	
										
					<c:if test="${sessionScope.member.userId=='admin'}">							
						<button style="margin-left: 30px;" class="btn btn-warning" type="button" onclick="updateEvent();"><i class="fa fa-search"></i>수정하기</button>
						<button type="button"  class="btn btn-warning" onclick=" deleteEvent();"><i class="fa fa-search"></i>삭제하기</button>
					</c:if>	
						<button type="submit" class="btn btn-warning" onclick="window.history.back();">돌아가기</button>
						
						</div>
					</form>
						
				</div> <!--패널바디  -->
			</div> <!-- 패널 그레이 사십 -->
		</div>
	</div>
