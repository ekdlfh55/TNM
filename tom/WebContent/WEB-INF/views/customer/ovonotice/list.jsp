<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!--Basic Table-->
<br><br>
<div class="panel panel-grey margin-bottom-40">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-tasks"></i>1:1 질문 계시판
		</h3>
	</div>
	<div class="panel-body">
		<form class="form-inline" name="searchForm" action="" method="post">
			<select class="form-control" name="searchKey" class="selectField">
				<option value="">분류</option>
				<option value="서비스소식">서비스소식</option>
				<option value="서비스오픈">서비스오픈</option>
				<option value="서비스종료">서비스종료</option>
				<option value="서비스점검">서비스점검</option>
				<option value="안내">안내</option>
			</select>


			<button style="float: right;" class="btn btn-warning" type="button"
				onclick="javascript:location.href='<%=cp%>/ovonotice/created.do';">
				<i class="fa fa-search"></i>글쓰기
			</button>

		</form>

	</div>
	<table class="table">
		<thead>
			<tr align="center">
				<th style="text-align: center">No.</th>
				<th style="text-align: center">분류</th>
				<th style="text-align: center">제목</th>
				<th style="text-align: center">작성자</th>
				<th style="text-align: center">등록일</th>
				<th style="text-align: center">조회</th>
			</tr>
		</thead>
		
		<tbody>
	<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td  width="5%">${dto.listNum}</td>
				<td  width="15%">${dto.division}</td>
				<td  width="40%">
			<c:if test="${dto.depth>0 }">
			    <c:forEach var="n" begin="1" end="${dto.depth }">
			      				&nbsp;&nbsp;
			     </c:forEach>
			      		<img  src="<%=cp%>/main/assets/ima/icons/social/github.png">
			 </c:if>
			 	 	<a href="${urlArticle}&ovoNoticeNum=${dto.ovoNoticeNum}">${dto.subject}</a>
				</td>
				
				<td align="center" width="15%">${dto.userName}</td>
				<td align="center" width="15%">${dto.created}</td>
				<td align="center" width="10%">${dto.hitCount}</td>
				
			</tr>
	</c:forEach>
			
		</tbody>
	</table>

	<div class="panel-footer">
		<table>
			<tr align="center" height="15">
			
					<c:if test="${dataCount==0}">
						등록된 게시물이 없다
					</c:if> 
					
					<c:if test="${dataCount!=0}">
						${pageIndexList}   
					</c:if>				
				
			</tr>
		</table>
		
	</div>
</div>
<!--End Basic Table-->

