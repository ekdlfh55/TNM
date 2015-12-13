<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<c:if test="${sessionScope.member.userId==dto.userId ||  sessionScope.member.userId=='admin'}">
<script type="text/javascript">

function deleteBoard(num) {
	var url="<%=cp%>/ovonotice/delete.do?ovoNoticeNum="+num+"&pageNo=${pageNo}";
		
			
	if(confirm("게시물을 삭제 하시겠습니까?"))
		location.href=url;
	
}
</script>
</c:if>

<br><br>

	<div class="container">

		<!-- Begin Content -->
		<div class="col-md-12">

			<!--Basic Table-->
			<div class="panel panel-grey margin-bottom-40">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-tasks"></i>1:1답변 게시판 글보기
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
						
						<c:if test="${sessionScope.member.userId==dto.userId}">   
	                    	<button style="margin-left: 30px;" class="btn btn-warning" type="button" onclick="updateGenre();"><i class="fa fa-search"></i>수정하기</button>
	                    </c:if>
	                    <c:if test="${sessionScope.member.userId==dto.userId ||  sessionScope.member.userId=='admin'}"> 
							<button type="button"  class="btn btn-warning" onclick="deleteGenre();"><i class="fa fa-search"></i>삭제하기</button>
						</c:if>
							<button style="margin-left: 30px;" class="btn btn-warning" type="button" onclick="#">댓글달기</button>
					     	<button type="button" class="btn btn-warning" onclick="javascript:location.href='<%=cp%>/customer/main.do?active=ovonotice'">돌아가기</button>      					
						</div>
					</form>
						<br><hr>

			</div> <!-- 패널 그레이 사십 -->
		</div>
	</div>



	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->
<br><br><br><br><br><br>