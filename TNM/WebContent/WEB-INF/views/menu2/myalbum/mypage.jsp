<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyPage">

     <div class="container"> 
       
          <div class="col-md-9">
                <div class="profile-body">
 	               
 	               <div class="panel panel-grey margin-bottom-40">
	                 <div class="panel-heading">
	                     <h3 class="panel-title"><i class="fa fa-user"></i>내 정보</h3>
	                 </div>
	                 <div class="panel-body">
	                 <!-- Horizontal Description -->
                     <div class="col-md-7" align="left">
                         <!-- <div class="headline"><h2>Horizontal Description</h2></div> -->
                         <dl class="dl-horizontal">
                             <dt>아이디</dt>
                             <dd>hbm1300</dd>
                             <dt>소개글</dt>
                             <dd>안녕하세요</dd>                                
                             <dt>소속사</dt>
                             <dd>아메바컬쳐<br><br></dd>
                             <dt>공유하기</dt>
                             <dd>
                           <ul class="social-icons social-icons-color">
                              <li><a href="#" data-original-title="Facebook" class="rounded-x social_facebook"></a></li>
                              <li><a href="#" data-original-title="Twitter" class="rounded-x social_twitter"></a></li>
                           </ul>
                     </dd>
                         </dl>
                     </div>
                     <!-- End Horizontal Description -->
                     <div class="counters col-md-3 col-sm-3" align="right">
                             <a href="#"><i class="icon-custom rounded-x icon-bg-orange fa fa-thumbs-up  "></i></a>
                             <span class="right">5389</span>
                     </div>
          			</div>     
            	</div>
                <!------------------------------------------ 메인바디시작 -------------------------------------->
              
              <!------------------------------------------ 최근들은곡 -------------------------------------->
              <div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-music"></span> 최근들은곡</h3>
                    </div>
                    <div class="panel-body">
                        <p>최근들은 노래 목록입니다^^</p>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>곡명</th>
                                <th class="hidden-sm">아티스트</th>
                                <th>앨범</th>
                                <th>좋아요</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                                <td>
                                   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                             	   <i class="fa fa-heart" style="color:#e67e22;"></i><br></button>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                                <td>
                                   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                             	   <i class="fa fa-heart" style="color:#e67e22;"></i><br></button>
                                </td>
                            </tr>
  							 <tr>
                                <td>3</td>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                                <td>
                                   <button type="submit" name="" class="btn btn-xs rounded btn-default">
                             	   <i class="fa fa-heart" style="color:#e67e22;"></i><br></button>
                                </td>
                            </tr>
                           
                        </tbody>
                    </table>
                </div>
                <!--End Basic Table-->
               <!-------------------------------------------  end 최근들은곡 --> 
               <!--  방명록 -->
               
                <!-- Inline Form -->
                <div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-tasks"></i>방명록</h3>
                    </div>
                    
                    <div class="panel-body">
                        <form action="#"method="post">
	                        <div class="row">
	                        	<div  class="col-md-3">
		                            <div align="center" class="form-group">
		                            	<!-- 유저 사진 -->
		                 				<img  style="width: 150px; height: 150px;" alt=""src="<%=cp%>/myalbum/a.jpg">
		                            </div>
		                        </div>
	                            <div  class="col-md-7">
	                            	<textarea placeholder="덧글을 입력하세요" style="resize:none;width: 100%;height: 150px;"></textarea>
	                            
	                            </div>
	                            <div  class="col-md-2">
	                            	<button style="width:100px; height: 150px;">확인</button>
	                            </div>
	                         </div>   
                        </form>
                    </div>
                </div>
                <!-- End Inline Form -->
               
                </div> 
                 
                 </div>
      	
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
