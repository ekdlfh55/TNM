<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript" src="<%=cp%>/res/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
function eventcheck() {
    var f = document.eventForm;

    var str = f.subject.value;
    if(!str) {
        alert("\n제목을 입력하세요. ");
        f.subject.focus();
        return false;
    }

    str = f.content.value;
    if(str=="" || str=="<br>") {
        alert("내용을 입력하세요. ");
        f.content.focus();
        return false;
    }

  var mode="${mode}";
    if(mode=="created")
        f.action = "<%=cp%>/admin/eventcreated.do";
    else if(mode=="update")
        f.action = "<%=cp%>/admin/updateevent.do";

		return true;
	}
</script>
<!-- 이벤트 폼 -->
<div>
	<form name="eventForm" class="sky-form" method="post" enctype="multipart/form-data"  onsubmit="return submitContents(this);">
		<header>이벤트추가</header>
	
		<fieldset>
			<div class="row">
				<div class="col-md-10">
					<section>
						<label class="label">제목</label> <label class="input"> <input
							type="text" name="subject" value="${dto.subject}">
						</label>
					</section>
				</div>
			</div>
	
			<div class="row">
				<div class="col-md-5">
					<label class="label">시작</label>
					<section>
						<label class="input"> <i
							class="icon-append fa fa-calendar"></i> <input type="date"
							name="createdstart" id="createdstart" placeholder="시작날" value="${dto.createdstart}">
						</label>
					</section>

				</div>
				<div class="col-md-5">
					<label class="label">끝</label>
					<section>
						<label class="input"> <i
							class="icon-append fa fa-calendar"></i> <input type="date"
							name="createdend" id="createdend" placeholder="끝나는날" value="${dto.creatdend}">
						</label>
					</section>

				</div>
			</div>
			
			<div class="row">
				<div class="col-md-5">
					<section>
						<label class="label">종류</label> <label class="select"> 
						<select name="division">
								<option value="공연">공연</option>
								<option value="연극">연극</option>
								<option value="이용권">이용권</option>
						</select> <i></i>
						</label>
					</section>
				</div>
				<div class="col-md-5">
					<section>
						<label class="label">앨범표지 </label> 
						<label for="file"class="input input-file">	
								<input type="file" name="upload">
						</label>
					</section>
				</div>
			</div>
			<c:if test="${mode=='update'}">
			<div>
			 <div class="col-md-12">
			     <label class="label">첨부된파일 </label>
			     <label>${dto.eventFilename}</label>
			  </div>
			</div>
			</c:if>
	
	
			<div class="row">
				<div class="col-md-11">
					<section>
						<label class="label">내용</label> <label class="textarea"> <textarea
								rows="3" id="content" name="content" style="width: 100%;">${dto.content}</textarea>
						</label>
						<div class="note">
							<strong>Note:</strong> height of the textarea depends on the rows
							attribute.
						</div>
					</section>
				</div>
			</div>
		</fieldset>
	
<div align="center">
	<c:if test="${mode=='created'}">
		<footer>
			<button type="submit" class="btn-u">등록하기</button>
			<button type="reset" class="btn-u btn-u-default">등록취소</button>
			<button type="button" class="btn-u btn-u-default"
				onclick="window.history.back();">돌아가기</button>
		</footer>
		</c:if>
		<c:if test="${mode=='update'}">
			<footer>
				<button type="submit" class="btn-u">수정하기</button>
				<button type="reset" class="btn-u btn-u-default">등록취소</button>
				<button type="button" class="btn-u btn-u-default"
					onclick="window.history.back();">돌아가기</button>
				<input type="hidden" name="pageNum" value="${pageNum}">
                <input type="hidden" name="eventNum" value="${dto.eventNum}">    
			</footer>
		</c:if>
		
	</div>
	</form>
</div>

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content",
	sSkinURI: "<%=cp%>/res/se/SmartEditor2Skin.html",	
	htParams : {bUseToolbar : true,
		fOnBeforeUnload : function(){
			//alert("아싸!");
		}
	}, //boolean
	fOnAppLoad : function(){
		//예제 코드
		//oEditors.getById["content"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
	},
	fCreator: "createSEditor2"
});

function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
	oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["content"].getIR();
	alert(sHTML);
}
	
function submitContents(elClickedObj) {
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
	
	try {
		// elClickedObj.form.submit();
		return eventcheck();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '돋움';
	var nFontSize = 24;
	oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>