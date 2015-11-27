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
                <li class="active">마이페이지</li>
            </ul>
        </div>
    </div>
 <div class="col-md-3 md-margin-bottom-40">
                <img class="img-responsive profile-img margin-bottom-20" src="<%=cp%>/myalbum/a.jpg" alt="">

                <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
                    <li class="list-group-item">
                        <a href="<%=cp%>/myalbum/mypage.do"><span class="glyphicon glyphicon-home"></span> 마이홈피</a>
                    </li>
                    <li class="list-group-item">
                        <a href="<%=cp%>/myalbum/like.do"><i class="fa fa-heart"></i> 좋아요</a>
                    </li>
                    <li class="list-group-item">
                        <a href="<%=cp%>/myalbum/playlist.do"><i class="fa fa-caret-square-o-right"></i> 플레이리스트</a>
                    </li> 
                    <li class="list-group-item">
                        <a href="<%=cp%>/myalbum/recentlyplay.do"><span class="glyphicon glyphicon-music"></span> 최근들은</a>
                    </li>
                    <li class="list-group-item">
                        <a href="<%=cp%>/myalbum/manyplay.do"><span class="glyphicon glyphicon-headphones"></span> 많이들은</a>
                    </li>
                    <li class="list-group-item">
                        <a href="<%=cp%>/myalbum/fan.do"><span class="glyphicon glyphicon-star"></span> 팬맺은 아티스트</a>
                    </li>
                    <li class="list-group-item">
                        <a href="<%=cp%>/myalbum/friends.do"><span class="glyphicon glyphicon-user"></span> 친구</a>
                    </li>
                </ul>
	
            </div>
