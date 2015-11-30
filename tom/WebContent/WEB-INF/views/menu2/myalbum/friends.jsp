<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyFriends">

     <div class="container"> 
       
         <div class="col-md-9">
    
       <!--Basic Table-->
        <div class="panel panel-grey margin-bottom-40">
          <div class="panel-heading">
              <h3 class="panel-title"><span class="glyphicon glyphicon-music"></span> 친구</h3>
          </div>
          <div class="panel-body">
              <p>내가 추가한 친구 목록입니다^^</p>
          </div>

  <!-------------------------------- 사진 시작 Easy Blocks v2 -------------------------------------->
        <div class="row" style="margin: auto 10px;">
            <!-- Begin Easy Block -->                
            <div class="col-md-3 col-sm-6 md-margin-bottom-40">
                <div class="easy-block-v2" >
                    <div class="easy-bg-v2 rgba-default">New</div>
                    <img alt="" src="<%=cp%>/myalbum/c.jpg" style="width: 180px; height: 130px;">        
                    <h3>UBS Headquarter Zürich</h3>
                    <ul class="list-unstyled">
                        <li><span class="color-green">Position:</span> Manager / Executive</li>
                        <li><span class="color-green">Required:</span> 5 - years of experience</li>
                        <li><span class="color-green">Gender:</span> Male</li>
                    </ul>    
                    <a class="btn-u btn-u-sm" href="#">View More</a>
                </div>  
            </div>
            <!-- End Begin Easy Block -->                
            
            <!-- Begin Easy Block -->                
            <div class="col-md-3 col-sm-6 md-margin-bottom-40">
                <div class="easy-block-v2">
                    <div class="easy-bg-v2 rgba-red">New</div>
                    <img alt="" src="<%=cp%>/myalbum/c.jpg" style="width: 180px; height: 130px;">
                    <h3>Royal Dutch Shell</h3>
                    <ul class="list-unstyled">
                        <li><span class="color-green">Position:</span> Marketing / Advertising</li>
                        <li><span class="color-green">Required:</span> 7 - years of experience</li>
                        <li><span class="color-green">Gender:</span> Any</li>
                    </ul>    
                    <a class="btn-u btn-u-sm" href="#">View More</a>
                </div>
            </div>
            <!-- End Begin Easy Block -->                
            
            <!-- Begin Easy Block -->                
            <div class="col-md-3 col-sm-6 md-margin-bottom-40">
                <div class="easy-block-v2">
                    <div class="easy-bg-v2 rgba-blue">New</div>
                    <img alt="" src="<%=cp%>/myalbum/c.jpg" style="width: 180px; height: 130px;">
                    <h3>University of Warwick</h3>
                    <ul class="list-unstyled">
                        <li><span class="color-green">Position:</span> Education / Training</li>
                        <li><span class="color-green">Required:</span> 10 - years of experience</li>
                        <li><span class="color-green">Gender:</span> Male</li>
                    </ul>    
                    <a class="btn-u btn-u-sm" href="#">View More</a>
                </div>
            </div>
            <!-- End Begin Easy Block -->                
             
             <!-- Begin Easy Block -->                
            <div class="col-md-3 col-sm-6 md-margin-bottom-40">
                <div class="easy-block-v2">
                    <div class="easy-bg-v2 rgba-blue">New</div>
                    <img alt="" src="<%=cp%>/myalbum/b.jpg" style="width: 180px; height: 130px;">
                    <h3>University of Warwick</h3>
                    <ul class="list-unstyled">
                        <li><span class="color-green">Position:</span> Education / Training</li>
                        <li><span class="color-green">Required:</span> 10 - years of experience</li>
                        <li><span class="color-green">Gender:</span> Male</li>
                    </ul>    
                    <a class="btn-u btn-u-sm" href="#">View More</a>
                </div>
            </div>
            <!-- End Begin Easy Block -->   
            
        </div>
        <!-- End Easy Blocks v2 -->         
    </div>
</div>
      	
    </div>
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
