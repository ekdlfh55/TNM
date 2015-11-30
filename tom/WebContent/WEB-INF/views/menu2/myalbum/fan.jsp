<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyFan">

     <div class="container"> 
       
         <div class="col-md-9">
                <div class="profile-body">
                 <!--Basic Table-->
                <div class="panel panel-grey margin-bottom-40">
                 <div class="panel-heading">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-star"></span> 팬맺은 아티스트</h3>
                 </div>
                    <div  class="panel-body">
			             <p>팬맺은 아티스트 입니다.</p>
		                     
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>아티스트 정보</th>
                                <th>듣기</th>
                                <th class="hidden-sm">활동</th>
                                <th>팬수</th>
                                <th>취소</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            	<td>1</td>
                            	<td>
                            		<div class="col-md-2" style="width: 100px; height: 100px;">
                    					<img class="img-responsive" src="<%=cp%>/myalbum/a.jpg" alt=""> 
               						</div>
               					</td>
                                <td>수록곡 :총 10곡</td>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>
                             	   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                             	   <span class="glyphicon glyphicon-star"  style="color:#e67e22;"></span><br></button>
                     		     
								</td>
                     
                            </tr>
                            <tr>
                            	<td>1</td>
                                <td>2</td>
                                <td></td>
                       
                             
                                
                            </tr>
                        </tbody>
                    </table>
                 
                </div>    <!-- panel panel-green -->
                 
                 </div>
                </div>
      	
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
