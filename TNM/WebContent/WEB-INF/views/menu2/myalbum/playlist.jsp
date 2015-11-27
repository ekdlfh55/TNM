<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyPlaylist">

     <div class="container"> 
       
          <div class="col-md-9">
                <div class="profile-body">
                 <!--Basic Table-->
                <div class="panel panel-grey margin-bottom-40">
                 <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-caret-square-o-right"></i> 플레이리스트</h3>
                 </div>
                    <div  class="panel-body">
			             <p>플레이한 곡들 입니다.</p>
		                       <input type="button" class="btn btn-xs rounded btn-default" value="전체선택">
		               		   <!--   <i class="fa fa-check-square-o "></i> -->
		                     	  
		                  	   <button type="submit" name="" class="btn btn-xs rounded btn-default">
		          		       <i class="fa fa-dot-circle-o " style="color:#e67e22;"></i>CD제작<br></button>
		                                
		                       <button type="submit" name="" class="btn btn btn-xs rounded btn-default">
		                       <i class="fa fa-plus-square-o"></i> 담기   <br></button>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>플레이리스트 정보</th>
                                <th></th>
                                <th>듣기</th>
                                <th class="hidden-sm">아티스트</th>
                                <th>앨범공유</th>
                                <th>CD제작</th>
                                <th>삭제</th>
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
                     		       <i class="fa fa-cloud-upload " style="color:#e67e22;"></i>앨범공유<br></button>
								</td>
                                <td>
                             	   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                     		       <i class="fa fa-dot-circle-o " style="color:#e67e22;"></i>CD제작<br></button>
                                </td>
                                <td>
                                	<button type="submit" name="" class="btn btn-xs rounded btn-default">
                     		       <i class="fa  fa-trash-o" style="color:#e67e22;"></i>삭제<br></button>
                                </td>
                            </tr>
                            <tr>
                            	<td>1</td>
                                <td>2</td>
                                <td></td>
                                <td>Jacob</td>
                                <td class="hidden-sm">Thornton</td>
                             
                                
                            </tr>
                        </tbody>
                    </table>
                 
                </div>    <!-- panel panel-green -->
                 
                 </div>
                </div>
                
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
