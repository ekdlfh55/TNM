<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
 <div class="breadcrumbs">
        <div class="container">
            <ul class="pull-right breadcrumb">
                <li><a href="<%=cp%>">main</a></li>
                <li><a href="">Features</a></li>
                <li class="active">관리자페이지</li>
            </ul>
        </div>
    </div>
  <div class="col-md-3">
           	<div class="headline"><h2>관리자 페이지</h2></div>
                <ul class="list-group sidebar-nav-v1" id="sidebar-nav">
                    
                    <!-- Components -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-components" data-toggle="collapse">맴버관리</a>
                        <ul id="collapse-components" class="collapse">
                            <li><a href="<%=cp%>/admin/member.do"><i class="fa fa-comment"></i>회원관리</a></li>                      
                        </ul>
                    </li>
                    <!-- End Components -->
                    
                    <!-- 노래 -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-artistMusic">음악관리</a>
                        <ul id="collapse-artistMusic" class="collapse">
                            <li><a href="<%=cp%>/admin/music.do"><i class="fa fa-sort-alpha-asc"></i>아티스트음악</a></li>                          
                        </ul>
                    </li>
                    <!-- End 노래 -->
                    
                    
                    <!-- 앨범 -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-artistAlbum">앨범관리</a>
                        <ul id="collapse-artistAlbum" class="collapse">
                            <li><a href="<%=cp%>/admin/album.do"><i class="fa fa-sort-alpha-asc"></i>아티스트앨범</a></li>                          
                        </ul>
                    </li>
                    <!-- End 앨범 -->

                    <!-- 아티스트 -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-artist">아티스트관리</a>
                        <ul id="collapse-artist" class="collapse">
                            <li><a href="<%=cp%>/admin/artist.do"><i class="fa fa-flask"></i> 아티스트리스트</a></li>                               
                        </ul>
                    </li>
                    <!-- End 아티스트-->

                    <!-- 이밴트-->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-event">이벤트</a>
                        <ul id="collapse-event" class="collapse">
                            <li><a href="<%=cp%>/admin/event.do"><i class="fa fa-chevron-circle-right"></i>이벤트 관리</a></li>         
                        </ul>
                    </li>
                    <!-- End 이벤트 -->

                    <!-- 결제 -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-account" data-toggle="collapse">결제관리</a>
                        <ul id="collapse-account" class="collapse">
                            <li><a href="<%=cp%>/admin/account.do"><i class="fa fa-dot-circle-o"></i>결제</a></li>    
                        </ul>
                    </li>
                    <!-- End 결제 -->

                    <!-- Forms -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-musicStory" data-toggle="collapse">뮤직스토리</a>
                        <ul id="collapse-musicStory" class="collapse">
                            <li><a href="<%=cp%>/admin/musicstory.do"><i class="fa fa-bars"></i> 뮤직스토리 관리</a></li>                           
                        </ul>
                    </li>
                    <!-- End Forms -->
      
                </ul>
            </div>