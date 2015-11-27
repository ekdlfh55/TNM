<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Clients | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/animate.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/page_clients.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">
   
    <!--=== Breadcrumbs ===-->
    <!-- <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Clients</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Pages</a></li>
                <li class="active">Clients</li>
            </ul>
        </div>
    </div> --><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
    	<div class="row">
        	<div class="col-md-9">
            	<div class="headline"><h2>최신 앨범</h2></div>
            	
            
            <!-- 음반시작  -->
             <div class="row">
              <table class="table table-bordered">                               
                    <tbody>
                        <tr>
                            <td>
                            	<div class="col-md-3">
			                        <div class="thumbnails thumbnail-style thumbnail-kenburn">
			                            <div class="thumbnail-img">
			                                <div class="overflow-hidden">
			                                    <img class="img-responsive" src="<%=cp%>/res/main/assets/img/album/album1.jpg" alt="" />
			                                </div>
			                                <a class="btn-more hover-effect" data-toggle="modal" data-target="#responsive1" style="cursor: pointer;">read more +</a>
			                                 
			                                 <div class="modal fade" id="responsive1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					                            
					                            <div class="modal-dialog">
					                                <div class="modal-content">
					                                    <div class="modal-header">
					                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                                        <h4 class="modal-title" id="myModalLabel4">Responsive Modal</h4>
					                                    </div>
					                                    <div class="modal-body">
					                                        <div class="row">
					                                            <div class="col-md-6">
					                                                <h4>Some Input</h4>
					                                               
					                                            </div>
					                                            <div class="col-md-6">
					                                                <h4>Some More Input</h4>
					                                               
					                                            </div>
					                                        </div>
					                                    </div>
					                                    <div class="modal-footer">
					                                        <button type="button" class="btn-u btn-u-default" data-dismiss="modal">닫기</button>
					                                        <button type="button" class="btn-u btn-u-primary">아티스트정보</button>
					                                    </div>
					                                </div>
					                            </div>
					                            
					                        </div>
					                        
			                            </div>
			                            <div class="caption">
			                                <h3 align="center"><a class="hover-effect" href="#">가인</a></h3>
			                                <!-- <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p> -->
			                            </div>
			                        </div>
			                    </div>
                    
                            </td>          
                        </tr>
                        <tr height='30'>
						    <td colspan='2' align='center'>
						    ${pageIndexList}
						    </td>
						</tr>                       
                    </tbody>
                              
                </table>
               </div>
           <!-- 음반끝  -->
			
          <!-- 유저 영상 앤 비디오  -->
             <div class="row">
             	<div class="headline"><h2>유저 음악 및 영상</h2></div>
             	
	              	<table class="table table-bordered">                               
	                    <tbody>
	                        <tr>
	                        
	                            <td>
	                            	<div class="col-md-3">
	                            		<h2>앨범</h2>
	                            	
				                        <div class="thumbnails thumbnail-style thumbnail-kenburn">
				                            <div class="thumbnail-img">
				                                <div class="overflow-hidden">
				                                    <img class="img-responsive" src="<%=cp%>/res/main/assets/img/album/album2.jpg" alt="" />
				                                </div>
				                                <a class="btn-more hover-effect" data-toggle="modal" data-target="#responsive1" style="cursor: pointer;">read more +</a>
				                                 
				                                 <div class="modal fade" id="responsive1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						                            
						                            <div class="modal-dialog">
						                                <div class="modal-content">
						                                    <div class="modal-header">
						                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						                                        <h4 class="modal-title" id="myModalLabel4">Responsive Modal</h4>
						                                    </div>
						                                    <div class="modal-body">
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <h4>Some Input</h4>
						                                               
						                                            </div>
						                                            <div class="col-md-6">
						                                                <h4>Some More Input</h4>
						                                               
						                                            </div>
						                                        </div>
						                                    </div>
						                                    <div class="modal-footer">
						                                        <button type="button" class="btn-u btn-u-default" data-dismiss="modal">닫기</button>
						                                        <button type="button" class="btn-u btn-u-primary">아티스트정보</button>
						                                    </div>
						                                </div>
						                            </div>
						                            
						                        </div>
						                        
				                            </div>
				                            <div class="caption">
				                                <h3 align="center"><a class="hover-effect" href="#">포맨</a></h3>				                             
				                            </div>
				                        </div>
				                    </div>
				                    
				                    	
	                            </td>
	                            
			                 </tr>
			                 <tr height='30'>
							    <td colspan='2' align='center'>
							    ${pageIndexList}
							    </td>
							</tr>  
			                   <tr>
	                        
	                            <td>
	                            	<div class="col-md-3">
	                            	<h2>동영상</h2>
				                        <div class="thumbnails thumbnail-style thumbnail-kenburn">
				                            <div class="thumbnail-img">
				                                <div class="overflow-hidden">
				                                    <img class="img-responsive" src="<%=cp%>/res/main/assets/img/album/album2.jpg" alt="" />
				                                </div>
				                                <a class="btn-more hover-effect" data-toggle="modal" data-target="#responsive1" style="cursor: pointer;">read more +</a>
				                                 
				                                 <div class="modal fade" id="responsive1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						                            
						                            <div class="modal-dialog">
						                                <div class="modal-content">
						                                    <div class="modal-header">
						                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						                                        <h4 class="modal-title" id="myModalLabel4">Responsive Modal</h4>
						                                    </div>
						                                    <div class="modal-body">
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <h4>Some Input</h4>
						                                               
						                                            </div>
						                                            <div class="col-md-6">
						                                                <h4>Some More Input</h4>
						                                               
						                                            </div>
						                                        </div>
						                                    </div>
						                                    <div class="modal-footer">
						                                        <button type="button" class="btn-u btn-u-default" data-dismiss="modal">닫기</button>
						                                        <button type="button" class="btn-u btn-u-primary">아티스트정보</button>
						                                    </div>
						                                </div>
						                            </div>
						                            
						                        </div>
						                        
				                            </div>
				                            <div class="caption">
				                                <h3 align="center"><a class="hover-effect" href="#">영상</a></h3>				                             
				                            </div>
				                        </div>
				                    </div>
	                            </td>
			                 </tr>   
			                 
			                 <tr height='30'>
						    	<td colspan='2' align='center'>
						    	${pageIndexList}
						    	</td>
							</tr>  
						                            
	                    </tbody>          
	                </table>
               </div>
           <!-- 유저 영상 앤 비디오 끝  -->

               <%--  <!-- Clients Block-->
                <div class="row clients-page">
                    <div class="col-md-2">
                        <img src="<%=cp%>/res/main/assets/img/clients2/emirates.png" class="img-responsive hover-effect" alt="" />
                    </div>
                    <div class="col-md-10">
                        <h3>The Coca-Cola Company</h3>
                        <ul class="list-inline">
                            <li><i class="fa fa-map-marker color-green"></i> USA</li>
                            <li><i class="fa fa-globe color-green"></i> <a class="linked" href="#">http://www.example.com</a></li>
                            <li><i class="fa fa-briefcase color-green"></i> Web Design &amp; Development</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati</p>
                        <p>Olerano ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna edetquam lacus. Fusce condimentum eleifend enim a sint occaecati feugiat..</p>
                    </div>
                </div>
                <!-- End Clients Block-->

                <!-- Clients Block-->
                <div class="row clients-page">
                    <div class="col-md-2">
                        <img src="<%=cp%>/res/main/assets/img/clients2/inspiring.png" class="img-responsive hover-effect" alt="" />
                    </div>
                    <div class="col-md-10">
                        <h3>Game Cast TV</h3>
                        <ul class="list-inline">
                            <li><i class="fa fa-map-marker color-green"></i> Europe</li>
                            <li><i class="fa fa-globe color-green"></i> <a class="linked" href="#">http://www.example.com</a></li>
                            <li><i class="fa fa-briefcase color-green"></i> Web Design &amp; HTML/CSS</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati. Olerano ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna edetquam lacus. Fusce condimentum eleifend enim a sint occaecati feugiat..</p>
                    </div>
                </div>
                <!-- End Clients Block--> --%>

                <!-- Pagination -->
                <!-- div class="text-center md-margin-bottom-30">
                    <ul class="pagination">
                        <li><a href="#">«</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li class="active"><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </div> -->
                <!-- End Pagination -->
            </div><!--/col-md-9-->

        	<div class="col-md-3">
            	<!-- 차트표 -->
                <div class="who margin-bottom-30">
                    <div class="headline"><h2>CHAT</h2><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;더보기+</a></div>
		
		             <!-- 실시간 차트  -->
	                 <div role="chatl">

					  <!-- Nav tabs -->
					  <ul class="nav nav-tabs" role="tablist">
					    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">실시간</a></li>
					    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">POP</a></li>
					    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">ARTIST</a></li>
					  </ul>
					
					  <!-- Tab panes -->
					  <div class="tab-content">
					    <div role="tabpanel" class="tab-pane  active" id="home">
						    
						    <table>
							    <tr>
							    	<td>
							    		<a href="#" ><font  style="font-size: 8px; text-align: right;" >더보기 +</font></a>
							    	</td>
							    </tr>
						    </table>
						    
					    </div>
					    
					    <div role="tabpanel" class="tab-pane" id="profile">...</div>
					    
					    <div role="tabpanel" class="tab-pane" id="messages">...</div>					    
					  </div>
					
					</div>
                </div>
				<!-- 차트 끝 -->
				
            	<!-- About Us -->
	              <div class="who margin-bottom-30">    
	                    <div class="headline"><h2>EVENT</h2><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;더보기+</a></div>
			
			             <!-- 실시간 차트  -->
		                 <div role="eventl">
	
						  <!-- Nav tabs -->
						  <ul class="nav nav-tabs" role="tablist">
						    <li role="presentation" class="active"><a href="#h1" aria-controls="h1" role="tab" data-toggle="tab">연극</a></li>
						    <li role="presentation"><a href="#h2" aria-controls="h2" role="tab" data-toggle="tab">이용권</a></li>
						    <li role="presentation"><a href="#h3" aria-controls="h3" role="tab" data-toggle="tab">콘서트</a></li>
						  </ul>
						
						  <!-- Tab panes -->
						  <div class="tab-content">
						    <div role="tabpanel" class="tab-pane  active" id="h1">
							    
							    <table>
								    <tr>
								    	<td>
								    		<a href="#" ><font  style="font-size: 8px; text-align: right;" >더보기 +</font></a>
								    	</td>
								    </tr>
							    </table>
							    
						    </div>
						    
						    <div role="tabpanel" class="tab-pane" id="h2">...</div>
						    
						    <div role="tabpanel" class="tab-pane" id="h3">...</div>					    
						  </div>
						
						</div>
	                </div>

            	<!-- Contact Us -->
                <div class="who margin-bottom-30">
                
                 <div class="owl-carousel-v1 margin-bottom-50">
                    <h3 class="heading-md">Default example</h3>
                    <p>For default carousel you should use a class <code>.owl-carousel-v1</code>. Moreover, you are also able to use it without navigation. You should just remove <code>owl-navigation</code> block from the HTML code.</p>

                    <div class="owl-navigation">
                        <div class="customNavigation">
                            <a class="owl-btn prev-v1"><i class="fa fa-angle-left"></i></a>
                            <a class="owl-btn next-v1"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div><!--/navigation-->
                 
                </div>
                    <div class="headline"><h2>Music Story</h2><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;더보기+</a></div>
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
            </div><!--/col-md-3-->
        </div><!--/row-->
    </div><!--/container-->
    <!--=== End Content Part ===-->

 
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>
