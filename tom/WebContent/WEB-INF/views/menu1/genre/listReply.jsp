<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<!--Table Striped-->

<c:if test="${dataCountReply!=0}">
	<table class="table table-striped">
		<c:forEach var="vo" items="${listReply}">
		<div></div>
			<thead>
				<tr>
					<th>글쓴이 : ${vo.userId}</th>
					<th style="float: right">${vo.created}
				 		<c:if test="${sessionScope.member.userId==vo.userId || sessionScope.member.userId=='admin'}">
								| <a onclick='deleteReply("${vo.replyNum}", "${pageNo}");'>삭제</a>
						</c:if>
					</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan='3'>${vo.content}</td>
				</tr>
		</c:forEach>
				<tr height='30'>
					<td colspan='3' align='center'>${pageIndexList}</td>
				</tr>
			</tbody>
	</table>

	<!--End Table Striped-->
</c:if>
