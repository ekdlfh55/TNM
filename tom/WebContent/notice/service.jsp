<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Progress Bars | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

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

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">
   
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <ul class="pull-right breadcrumb">
                <li><a href="#">Main</a></li>
                <li><a href="#">faq</a></li>
                <li class="active">Progress Bars</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
 		
 		    <!-- Begin Content -->
            <div class="col-md-12">
                <!-- Progress Bars -->
                <div class="headline">
                    <h2>${title }</h2>
                </div>

                <div class="tab-v2">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-1" data-toggle="tab">홈</a></li>
                        <li><a href="#tab-2" data-toggle="tab">공지사항</a></li>
                        <li><a href="#tab-3" data-toggle="tab">자주 하는 질문</a></li>
        
                    </ul>
                    <div class="tab-content">
                        <!-- Progress Bars With Texts -->
                        <div class="tab-pane fade in active" id="tab-1">
                            <div class="margin-bottom-30"></div>

                            <div class="row">
                                <!-- Smallest Progress Bar -->
                                <div class="col-md-6 md-margin-bottom-40">
                                    <h3 class="heading-xs">Web Design - 88%</h3>
                                    <div class="progress progress-u progress-xxs">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress - 76%</h3>
                                    <div class="progress progress-u progress-xxs">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS - 97%</h3>
                                    <div class="progress progress-u progress-xxs">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Smallest Progress Bar -->

                                <!-- Smallest Progress Bar -->
                                <div class="col-md-6">
                                    <h3 class="heading-xs">Web Design <span class="pull-right">88%</span></h3>
                                    <div class="progress progress-u progress-xxs">
                                        <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress <span class="pull-right">76%</span></h3>
                                    <div class="progress progress-u progress-xxs">
                                        <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS <span class="pull-right">97%</span></h3>
                                    <div class="progress progress-u progress-xxs">
                                        <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Smallest Progress Bar -->
                            </div>

                            <hr>

                            <div class="row">
                                <!-- Small Progress Bar -->
                                <div class="col-md-6 md-margin-bottom-40">
                                    <h3 class="heading-xs">Web Design - 88%</h3>
                                    <div class="progress progress-u progress-xs">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress - 76%</h3>
                                    <div class="progress progress-u progress-xs">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS - 97%</h3>
                                    <div class="progress progress-u progress-xs">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Small Progress Bar -->

                                <!-- Small Progress Bar -->
                                <div class="col-md-6">
                                    <h3 class="heading-xs">Web Design <span class="pull-right">88%</span></h3>
                                    <div class="progress progress-u progress-xs">
                                        <div class="progress-bar progress-bar-blue" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress <span class="pull-right">76%</span></h3>
                                    <div class="progress progress-u progress-xs">
                                        <div class="progress-bar progress-bar-blue" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS <span class="pull-right">97%</span></h3>
                                    <div class="progress progress-u progress-xs">
                                        <div class="progress-bar progress-bar-blue" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Small Progress Bar -->
                            </div>

                            <hr>

                            <div class="row">
                                <!-- Small Progress Bar -->
                                <div class="col-md-6 md-margin-bottom-40">
                                    <h3 class="heading-xs">Web Design - 88%</h3>
                                    <div class="progress progress-u progress-sm">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress - 76%</h3>
                                    <div class="progress progress-u progress-sm">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS - 97%</h3>
                                    <div class="progress progress-u progress-sm">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Small Progress Bar -->

                                <!-- Small Progress Bar -->
                                <div class="col-md-6">
                                    <h3 class="heading-xs">Web Design <span class="pull-right">88%</span></h3>
                                    <div class="progress progress-u progress-sm">
                                        <div class="progress-bar progress-bar-u" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress <span class="pull-right">76%</span></h3>
                                    <div class="progress progress-u progress-sm">
                                        <div class="progress-bar progress-bar-u" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS <span class="pull-right">97%</span></h3>
                                    <div class="progress progress-u progress-sm">
                                        <div class="progress-bar progress-bar-u" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Small Progress Bar -->
                            </div>

                            <hr>

                            <div class="row">
                                <!-- Extra Small Progress Bar -->
                                <div class="col-md-6 md-margin-bottom-40">
                                    <h3 class="heading-xs">Web Design - 88%</h3>
                                    <div class="progress progress-u">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress - 76%</h3>
                                    <div class="progress progress-u">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS - 97%</h3>
                                    <div class="progress progress-u">
                                        <div class="progress-bar progress-bar-dark" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Extra Small Progress Bar -->

                                <!-- Extra Small Progress Bar -->
                                <div class="col-md-6">
                                    <h3 class="heading-xs">Web Design <span class="pull-right">88%</span></h3>
                                    <div class="progress progress-u">
                                        <div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">PHP/WordPress <span class="pull-right">76%</span></h3>
                                    <div class="progress progress-u">
                                        <div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%">
                                        </div>
                                    </div>

                                    <h3 class="heading-xs">HTML/CSS <span class="pull-right">97%</span></h3>
                                    <div class="progress progress-u">
                                        <div class="progress-bar progress-bar-purple" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%">
                                        </div>
                                    </div>
                                </div>
                                <!-- Extra Small Progress Bar -->
                            </div>
                        </div>
                        <!-- End Progress Bars With Texts -->

                        <!-- Progress Bars Examples -->
                        <div class="tab-pane fade in" id="tab-2">
                            <div class="margin-bottom-20"></div>

	                            <div class="row">
			                           	 	 <!--Basic Table-->
							               <div class="panel panel-grey margin-bottom-40">
							                    <div class="panel-heading">
							                        <h3 class="panel-title"><i class="fa fa-tasks"></i>공지사항</h3>
							                    </div>
							                    <div class="panel-body">
								                    <form class="form-inline" name="searchForm" action="" method="post">
								                          <select class="form-control" name="searchKey" class="selectField">
								                          	<option value="">분류</option>
								                          	<option value="subject">서비스소식</option>
								                          	<option value="userName">서비스오픈</option>
								                            <option value="content">서비스종료</option>
								                            <option value="content">서비스점검</option>
								                            <option value="content">안내</option>                             
								                          </select>     	
								                    </form>
							                    	<div align="right" >
							                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>글쓰기</button>
							                    	</div>                 
							                    </div>
							                    <table class="table">
							                        <thead>
							                            <tr>
							                                <th>Num</th>
							                                <th>분류</th>
							                                <th>제목</th>
							                                <th>조회</th>
							                                <th>등록일</th>
							                            </tr>
							                        </thead>
							                        <tbody>
							                            <tr>
							                                <td>1</td>
							                                <td>서비스종료</td>
							                                <td><a href="#">t.melon.com 서비스 종료 안내</a></td>
							                                <td>21</td>
							                                <td>2015.09.24</td>
							                            </tr>
							                            <tr>
							                                <td>2</td>
							                                <td>Jacob</td>
							                                <td class="hidden-sm">Thornton</td>
							                                <td><span class="label label-warning">Expiring</span></td>
							                                <td><span class="label label-success">Success</span></td>
							                            </tr>
							                            <tr>
							                                <td>3</td>
							                                <td>Larry</td>
							                                <td class="hidden-sm">the Bird</td>
							                                <td>@twitter</td>
							                                <td><span class="label label-danger">Error!</span></td>
							                            </tr>
							                            <tr>
							                                <td>4</td>
							                                <td>htmlstream</td>
							                                <td class="hidden-sm">Web Design</td>
							                                <td>@htmlstream</td>
							                                <td><span class="label label-info">Pending..</span></td>
							                            </tr>
							                        </tbody>
							                    </table>
							                    
							                    <div class="panel-footer">
									                <table>
														<tr  height="15">
															<td align="center"><c:if test="${dataCount==0}">
																	등록된 게시물이 없다
															</c:if> 
															<c:if test="${dataCount!=0}">
																${pageIndexList}   
															</c:if>
															</td>
														</tr>
													</table>        
								                </div>
							                </div>
							                <!--End Basic Table-->
			                            
			                        </div>
			                        <!-- End 앨범리스트 -->    
                            	</div>
                                 
                        </div>
                          
                    </div>
                </div>
                <!-- End Progress Bars -->
            </div>
            <!-- End Content -->
        </div>
    </div><!--/container-->
    <!--=== End Content Part ===-->

  
</div><!--/End Wrapepr-->

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