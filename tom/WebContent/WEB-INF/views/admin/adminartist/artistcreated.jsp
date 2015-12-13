<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function artistcheck() {

    var f = document.artistForm;

    var str = f.artistName.value;
    if(!str) {
        alert("\n아티스트 이름을 입력하세요. ");
        f.artistName.focus();
        return false;
    }

    str = f.sosoksa.value;
    if(str=="" || str=="<br>") {
        alert("소속사를 입력하세요. ");
        f.sosoksa.focus();
        return false;
    }

  var mode="${mode}";
    if(mode=="created")
        f.action = "<%=cp%>/admin/artistcreated.do";
    else if(mode=="update")
        f.action = "<%=cp%>/admin/artistupdated.do";

		return true;
}
</script>
<div>
	<form name="artistForm" class="sky-form" method="post" enctype="multipart/form-data" onsubmit="return artistcheck();" >
		<header>아티스트 추가</header>

		<fieldset>

			<div class="row">
				<div class="col-md-4">
					<section>
						<label class="label">가수이름</label> <label class="input">
						<input	type="text" name="artistName" value="${dto.artistName}">
						</label>
					</section>
				</div>

				<div class="col-md-4">
					<section>
						<label class="label">소속사</label> <label class="input"> <input
							type="text" name="sosoksa" value="${dto.sosoksa}">
						</label>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<label class="label">생일</label>
					<section>
						<label class="input"> <i
							class="icon-append fa fa-calendar"></i> <input type="date"
							name="birth" id="birth" placeholder="생일" value="${dto.birth}">
						</label>
					</section>

				</div>

				<div class="col-md-4">
					<label class="label">데뷔</label>
					<section>
						<label class="input"> <i
							class="icon-append fa fa-calendar"></i> <input type="date"
							name="date" id="date" placeholder="데뷔" value="${dto.date}">
						</label>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-md-8">
					<section>
						<label class="label">활동이력</label> <label class="select">
							<select name="type">
								<option value="솔로">솔로</option>
								<option value="그룹">그룹</option>
						</select> <i></i>
						</label>
					</section>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-8">
					<section>
						<label class="label">앨범표지 </label> 
						<label for="file"class="input input-file">	
								<input type="file" name="upload">
						</label>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-md-8">
					<section>
						<label class="label">수상이력</label> <label class="textarea">
							<textarea rows="3" name="sosang" id="sosang">${dto.sosang}</textarea>
						</label>
						<div class="note">
							<strong>Note:</strong> height of the textarea depends on the rows
							attribute.
						</div>
					</section>
				</div>
			</div>
			 <input type="hidden" name="userId" value="${sessionScope.member.userId}">
		</fieldset>

		<footer>
			<button type="submit" class="btn-u">등록하기</button>
			<button type="reset" class="btn-u btn-u-default">등록취소</button>
			<button type="button" class="btn-u btn-u-default"
				onclick="window.history.back();">돌아가기</button>
		</footer>
	</form>
</div>