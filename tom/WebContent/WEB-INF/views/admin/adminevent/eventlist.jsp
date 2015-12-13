<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<br><br>

	<div class="panel panel-grey margin-bottom-40">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-tasks"></i>이벤트 리스트
			</h3>
		</div>
		<div class="panel-body">
			<form class="form-inline" name="searchartist" action="" method="post">
			<select class="form-control" name="searchKey" class="selectField">
				<option value="">분류</option>
				<option value="division">구분</option>
				<option value="subject">제목</option>
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
					<th style="text-align: center">제목</th>
					<th style="text-align: center">시작일</th>
					<th style="text-align: center">마감일</th>
					<th style="text-align: center">삭제</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list}">
					<tr align="center">
						<td  width="5%">${dto.listNum}</td>
						<td  width="15%">${dto.division}</td>
						<td align="center" width="35%">${dto.subject}</td>
						<td align="center" width="15%">${dto.createdstart}</td>
						<td align="center" width="15%">${dto.createdend}</td>
						<td align="center" width="15%"><button class="btn btn-warning btn-xs"><i class="fa fa-trash-o"></i>&nbsp;삭제</button></td>
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
