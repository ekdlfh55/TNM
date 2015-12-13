<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function searchMember() {
	var f=document.searchForm;
	f.action="<%=cp%>/freeBoard/list";
 	f.submit();
}
</script>

<br><br>
<div class="panel panel-grey margin-bottom-40">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-tasks"></i>맴버 리스트
		</h3>
	</div>
	<div class="panel-body">
		<form class="form-inline" name="searchMember" action="" method="post">
			<select class="form-control" name="searchKey" class="selectField">
				<option value="">분류</option>
				<option value="아이디">아이디</option>
				<option value="등록일">등록일</option>
				<option value="전화번호">전화번호</option>
				<option value="이메일">이메일</option>
			</select>
			
			<input  type="text" class="form-control" name="searchValue" />
	        <button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
	                    		
		</form>
	</div>
	
	<table class="table">
		<thead>
			<tr align="center">
				<th style="text-align: center">아이디</th>
				<th style="text-align: center">이름</th>
				<th style="text-align: center">생일</th>
				<th style="text-align: center">이메일</th>
				<th style="text-align: center">전화번호</th>
				<th style="text-align: center">가입일</th>
				<th style="text-align: center">마일리지</th>
				<th style="text-align: center">캐쉬</th>
			</tr>
		</thead>
		
		<tbody>
	<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td  width="5%">${dto.userId}</td>
				<td  width="15%">${dto.userName}</td>
				<td align="center" width="15%">${dto.birth}</td>
				<td align="center" width="15%">${dto.email}</td>
				<td align="center" width="10%">${dto.tel}</td>
				<td align="center" width="10%">${dto.created_date}</td>
				<td align="center" width="10%">마일</td>
				<td align="center" width="10%">캐쉬</td>	
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

