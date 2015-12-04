<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Progress Bars Examples -->
	<div class="tab-pane fade in" id="tab-2">
		<div class="margin-bottom-20"></div>

		<div class="row">
			<!--Basic Table-->
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
							<option value="subject">서비스소식</option>
							<option value="userName">서비스오픈</option>
							<option value="content">서비스종료</option>
							<option value="content">서비스점검</option>
							<option value="content">안내</option>
						</select>
					</form>
					<div align="right">
						<button class="btn btn-warning" type="button"
							onclick="searchList()">
							<i class="fa fa-search"></i>글쓰기
						</button>
					</div>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th>Num</th>
							<th>분류</th>
							<th>제목</th>
							<th>조회</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>서비스종료</td>
							<td><a href="#">t.melon.com 서비스 종료 안내</a></td>
							<td>21</td>
							<td>2015.09.24</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Jacob</td>
							<td class="hidden-sm">Thornton</td>
							<td><span class="label label-warning">Expiring</span></td>
							<td><span class="label label-success">Success</span></td>
						</tr>
						<tr>
							<td>3</td>
							<td>Larry</td>
							<td class="hidden-sm">the Bird</td>
							<td>@twitter</td>
							<td><span class="label label-danger">Error!</span></td>
						</tr>
						<tr>
							<td>4</td>
							<td>htmlstream</td>
							<td class="hidden-sm">Web Design</td>
							<td>@htmlstream</td>
							<td><span class="label label-info">Pending..</span></td>
						</tr>
					</tbody>
				</table>

				<div class="panel-footer">
					<table>
						<tr height="15">
							<td align="center"><c:if test="${dataCount==0}">
																	등록된 게시물이 없다
															</c:if> <c:if test="${dataCount!=0}">
																${pageIndexList}   
															</c:if></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
			<!--End Basic Table-->
</body>
</html>