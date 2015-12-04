<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyGenre">

	<!--=== Breadcrumbs v1 ===-->
	<div class="breadcrumbs">
		<div class="container">
			
			<ul class="pull-right breadcrumb">
				<li><a href="<%=cp%>">Main</a></li>
				<li><a href="">Features</a></li>
				<li class="active">${title }</li>
			</ul>
		</div>
	</div>

	<div class="container">
		 <div class="headline"><h2>${title }</h2></div>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td><a style="color: black;" href="<%=cp%>/story/ganreStroy.do">아티스트갤러리</a></td>
					<td><a style="color: black;" href="#">공감카툰</a></td>
					<td><a style="color: black;" href="#">릴레이 인터뷰</a></td>
					<td><a style="color: black;" href="#">금주의 차트</a></td>
				</tr>
				<tr>
					<td><a style="color: black;" href="#">톡톡 클래식</a></td>
					<td><a style="color: black;" href="#">Club</a></td>
					<td><a style="color: black;" href="#">HipHop</a></td>
					<td><a style="color: black;" href="#">RnB</a></td>
				</tr>
				<tr>
					<td><a style="color: black;" href="#">Edm</a></td>
					<td><a style="color: black;" href="#">Jazz</a></td>
					<td><a style="color: black;" href="#">언더커버뮤직</a></td>
					<td><a style="color: black;" href="#">별님의 선택</a></td>
				</tr>
				<tr>
					<td><a style="color: black;" href="#">이주의 히든트랙</a></td>
					<td><a style="color: black;" href="#">라이브세션</a></td>
					<td><a style="color: black;" href="#">인디차트</a></td>
					<td><a style="color: black;" href="#">이슈포커스</a></td>
				</tr>
			</tbody>
		</table>
		<hr>
		   <!-- 오늘의 스토리 -->
                <div><h3>아티스트갤러리(타이틀로 바꿀꺼 모드로)</h3></div>
                <div>
                <h4>내용</h4>
                </div>               
	              <hr> 
	                <div>
	                    <div>
		                  <div id="collapse-One" class="panel-collapse collapse in">
	                            <div class="panel-body">
	                                <div class="row">	                                	
	                                    <div class="col-md-3">
	                                        <img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="">
	                                    </div>
	                                    <div class="col-md-7">
	                                        <a href="#"><font>제목</font></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;날자
	                                    </div>
	                                     <div class="col-md-7">내용</div>	
	                                     <div class="col-md-2"> 
		                                     <i class="icon-custom rounded-x icon-color-grey fa fa-heart"></i>
			                           		<span>좋아요수</span><br> 
			                           		 <i class="icon-custom rounded-x icon-color-grey fa fa-comments-o"></i>
			                           		<span>댓글수</span> <br>
			                           		 <i class="icon-custom rounded-x icon-color-grey fa fa-hand-o-up"></i>
			                           		<span>조회수</span>
		                           		</div>                                    
		                           </div>
		                                                                  
	                            </div>
	                        </div>     
	                    </div>                
	                </div>
	                <hr>       	                
			<!-- 오늘의 스토리 -->
			<!--  패이징 -->
		<div align="center">
			<table>
				<tr  height="15">
					<td align="center">
						1 2 3
					</td>
				</tr>
			</table>        
		</div>
			
	</div>
</div>
