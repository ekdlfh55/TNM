<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>

<div class="bodyEvent">
    <br><br>
    
    <div class="container">
    <div class="headline"><h2>${title }</h2></div>
      <div class="row">
            <div class="col-sm-6 sm-margin-bottom-40">
                <div class="funny-boxes funny-boxes-left-green">
                    <div class="row">
                        <div class="col-md-4 funny-boxes-img">
                            <img class="img-responsive" src="<%=cp%>/res/main/assets/img/album/album7.jpg" alt="">
                            <ul class="list-unstyled">
                            	<li><i class="fa-fw fa fa-map-marker"></i> 종류</li>
                               <li>
                               	<i class="fa-fw fa fa-briefcase"></i>시작날짜 ~
                               	<i class="fa-fw fa fa-briefcase"></i>종료날짜        
                               </li>   
                            </ul>
                        </div>
                        <div class="col-md-8">
                            <h2 align="center"><a href="#">제목</a></h2>              
                            <p>내용cxcxcxcxcxcxcxcxcxcs</p>
                        </div>
                    </div>
                </div>
            </div>
    
        </div>
    </div>    
  
</div><!--/wrapper-->
