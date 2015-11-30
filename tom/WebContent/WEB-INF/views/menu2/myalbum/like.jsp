<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyLike">

     <div class="container"> 
       
          <div class="col-md-9">
                <div class="profile-body">
                 <!--Basic Table-->
                <div class="panel panel-grey margin-bottom-40">
            
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-heart"></i> 좋아요</h3>
                        
                    </div>
          		 
                    <div class="panel-body">
                        <p>좋아요한 곡들입니다</p>
                   
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
                                <td>ㅎㅎ</td>
                                <td>Otto</td>
                                <td></td>
                                <td>
                               	   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                             	   <i class="fa fa-heart" style="color:#e67e22;"></i><br></button>
                                </td>
                                
                                
                            </tr>
                            <tr>
                            	<td>1</td>
                                <td>2</td>
                                <td></td>
                                <td>Jacob</td>
                                <td class="hidden-sm">Thornton</td>
                                <td>@fat</td>
                                <td><span class="label label-success">Success</span></td>
                                
                            </tr>
                        </tbody>
                    </table>
                 
                </div>    <!-- panel panel-green -->
                 
                 </div>
               </div>
      	
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
