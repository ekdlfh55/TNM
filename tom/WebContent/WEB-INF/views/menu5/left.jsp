<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<br><br>
<!---------------------------------왼쪽 사이드바 시작--------------------------------------------->
<div class="col-md-3 md-margin-bottom-40">

	<ul class="list-group sidebar-nav-v1 margin-bottom-40"
		id="sidebar-nav-1">
		<li class="list-group-item active"><a
			href="<%=cp%>/account/pu.jsp"><span
				class="glyphicon glyphicon-home"></span> 이용권구매</a></li>
		<li class="list-group-item"><a href="<%=cp%>/account/tomCD.jsp"><i
				class="fa fa-heart"></i> 톰CD결제</a></li>
		<li class="list-group-item"><a href="<%=cp%>/account/cash.jsp"><i
				class="fa fa-heart"></i> 톰캐쉬충전</a></li>
		<li class="list-group-item"><a href="<%=cp%>/account/account.do"><i
				class="fa fa-heart"></i> 결제페이지</a></li>

	</ul>

</div>