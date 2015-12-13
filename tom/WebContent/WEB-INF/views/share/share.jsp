<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<div class="bodyShare">
<br><br>

    <!--=== Content Part ===-->
    <div class="container content">
    	<div class="headline"><h2>${title }</h2></div><hr>
    	
    	
    	<div class="row blog-page">
            <!-- Left Sidebar -->
        	<div class="col-md-9 md-margin-bottom-40">
        	
	        	 <!--=== 배스트 앨범 ===-->
			    <div class="bg-grey">
			        <div class="container">
			            <div>
			                <h2>BEST Share</h2>               
			            </div>
			
			            <div class="row news-v1">
			                <div align="center" class="col-md-3 md-margin-bottom-40">
			                    <div class="news-v1-in bg-color-white">
			                        <img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img12.jpg" alt="">
			                        <h3 class="font-normal"><a href="#">제목</a></h3>
				                        <div>
				                            <i class="fa fa-calendar"></i> 등록일
				                            <i class="fa fa-comments"></i> 댓글
				                            <i class="fa fa-tags"></i> 조회수
				                        </div>
				                    <div><h4>올드팝 모음곡입니다^^</h4></div>
				                    <button class="btn btn-default">Read More <i class="fa fa-angle-double-right margin-left-5"></i></button>
			                    </div>
			                </div>
			                
			            </div>
			            
			        </div>
			    </div>
			    <!--=== 베스트 앨범 ===-->
			    <br><hr>
			    
                <!--DJ음악-->
                <div class="row blog blog-medium margin-bottom-40">
                    <div class="col-md-5">
                        <img style="width: 200px; height: 200px;" class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img22.jpg" alt="">
                    </div>
                    <div class="col-md-7">
                        <h2><a href="#">제목</a></h2>
                        <div>
                            <i class="fa fa-calendar"></i> 등록일
                            <i class="fa fa-comments"></i> 댓글
                            <i class="fa fa-tags"></i> 조회수
                        </div>
                        <div><h4>올드팝 모음곡입니다^^</h4></div>
                       <button class="btn btn-default">Read More <i class="fa fa-angle-double-right margin-left-5"></i></button>
                    </div>
                </div>
                <!--End Blog Post-->
                <!--Pagination-->
                 <div align="center">
				 	<table>
						<tr height="15">
							<td align="center">
								1 2 3
							</td>
						</tr>
					</table>        
				</div>
                <!--End Pagination-->
            </div>
            <!-- End Left Sidebar -->

            <!-- Right Sidebar -->
        	<div class="col-md-3">
        	
        		<button type="button" class="btn btn-warning" onclick="javascript:location.href='<%=cp%>/share/created.do';">DJ 신청하기</button>
                <!-- Social Icons -->
                <div class="magazine-sb-social margin-bottom-30">
                   <div class="headline"><h2>Music Story</h2><a href="<%=cp%>/story/story.do">&nbsp;&nbsp;&nbsp;&nbsp;더보기+</a></div>
                    <table> 
                    	<tr>
							<td>	
								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								  <!-- Indicators -->
								  <ol class="carousel-indicators">
								    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
								    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
								    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
								  </ol>
								
								  <!-- Wrapper for slides -->
								  <div class="carousel-inner" role="listbox">
								    <div class="item active">
								    	<h4 style="font-weight: bold;">쌍팔년도 모든 추억, 응답하라!</h4> 
										<h7>추억을 자극하는 "응답하라 1988"의 히트! 그 시절 엄마 아빠의 아이돌은 누구였을까?</h7>
							      	  	<img src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20151116044247.jpg" alt="...">
								      	<div class="carousel-caption"></div>
								    </div>
								    
								    <div class="item">
								    	<h4 style="font-weight: bold;">수험생 여러분 힘내세요!</h4> 
										<h7>쌀쌀한 날씨에 더욱 긴장되는 시험날, 여러분 곁에서 응원하고 있을게요 아자아자!</h7>
								      	<img src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20151109121637.jpg" alt="...">
								      	<div class="carousel-caption"></div>
								    </div>
								    
								  </div>
								
								  <!-- Controls -->
								  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								    <span class="sr-only">Previous</span>
								  </a>
								  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								    <span class="sr-only">Next</span>
								  </a>
								</div>
							</td>
						</tr>
						
                    </table>
                  
                </div>
                <!-- End Social Icons -->
	
		     	<!-- Photo Stream -->
            	<div class="headline headline-md"><h2>Photo Stream</h2></div>
                <ul class="list-unstyled blog-photos margin-bottom-30">
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/5.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/6.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/8.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/10.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/11.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/1.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/2.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="<%=cp%>/res/main/assets/img/sliders/elastislide/7.jpg"></a></li>
                </ul>
                <!-- End Photo Stream -->
            </div>
            <!-- End Right Sidebar -->
        </div><!--/row-->
    </div><!--/container-->
    <!--=== End Content Part ===-->
    
</div><!--/wrapper-->
