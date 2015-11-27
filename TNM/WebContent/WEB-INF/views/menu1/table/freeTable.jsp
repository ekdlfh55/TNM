<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyTable">

     <div class="container"> 
       
            <!-- Begin Content -->
            <div class="col-md-9">
	
				<!--Basic Table-->
                <div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-tasks"></i>자유게시판</h3>
                    </div>
                    <div class="panel-body">
	                    <form class="form-inline" name="searchForm" action="" method="post">
	                          <select class="form-control" name="searchKey" class="selectField">
	                          	<option value="">선택</option>
	                          	<option value="subject">제목</option>
	                          	<option value="userName">작성자</option>
	                            <option value="content">내용</option>                              
	                          </select>
	                          	<input placeholder="search" type="text" class="form-control" name="searchValue" />
	                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
	                    		<button style="float: right;" class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>글쓰기</button>            
	                    </form>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Num</th>
                                <th>파일</th>
                                <th class="hidden-sm">제목</th>
                                <th>이름</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mark</td>
                                <td class="hidden-sm">Otto</td>
                                <td>@mdo</td>
                                <td><span class="label label-warning">Expiring</span></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jacob</td>
                                <td class="hidden-sm">Thornton</td>
                                <td>@fat</td>
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
                </div>
                <!--End Basic Table-->
       
                 <!--Pegination Centered-->
                     <div align="center">
						<table>
							<tr  height="15">
								<td >
								1 2 3
								</td>
							</tr>
						</table>        
					</div>
                <!--End Pegination Centered-->          
             </div>
      	
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
