<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyRecentlyplay">

     <div class="container"> 
       
          <div class="col-md-9">
                <div class="profile-body">
                 <!--Basic Table-->
                <div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-music"></span> 최근들은</h3>
                    </div>
                    <div class="panel-body">
                        <p>최근 들은 곡들 입니다</p>
	                      <p style="margin: 0px;"><input type="button" class="btn btn-xs rounded btn-default" value="전체선택">
	               			 <!--   <i class="fa fa-check-square-o "></i> -->
	                     	  
	                     	  <button type="submit" name="" class="btn btn-xs rounded btn-default" >
	                     	  <i class="fa fa-caret-square-o-right"></i>듣기</button>
	                     	  
	                     	  <button type="submit" name="" class="btn btn-xs rounded btn-default">
	                     	  <i class="fa fa-plus-square-o"></i> 담기   <br></button>
	                 		</p>
                    </div>
	             
                    <table class="table">
                        <thead>
                            <tr>
                            	<th><input type="checkbox" name="check_all"/></th>
                                <th>번호</th>
                                <th></th>
                                <th>곡명</th>
                                <th class="hidden-sm">아티스트</th>
                                <th>앨범</th>
                                <th>좋아요</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            	<td><input type="checkbox" name="input_check" value="1"/></td>
                                <td>1</td>
                                <td>
                                 <a href="">
                                 	<i class="fa fa-caret-square-o-right">&nbsp;&nbsp;&nbsp;</i></a>
                                 <a href="">
                               		<i class="fa fa-plus-square-o"></i></a></td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>
 								   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                             	   <i class="fa fa-heart" style="color:#e67e22;"></i><br></button>
								</td>
                            </tr>
                            <tr>
                            	<td><input type="checkbox" name="input_check" value="1"/></td>
                                <td>2</td>
                                <td>
                                 <a href="">
                                 	<i class="fa fa-caret-square-o-right">&nbsp;&nbsp;&nbsp;</i></a>
                                 <a href="">
                               		<i class="fa fa-plus-square-o"></i></a></td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>
 								   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                             	   <i class="fa fa-heart" style="color:#e67e22;"></i><br></button>
								</td>
                            </tr>
                        </tbody>
                    </table>
                 
                </div>    <!-- panel panel-green -->
                 
                 </div>
                </div>
      	
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
