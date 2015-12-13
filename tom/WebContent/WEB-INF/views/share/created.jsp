<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
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

<!-- Begin Content -->
<div class="col-md-12">

	<ul class="nav nav-tabs">
		<li class="active"><a href="#home-1" data-toggle="tab">${title }</a></li>

	</ul>
	<div class="tab-content">
		<!-- Success Forms -->
		<div class="tab-pane fade in active" id="home-1">
			<form name="djForm" method="post" class="sky-form"
				enctype="multipart/form-data" onsubmit="return djcheck();">
				<header>Music Story</header>
				<div class="row">
					<div class="col-md-6">
						<fieldset>
							<section>
								<label class="label">제목</label> <label
									class="input state-success"> <input name="subject"
									type="text">
								</label>
								<div class="note note-success">This is a required field.</div>
							</section>
						</fieldset>
					</div>

					<div class="col-md-6">
						<fieldset>
							<section>
								<label class="label">장르</label> <label
									class="select state-success"> <select name="genre">
										<option value="0">Edm</option>
										<option value="1">HipHop</option>
										<option value="2">RnB</option>
										<option value="3" selected>Jazz</option>
										<option value="4">DolDol</option>
								</select>
								</label>
								<div class="note note-success">Thanks for your selection.</div>
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
									onchange="this.parentNode.nextSibling.value = this.value"
									name="photo_upload">Browse
							</div> <input type="text" readonly>
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
							</div> <input type="text" readonly>
						</label>
						<div class="note note-success">This is a required field.</div>
					</section>
				</fieldset>

				<fieldset>
					<section>
						<label class="label">내용</label> <label
							class="textarea state-success"> <textarea name="content"
								rows="3"></textarea>
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
