<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyArtist">

	<div class="container">

		 <!-- 프로필 본문 시작 -->
            <div class="col-md-9">
              <!--   <div class="profile-body"> -->
                 
                    <!-- 아티스트 프로필 -->
                    <div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-cube color-orange"></i>앨범</h3>
                    </div>
                    <div class="panel-body">
						  <!---------------------------------앨범 목록---------------------------->
                <div class="row">
                    <div class="col-md-4" style="width: 30%">
                        <div class="thumbnails thumbnail-style">                        	
                            <a class="fancybox" data-rel="fancybox-button" title="Project #1" href="<%=cp%>/res/main/assets/img/main/img18.jpg">
                                <img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img18.jpg" alt="" />
                            </a>
                            <div class="caption">
                                <h3><a class="hover-effect" href="#">앨범 이름</a></h3>
                                <p>앨범 정보</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4" style="width: 30%">
                        <div class="thumbnails thumbnail-style">
                            <a class="fancybox" data-rel="fancybox-button" title="Project #1" href="<%=cp%>/res/main/assets/img/main/img19.jpg">
                                <img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img19.jpg" alt="" />
                            </a>
                            <div class="caption">
                                <h3><a class="hover-effect" href="#">앨범 이름</a></h3>
                                <p>앨범 정보</p>
                            </div>
                        </div>
                    </div>
                    
                     <div class="col-md-4" style="width: 30%">
                        <div class="thumbnails thumbnail-style">
                            <a class="fancybox" data-rel="fancybox-button" title="Project #1" href="<%=cp%>/res/main/assets/img/main/img19.jpg">
                                <img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img19.jpg" alt="" />
                            </a>
                            <div class="caption">
                                <h3><a class="hover-effect" href="#">앨범 이름</a></h3>
                                <p>앨범 정보</p>
                            </div>
                        </div>
                    </div>
                    
                     <div class="col-md-4" style="width: 30%">
                        <div class="thumbnails thumbnail-style">
                            <a class="fancybox" data-rel="fancybox-button" title="Project #1" href="<%=cp%>/res/main/assets/img/main/img19.jpg">
                                <img class="img-responsive" src="<%=cp%>/res/main/assets/img/main/img19.jpg" alt="" />
                            </a>
                            <div class="caption">
                                <h3><a class="hover-effect" href="#">앨범 이름</a></h3>
                                <p>앨범 정보</p>
                            </div>
                        </div>
                    </div>
                    
               
                   <!--  </div> -->
                </div><!--/row-->
                <!------------------------------------------------ End 앨범 목록----------------->
               
                </div>
      
            <!-- 프로필 본문 끝 -->
            </div>
          </div>
          
	</div>
	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->
