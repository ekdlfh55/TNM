<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
					<!-- End 앨범리스트 -->
						</div>
						<div class="tab-pane fade in" id="tab-3">
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
										<form class="form-inline" name="searchForm" action=""
											method="post">

											<select class="form-control" name="searchKey"
												class="selectField">
												<option value="">선택</option>
												<option value="subject">제목</option>
												<option value="userName">작성자</option>
												<option value="content">내용</option>
											</select> <input placeholder="search" type="text" class="form-control"
												name="searchValue" />
											<button class="btn btn-warning" type="button"
												onclick="searchList()">
												<i class="fa fa-search"></i>검색
											</button>
											<button style="float: right;" class="btn btn-warning"
												type="button"
												onclick="javascript:location.href='<%=cp%>/notice/ovoCreated.do';">
												<i class="fa fa-search"></i>글쓰기
											</button>


										</form>

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
											<c:forEach var="OvoNotice" items="${list}">
												<tr align="center" bgcolor="#ffffff" height="25">
													<td align="center">${OvoNotice.listNum}</td>
													<td align="center">${OvoNotice.division}</td>  
													<td>
													<a href="${urlArticle}&boardNum=${OvoNotice.ovoNoticeNum}">${OvoNotice.subject}</a>
													</td>
													<td align="center">${OvoNotice.userName}</td>
													<td align="center">${OvoNotice.created}</td>
													<td align="center">${OvoNotice.hitCount}</td>
												</tr>
												<tr>
													<td height="1" colspan="5" bgcolor="#e4e4e4"></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

									<div class="panel-footer">
										<table>
											<tr height="15">
												<td align="center">
												<c:if test="${dataCount==0}">
													등록된 게시물이 없다
												</c:if> 
												<c:if test="${dataCount!=0}">
														${pageIndexList}   
												</c:if></td>
											</tr>
										</table>
									</div>
								</div>
								<!--End Basic Table-->

							</div>
							<!-- End 앨범리스트 -->

</body>
</html>