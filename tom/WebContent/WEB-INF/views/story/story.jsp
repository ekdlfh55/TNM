<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyMusic">

	<br><br>
	<div class="container">
		 <div class="headline"><h2>${title }</h2></div>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td><a href="<%=cp%>/story/artistStroy.do">아티스트갤러리</a></td>
					<td><a href="<%=cp%>/story/cartoonStroy.do">공감카툰</a></td>
					<td><a href="<%=cp%>/story/interviewStroy.do">릴레이 인터뷰</a></td>
					<td><a href="<%=cp%>/story/chatStroy.do">금주의 차트</a></td>
				</tr>
				<tr>
					<td><a href="<%=cp%>/story/classStroy.do">톡톡 클래식</a></td>
					<td><a href="<%=cp%>/story/clubStroy.do">Club</a></td>
					<td><a href="<%=cp%>/story/hiphopStroy.do">HipHop</a></td>
					<td><a href="<%=cp%>/story/rnbStroy.do">RnB</a></td>
				</tr>
				<tr>
					<td><a href="<%=cp%>/story/edmStroy.do">Edm</a></td>
					<td><a href="<%=cp%>/story/jazzStroy.do">Jazz</a></td>
					<td><a href="<%=cp%>/story/underStroy.do">언더커버뮤직</a></td>
					<td><a href="<%=cp%>/story/starStroy.do">별님의 선택</a></td>
				</tr>
				<tr>
					<td><a href="<%=cp%>/story/hiddenStroy.do">이주의 히든트랙</a></td>
					<td><a href="<%=cp%>/story/liveStroy.do">라이브세션</a></td>
					<td><a href="<%=cp%>/story/indiStroy.do">인디차트</a></td>
					<td><a href="<%=cp%>/story/issuStroy.do">이슈포커스</a></td>
				</tr>
			</tbody>
		</table>
		<hr>
		   <!-- 오늘의 스토리 -->
                <div><h3>오늘의 스토리</h3></div>               
	              <hr>
	              
	              <c:forEach var="dto" items="${list}"> 
	                <div>
	                    <div>
		                  <div id="collapse-One" class="panel-collapse collapse in">
	                            <div class="panel-body">
	                                <div class="row">	                                	
	                                    <div class="col-md-3">
	                                         <img style="width: 150px; height: 150px;" class="img-responsive" src="<%=cp%>/uploads/photo/${dto.imageFilename}" alt="">
	                                    </div>
	                                    <div class="col-md-7" align="center">
	                                       <font style="font-size: 16pt;"> <a style="color: black;" href="#">[${dto.division}]</a></font>  <a href="${urlArticle}&num=${dto.num}"><font style="font-size: 14pt;">${dto.subject }</font></a>
	                                    </div><br>
	                                  	 <div align="right" class="col-md-7">  ${dto.created }</div>
	                                  	 <br>
	                                     <div align="center" class="col-md-7">${dto.subcontent }</div>	
	                                     <div class="col-md-2"> 
		                                     <i class="icon-custom rounded-x icon-color-grey fa fa-heart"></i>
			                           		<span>좋아요수</span><br> 
			                           		 <i class="icon-custom rounded-x icon-color-grey fa fa-comments-o"></i>
			                           		<span>댓글수</span> <br>
			                           		 <i class="icon-custom rounded-x icon-color-grey fa fa-hand-o-up"></i>
			                           		<span>${dto.hitCount }</span>
		                           		</div>                                    
		                           </div>
		                                                                  
	                            </div>
	                        </div>     
	                    </div>                
	                </div>
	               </c:forEach>
	                <hr>       	                
			<!-- 오늘의 스토리 -->
			
			<div><h3>인기 연제</h3></div> 
			<hr>
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
	                    	<img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="">
	                    </div>
	                    <div class="col-md-4">
							<a href="#"><font>제목</font></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;날자
							<div class="">내용</div>
						</div>				
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
	                    	<img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="">
	                    </div>
	                    <div class="col-md-4">
							<a href="#"><font>제목</font></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;날자
							<div class="">내용</div>
						</div>
					</div>
				</div>
				
			</div>
			<hr>
			
			
			<div align="right">
				<ul class="footer-socials list-inline">
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Facebook">
							<i class="fa fa-facebook"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Skype"> <i
							class="fa fa-skype"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Google Plus">
							<i class="fa fa-google-plus"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Linkedin">
							<i class="fa fa-linkedin"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Pinterest">
							<i class="fa fa-pinterest"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Twitter"> <i
							class="fa fa-twitter"></i>
					</a></li>
					<li><a href="#" class="tooltips" data-toggle="tooltip"
						data-placement="top" title="" data-original-title="Dribbble">
							<i class="fa fa-dribbble"></i>
					</a></li>
				</ul>
			</div>
			<!-- End Social Links -->
		</div>
	</div>

