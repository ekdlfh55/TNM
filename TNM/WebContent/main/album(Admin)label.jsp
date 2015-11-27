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
    <title>Advanced Forms | Unify - Responsive Website Template</title>

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
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
    <!--[if lt IE 9]><link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/css/sky-forms-ie8.css"><![endif]-->

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">
   
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Advanced Forms</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Features</a></li>
                <li class="active">Advanced Forms</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
            <!-- Begin Sidebar Menu -->
            

            <!-- Begin Content -->
            <div class="col-md-9">
                <!-- Tabs -->
                <div class="tab-v1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#home-1" data-toggle="tab">앨범리스트</a></li>
                        <li><a href="#profile-1" data-toggle="tab">앨범추가</a></li>
                    </ul>
                    <div class="tab-content">
                        <!-- 앨범리스트 -->
                        <div class="tab-pane fade in active" id="home-1">
                           <!--  <form action="#" id="sky-form" class="sky-form">       
                            </form> -->
                            
                            <!--Basic Table-->
				                <div class="panel panel-green margin-bottom-40">
				                    <div class="panel-heading">
	                        			<h3 class="panel-title"><i class="fa fa-tasks"></i> 앨범리스트</h3>
				                    </div>
				                    <div class="panel-body">
				                        <table style="width: 700px;">
										   <tr height="30">
										      <td align="left" width="50%">
										          <form class="form-inline" name="searchForm" action="" method="post">
										              <select class="form-control" name="searchKey" class="selectField">
										                  <option value="subject">가수</option>
										                  <option value="userName">앨범</option>
										                  <option value="content">장르</option>				                  
										            </select>
										            <input placeholder="search" type="text" class="form-control" name="searchValue" />
										            <input type="button" class="form-control" value=" 검 색 "onclick="searchList()"/>
										        </form>
										      </td>		    
										   </tr>
										</table>
				                    </div>
				                    <table class="table">
				                        <thead>
				                            <tr>
				                                <th>#</th>
				                                <th>가수이름</th>
				                                <th class="hidden-sm">장르</th>
				                                <th>장르2</th>
				                                <th>발매일</th>
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
                            
                        </div>
                        <!-- End 앨범리스트 -->

                        <!-- 앨범등록 -->
                        <div class="tab-pane fade" id="profile-1">
                            <form action="#" class="sky-form">
			                    <header>앨범추가</header>
			
			                    <fieldset>
			                    
			                   		<div class="row">
				                   		<div class="col-md-4"> 
					                        <section>
					                            <label class="label">앨범제목</label>
					                            <label class="input">
					                                <input type="text">
					                            </label>
					                        </section>
					                    </div>
					                    
					                    <div class="col-md-4"> 
					                        <section>
					                            <label class="label">가수</label>
					                            <label class="input">
					                                <input type="text">
					                            </label>
					                        </section>
					                    </div>
									</div>
									<div class="row">
										<div class="col-md-8">
											<section>
					                            <label class="label">종류</label>
					                            <label class="select" >
					                                <select>
					                                    <option value="0">종류선택</option>
					                                    <option value="1">정규</option>
					                                    <option value="2">싱글/미니</option>
					                                    <option value="3">OST/방송</option>
					                                    <option value="4">참여</option>
					                                </select>
					                                <i></i>
					                            </label>
					                        </section>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-4">	
											 <section>
					                            <label class="label">장르1</label>
					                            <label class="select" >
					                                <select>
					                                    <option value="0">Choose name</option>
					                                    <option value="1">Alexandra</option>
					                                    <option value="2">Alice</option>
					                                    <option value="3">Anastasia</option>
					                                    <option value="4">Avelina</option>
					                                </select>
					                                <i></i>
					                            </label>
					                        </section>
				                        </div>
			                        
				                        <div class="col-md-4">	
					                         <section>
					                            <label class="label">장르2</label>
					                            <label class="select" >
					                                <select>
					                                    <option value="0">Choose name</option>
					                                    <option value="1">Alexandra</option>
					                                    <option value="2">Alice</option>
					                                    <option value="3">Anastasia</option>
					                                    <option value="4">Avelina</option>
					                                </select>
					                                <i></i>
					                            </label>
					                        </section>
				                        </div>
				                        		
			                        </div>
			                        
			                        <div class="row">
			                        	<div class="col-md-8">
					                        <section>
					                            <label class="label">File input</label>
					                            <label for="file" class="input input-file">
					                                <div class="button"><input type="file" id="file" onchange="this.parentNode.nextSibling.value = this.value">Browse</div><input type="text" readonly>
					                            </label>
					                        </section>
				                        </div>
									</div>
									
									<div class="row">
										<div class="col-md-8">
					                        <section>			                        
					                            <label class="label">앨범내용</label>
					                            <label class="textarea">
					                                <textarea rows="3"></textarea>
					                            </label>
					                            <div class="note"><strong>Note:</strong> height of the textarea depends on the rows attribute.</div>
					                        </section>
			                        	</div>
			                       	</div>			                       	
			                    </fieldset>
			                    
								<footer>
			                        <button type="submit" class="btn-u">등록하기</button>
			                        <button type="reset" class="btn-u btn-u-default">등록취소</button>
			                        <button type="button" class="btn-u btn-u-default" onclick="window.history.back();">돌아가기</button>
			                    </footer>
			                </form>
			                <!-- General Unify Forms -->
                        </div>
                        <!-- End 앨범등록 -->

                       
                    </div>
                </div>
                <!-- End Tabs-->
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
<script src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
<script src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/plugins/masking.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/plugins/datepicker.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/plugins/validation.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        Masking.initMasking();
        Datepicker.initDatepicker();
        Validation.initValidation();
    });
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
<!--[if lt IE 10]>
    <script src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>
</html>