<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>

<script type="text/javascript">
function searchList() {
		var f=document.searchForm;
		f.action="<%=cp%>/genre/list.do";
		f.submit();
}
</script>

<div class="bodyTable">

     <div class="container"> 
       
            <!-- Begin Content -->
            <div class="col-md-9">
	
				<!--Basic Table-->
                <div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-tasks"></i>${title}</h3>
                    </div>
                    <div class="panel-body">
	                    <form class="form-inline" name="searchForm" action="" method="post">
	                          <select class="form-control" name="searchKey" class="selectField">
	                          	<option value="">선택</option>
	                          	<option value="subject">제목</option>
	                          	<option value="userId">작성자Id</option>
	                            <option value="content">내용</option>                              
	                          </select>
	                          	<input placeholder="search" type="text" class="form-control" name="searchValue" />
	                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
	                    		<button style="float: right;" class="btn btn-warning" type="button" onclick="javascript:location.href='<%=cp%>/genre/created.do';"><i class="fa fa-search"></i>글쓰기</button>  
	                    		 <!-- <input type="button" value=" 검 색 " class="btn" onclick="searchList()"/>  -->         
	                    </form>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>아이디</th>
                                <th>날짜</th>
                                <th>조회수</th>
                            </tr>
                   <c:forEach var="dto" items="${list}">
                            <tr height="15">
                                <td>${dto.listNum}</td>
                                <td><a href="${urlArticle}&num=${dto.num}">${dto.subject}</a></td>
                                <td>${dto.userId}</td>
                                <td>${dto.created}</td>
                                <td>${dto.hitCount}</td>
                            </tr>
              	    </c:forEach>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                <!--End Basic Table-->
       
                 <!--Pegination Centered-->
                     <div align="center">
						<table>
								<tr height="30">
					<td align="center" width="700">
					   <c:if test="${dataCount==0}">
					   		등록된 게시물이 없습니다.
					   </c:if>
					   <c:if test="${dataCount!=0}">
					   		${pageIndexList}
					   </c:if>
					</td>
				</tr>
						</table>        
					</div>
                <!--End Pegination Centered-->          
             </div>
      	
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->