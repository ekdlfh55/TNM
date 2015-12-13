<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript">


function updateGenre() {
	<c:if test="${sessionScope.member.userId==dto.userId}">
	  var num = "${dto.num}";
	  var pageNo = "${pageNo}";
	  var params = "num="+num+"&pageNo="+pageNo;
		var url="<%=cp%>/notice/update?"+params;
		
			location.href=url;
		</c:if>
		
		<c:if test="${sessionScope.member.userId!=dto.userId}">
		 alert("게시물을 수정할 수 없습니다.");
		</c:if>
		
			
}
function deleteGenre() {
	<c:if test="${sessionScope.member.userId=='admin' || sessionScope.memever.userId==dto.userId}">
	var num = "${dto.num}";
	var pageNo="${pageNo}";
	var params = "num=" +num + "&pageNo=" +pageNo;
	var url="<%=cp%>/notice/delete.do?" +params;
	
	if(confirm("위 자료를 삭제 하시겠습니까?"))
		location.href=url;
	</c:if>
	<c:if test="${sessionScope.member.userId!='admin' && sessionScope.member.userId!=dto.userId}" >
		alert("게시물을 삭제할 수 없습니다.");
	</c:if>
}





</script>
<br><br>



	<div class="container">

		<!-- Begin Content -->
		<div class="col-md-12">

			<!--Basic Table-->
			<div class="panel panel-grey margin-bottom-40">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-tasks"></i>공지사항
					</h3>
				</div>
				<div class="panel-body">
					<form class="form-inline" name="searchForm" action="" method="post">
						<div class="blog-grid margin-bottom-30">
							<h2 class="blog-grid-title-lg">${dto.subject}</h2>
							<hr>
							<div class="overflow-h margin-bottom-10">
								<i class="fa fa-user"> ${dto.genre}</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<i class="fa fa-calendar">날짜 &nbsp; ${dto.created}</i>&nbsp;&nbsp;&nbsp;&nbsp;
								<i class="fa fa-calendar">조회수 &nbsp; ${dto.hitCount}</i>
								<hr>


							</div>
						</div>
						<br>
						<div>
							<!-- End Blog Grid -->
							<p>내용&nbsp; | &nbsp; ${dto.content}</p>
						</div>
						<br>
						<hr>


						<div align="center">
							<c:if test="${sessionScope.member.userId=='admin'}">
								<button style="margin-left: 30px;" class="btn btn-warning"
									type="button" onclick="updateGenre();">
									<i class="fa fa-search"></i>수정하기
								</button>
								<button type="button" class="btn btn-warning"
									onclick="deleteGenre();">
									<i class="fa fa-search"></i>삭제하기
								</button>
							</c:if>
							<button type="button" class="btn btn-warning"
								onclick="javascript:location.href='<%=cp%>/customer/main.do?active=notice'">돌아가기</button>

						</div>
					</form>
					<br>
					<hr>
				</div>
				<!--패널바디  -->
			</div>
			<!-- 패널 그레이 사십 -->
		</div>
	</div>

