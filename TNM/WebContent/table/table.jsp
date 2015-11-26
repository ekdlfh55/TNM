<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Tabels | Unify - Responsive Website Template</title>

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

     <div class="container content">
        <div class="row">
            <!-- Begin Sidebar Menu -->
            <div class="col-md-3">
                <ul class="list-group sidebar-nav-v1" id="sidebar-nav">
                    <!-- 장르별게시판 -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-janre">장르별 게시판</a>
                        <ul id="collapse-janre" class="collapse">
                            <li><a href="shortcode_typo_general.html"><i class="fa fa-align-justify"></i> 가요</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_typo_headings.html"><i class="fa fa-align-justify"></i> POP</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_typo_dividers.html"><i class="fa fa-align-justify"></i> OST</a>
                            </li>
                            <li><a href="shortcode_typo_blockquote.html"><i class="fa fa-align-justify"></i> 일렉트로니카/클럽뮤직</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_typo_boxshadows.html"><i class="fa fa-align-justify"></i> 록/메탈</a>
                            </li>
                            <li><a href="shortcode_typo_testimonials.html"><i class="fa fa-align-justify"></i> R&B/Soul</a></li>
                            <li><a href="shortcode_typo_tagline_boxes.html"><i class="fa fa-align-justify"></i> 랩/힙합</a></li>
                            <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> 인디음악</a></li>
                            <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> 트로트</a></li>
                            <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> J-POP</a></li>
                            <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> 클래식</a></li>
                            <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> 재즈</a></li>
                            <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> 기타</a></li>
                        </ul>
                    </li>
                    <!-- End 장르별 게시판 -->

                    <!-- 자유 게시판 -->
                    <li class="list-group-item"><a href="shortcode_thumbnails.html">자유 게시판</a></li>
                    <!-- End 자유게시판 -->
                    
                    <!-- 질문 게시판 -->
                    <li class="list-group-item"><a href="shortcode_thumbnails.html">질문 게시판</a></li>
                    <!-- End 질문게시판 -->
                    
                    <!-- 채팅 게시판 -->
                    <li class="list-group-item"><a href="shortcode_thumbnails.html">채팅 게시판</a></li>
                    <!-- End 질문게시판 -->
                    
                    <!-- 앨범공유 -->
                    <li class="list-group-item"><a href="shortcode_thumbnails.html">앨범 공유</a></li>
                    <!-- End 앨범공유 -->
                    
                    <!-- 동영상공유 -->
                    <li class="list-group-item"><a href="shortcode_thumbnails.html">동영상 공유</a></li>
                    <!-- End 동영상공유 -->

                    
                </ul>
            </div>
            <!-- End Sidebar Menu -->
            <!-- Begin Content -->
            <div class="col-md-9">
                <!--Basic Table-->

                <div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-tasks"></i>자유게시판</h3>
                    </div>
                    <div class="panel-body">
                    <form class="form-inline" name="searchForm" action="" method="post">
                          <select class="form-control" name="searchKey" class="selectField">
                          	<option value="">선택</option>
                          	<option value="subject">제목</option>
                          	<option value="userName">작성자</option>
                            <option value="content">내용</option>                              
                          </select>
                          	<input placeholder="search" type="text" class="form-control" name="searchValue" />
                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
                    
                    
                    </form>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Num</th>
                                <th>파일</th>
                                <th class="hidden-sm">제목</th>
                                <th>이름</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mark</td>
                                <td class="hidden-sm">Otto</td>
                                <td>@mdo</td>
                                <td><span class="label label-warning">Expiring</span></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jacob</td>
                                <td class="hidden-sm">Thornton</td>
                                <td>@fat</td>
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
                </div>
                <!--End Basic Table-->
                
                 <!--Pegination Centered-->
                    <div class="text-center">
                        <ul class="pagination pagination-sm">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li class="active"><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                <!--End Pegination Centered-->          
             </div>
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