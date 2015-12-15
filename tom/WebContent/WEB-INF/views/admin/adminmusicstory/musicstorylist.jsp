<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function searchMusicStory() {
	var f=document.searchForm;
	f.action="<%=cp%>/admin/musicstory/musicstorylist";
 	f.submit();
}

function deleteMusicStory(){
	<c:if test="${sessionScope.member.userId=='admin' || sessionScope.member.userId!=dto.userId}">
	var num = "${dto.num}";
	var pageNum = "${pageNum}";
	var params = "num="+num+"&pageNum="+pageNum;
	var url="<%=cp%>/musicstory/delete?" + params;
	
	if(confirm("위 자료를 삭제 하시 겠습니까?"))
		location.href=url;
	</c:if>
	<c:if test="${sessionScope.member.userId!='admin' && sessionScope.member.userId!=dto.userId}">
		alert("게시물을 삭제할 수 없습니다.");
	</c:if>
}
</script>

<br><br>
<div class="panel panel-grey margin-bottom-40">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-tasks"></i>뮤직스토리 리스트
		</h3>
	</div>
	<div class="panel-body">
		<form class="form-inline" name="searchMusicStory" action="" method="post">
			<select class="form-control" name="searchKey" class="selectField">
				<option value="">분류</option>
				<option value="제목">제목</option>
				<option value="구분">구분</option>
			</select>
			
			<input  type="text" class="form-control" name="searchValue" />
	        <button class="btn btn-warning" type="button" onclick="deleteMusicStory()"><i class="fa fa-search"></i>검색</button>
	                    		
		</form>
	</div>
	
	<table class="table">
		<thead>
			<tr align="center">
				<th style="text-align: center">No.</th>
				<th style="text-align: center">제목</th>
				<th style="text-align: center">구분</th>
				<th style="text-align: center">등록일</th>
				<th style="text-align: center">삭제여부</th>

			</tr>
		</thead>
		
		<tbody>
	<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td  width="5%">${dto.listNum}</td>
				<td  width="15%">${dto.subject}</td>
				<td align="center" width="15%">${dto.division}</td>
				<td align="center" width="15%">${dto.created}</td>
				<td align="center" width="15%"><button class="btn btn-warning btn-xs" onclick="deleteList()"><i class="fa fa-trash-o"></i>&nbsp;삭제</button></td>
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

