<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyGenre">
<br><br>

	<div class="container">
		 <div class="headline"><h2>${title }</h2></div>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td><a href="<%=cp%>/musicstory/artistStroy.do">아티스트갤러리</a></td>
					<td><a href="<%=cp%>/musicstory/cartoonStroy.do">공감카툰</a></td>
					<td><a href="<%=cp%>/musicstory/interviewStroy.do">릴레이 인터뷰</a></td>
					<td><a href="<%=cp%>/musicstory/chatStroy.do">금주의 차트</a></td>
				</tr>
				<tr>
					<td><a href="<%=cp%>/musicstory/classStroy.do">톡톡 클래식</a></td>
					<td><a href="<%=cp%>/musicstory/clubStroy.do">Club</a></td>
					<td><a href="<%=cp%>/musicstory/hiphopStroy.do">HipHop</a></td>
					<td><a href="<%=cp%>/musicstory/rnbStroy.do">RnB</a></td>
				</tr>
				<tr>
					<td><a href="<%=cp%>/musicstory/edmStroy.do">Edm</a></td>
					<td><a href="<%=cp%>/musicstory/jazzStroy.do">Jazz</a></td>
					<td><a href="<%=cp%>/musicstory/underStroy.do">언더커버뮤직</a></td>
					<td><a href="<%=cp%>/musicstory/starStroy.do">별님의 선택</a></td>
				</tr>
				<tr>
					<td><a href="<%=cp%>/musicstory/hiddenStroy.do">이주의 히든트랙</a></td>
					<td><a href="<%=cp%>/musicstory/liveStroy.do">라이브세션</a></td>
					<td><a href="<%=cp%>/musicstory/indiStroy.do">인디차트</a></td>
					<td><a href="<%=cp%>/musicstory/issuStroy.do">이슈포커스</a></td>
				</tr>
			</tbody>
		</table>
		<hr>
		   <!-- 오늘의 스토리 -->
                <div class="headline"><h3>${title }</h3></div>
                <div>
                <h4 align="center">${subject }</h4>
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
