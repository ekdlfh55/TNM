<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<br>
<br>
<div class="panel panel-grey margin-bottom-40">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-tasks"></i>공지사항
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
		
		<c:if test="${sessionScope.member.userId=='admin'}">
			<button style="float: right;" class="btn btn-warning" type="button"
				onclick="javascript:location.href='<%=cp%>/notice/created.do';">
				<i class="fa fa-search"></i>글쓰기
			</button>
		</c:if>	
		
		</form>		
	</div>
	<table class="table">
		<thead>
			<tr>
				<th style="text-align: center">No.</th>
				<th style="text-align: center">분류</th>
				<th style="text-align: center">제목</th>
				<th style="text-align: center">작성자</th>
				<th style="text-align: center">등록일</th>
				<th style="text-align: center">조회</th>
			</tr>
		</thead>
		<c:forEach var="dto" items="${list}" varStatus="status">
			<tbody>
				<tr align="center" bgcolor="#ffffff" height="25">
					<c:if test="${status.first && pageNum==1}">
						<td>공지</td>
					</c:if>
					<c:if test="${!status.first || pageNum!=1}">
						<td width="5%">${dto.listNum }</td>
					</c:if>
					<td width="15%">${dto.genre}</td>
					<td align="center" width="40%"><a href="${urlArticle}&num=${dto.num}">${dto.subject}</a></td>
					<td width="15%" align="center">${dto.userName}</td>

					<td  width="15%" align="center">${dto.created}</td>
					<td width="10%" align="center">${dto.hitCount}</td>

				</tr>
			</tbody>
		</c:forEach>
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

