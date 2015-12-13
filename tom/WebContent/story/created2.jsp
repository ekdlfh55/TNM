<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>뮤직스토리 Created Form</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/css/headers/header-default.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/animate.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<!--[if lt IE 9]><link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/css/sky-forms-ie8.css"><![endif]-->

<!-- CSS Customization -->
<link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">

<script type="text/javascript">
function djcheck() {
	var f = document.djForm;
	
	var str = f.subject.value;
    if(!str) {
        alert("\n제목을 입력하세요. ");
        f.subject.focus();
        return false;
    }
    
	str = f.content.value;
    if(!str) {
        alert("내용을 입력하세요. ");
        f.content.focus();
        return false;
    }
    
    var mode="${mode}";
    if(mode=="created")
        f.action = "<%=cp%>/share/created.do";
    else if(mode=="update")
        f.action = "<%=cp%>/share/update.do";
        
   return true;
}

</script>

</head>


<body>
	<div class="wrapper">

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Form States</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="">Features</a></li>
					<li class="active">Form States</li>
				</ul>
			</div>
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row">

				<!-- Begin Content -->
				<div class="col-md-9">

					<ul class="nav nav-tabs">
						<li class="active"><a href="#home-1" data-toggle="tab">${title }</a></li>

					</ul>
					<div class="tab-content">
						<!-- Success Forms -->
						<div class="tab-pane fade in active" id="home-1">
							<form name="djForm" method="post" class="sky-form" enctype="multipart/form-data" onsubmit="return djcheck();">
								<header>Music Story</header>
								<div class="row">
									<div class="col-md-6">
										<fieldset>
											<section>
												<label class="label">제목</label> <label
													class="input state-success"> <input name="subject" type="text">
												</label>
												<div class="note note-success">This is a required
													field.</div>
											</section>
										</fieldset>
									</div>

									<div class="col-md-6">
										<fieldset>
											<section>
												<label class="label">장르</label> <label
													class="select state-success"> 
												<select name="genre">
														<option value="0">Edm</option>
														<option value="1">HipHop</option>
														<option value="2">RnB</option>
														<option value="3" selected>Jazz</option>
														<option value="4">DolDol</option>
												</select>
												</label>
												<div class="note note-success">Thanks for your
													selection.</div>
											</section>
										</fieldset>
									</div>
								</div>
								<fieldset>
									<section>
										<label class="label">사진표지</label> <label for="file"
											class="input input-file state-success">
											<div class="button">
												<input type="file" id="file"
													onchange="this.parentNode.nextSibling.value = this.value" name="photo_upload">Browse
											</div>
											<input type="text" readonly>
										</label>
										<div class="note note-success">This is a required field.</div>
									</section>
								</fieldset>

								<fieldset>
									<section>
										<label class="label">노래넣기</label> <label for="file"
											class="input input-file state-success">
											<div class="button">
												<input type="file" id="file" name="music_upload"
													onchange="this.parentNode.nextSibling.value = this.value">Browse
											</div>
											<input type="text" readonly>
										</label>
										<div class="note note-success">This is a required field.</div>
									</section>
								</fieldset>

								<fieldset>
									<section>
										<label class="label">내용</label> <label
											class="textarea state-success"> <textarea name="content" rows="3"></textarea>
										</label>
										<div class="note note-success">Thanks for your text.</div>
									</section>
								</fieldset>
						
							<div align="center">
								<footer>
									<button type="submit" class="btn-u ">저장</button>
									<button type="reset" class="btn-u ">리셋</button>
									<button type="button" class="btn-u btn-u-default"
										onclick="window.history.back();">Back</button>
								</footer>
							</div>
					
						
						<c:if test="${mode=='update'}">
							<div align="center">
								<footer>
									<button type="submit" class="btn-u ">수정</button>
									<button type="button" class="btn-u btn-u-default"
										onclick="window.history.back();">Back</button>
								</footer>
							</div>
						</c:if>
							</form>
							<!--/ Success states for elements -->
						</div>
						<!-- End Success Forms -->

					</div>

				</div>
				<!-- End Content -->
			</div>
		</div>
		<!--/container-->
		<!--=== End Content Part ===-->

	</div>
	<!--/End Wrapepr-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
	<script
		src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript"
		src="<%=cp%>/res/main/assets/js/custom.js"></script>
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
    <script src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->

	<!--[if lt IE 10]>
    <script src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>
</html>