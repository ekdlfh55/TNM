<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function searchartist() {
	var f=document.searchForm;
	f.action="<%=cp%>/artist/list";
 	f.submit();
}
</script>
<br><br>

	<div class="panel panel-grey margin-bottom-40">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-tasks"></i>아티스트 리스트
			</h3>
		</div>
		<div class="panel-body">
			<form class="form-inline" name="searchartist" action="" method="post">
			<select class="form-control" name="searchKey" class="selectField">
				<option value="">분류</option>
				<option value="artistName">아티스트 이름</option>
				<option value="type">구분</option>
			</select>
			
			<input  type="text" class="form-control" name="searchValue" />
	        <button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
	                    		
		</form>
	
		</div>
		
		<table class="table">
			<thead>
				<tr align="center">
					<th style="text-align: center">No.</th>
					<th style="text-align: center">구분</th>
					<th style="text-align: center">이름</th>
					<th style="text-align: center">생일</th>
					<th style="text-align: center">데뷔일</th>
					<th style="text-align: center">소속사</th>
					<th style="text-align: center">삭제</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}">
					<tr align="center">
						<td  width="5%">${dto.listNum}</td>
						<td  width="10%">${dto.type}</td>
						<td align="center" width="25%">${dto.artistName}</td>
						<td align="center" width="15%">${dto.birth}</td>
						<td align="center" width="15%">${dto.date}</td>
						<td align="center" width="15%">${dto.sosoksa}</td>
						<td align="center" width="15%"><button class="btn btn-warning btn-xs"><i class="fa fa-trash-o"></i>&nbsp;삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
	
		<div class="panel-footer">
		
		</div>
	</div>
