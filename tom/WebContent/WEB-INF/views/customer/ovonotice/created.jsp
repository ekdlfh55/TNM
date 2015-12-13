<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<script type="text/javascript">
   function sendOvo() {
      var f=document.ovoNoticceFrom;
      
      var str=f.subject.value;
      if(!str){
         alert("\n제목을 입력하세요.");
         f.subject.focus();
         return false;
      }
      
      str=f.content.value;
      if(!str){
         alert("내용을 입력하세요.");
         f.content.focus();
         return false;
      }
      
      var mode="${mode}";
      if(mode=="created")
         f.action="<%=cp%>/ovonotice/created.do";
      else if(mode=="update")
         f.action="<%=cp%>/notice/ovoUpdate.do";

		return true;
	}
</script>

<br><br>
<div class="col-md-12">
	<!-- General Unify Forms -->
	<div class="panel panel-grey margin-bottom-40">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-tasks"></i>${title}
			</h3>
		</div>
		<div class="panel-body">
			<form class="sky-form" name="ovoNoticceFrom"
				onsubmit="return sendOvo();" method="post">

				<fieldset>

					<section>
						<label class="label">제 목</label> <label class="input"> <input
							type="text" name="subject" value="${dto.subject}" />
						</label>
					</section>
					<section>
						<label class="label">작성자</label> <label class="input"> <input
							type="text" readonly="readonly"
							value="${sessionScope.member.userName}">
						</label>
					</section>

					<section>
						<label class="label">구분</label> <label class="select"> <select
							name="division">
								<option>분류</option>
								<option value="서비스 소식">서비스 소식</option>
								<option value="서비스 오픈">서비스 오픈</option>
								<option value="서비스 종료">서비스 종료</option>
								<option value="서비스 점검">서비스 점검</option>
								<option value="안내">안내</option>
						</select> <i></i>
						</label>
					</section>

					<section>
						<label class="label">내 용</label> <label class="textarea">
							<textarea name="content" rows="7">${dto.content}</textarea>
						</label>
					</section>

				</fieldset>
				<div align="center">
					<footer>
					
						<c:if test="${mode=='update' }">
			      				<input type="hidden" name="pageNo" value="${pageNo }">
			      				<input type="hidden" name="ovoNoticeNum" value="${dto.ovoNoticeNum }">
			      		</c:if>
			      		
			      		<c:if test="${mode=='reply' }">
			      				<input type="hidden" name="pageNo" value="${pageNo }">
			      				<input type="hidden" name="groupNum" value="${dto.groupNum }">
			      				<input type="hidden" name="depth" value="${dto.depth }">
			      				<input type="hidden" name="orderNo" value="${dto.orderNo }">
			      				<input type="hidden" name="parent" value="${dto.ovoNoticeNum }">
			      				
			      		</c:if>
			      		<c:if test="${mode=='created' }">
							<button type="submit" class="btn-u">등록하기</button>
							<button type="reset" class="btn-u">다시쓰기</button>
							<button type="button" class="btn-u btn-u-default"
								onclick="window.history.back();">돌아가기</button>
						</c:if>
						
						<c:if test="${mode=='update' }">
							<button type="submit" class="btn-u">수정하기</button>
							<button type="reset" class="btn-u">다시쓰기</button>
							<button type="button" class="btn-u btn-u-default"
								onclick="window.history.back();">돌아가기</button>
						</c:if>
					</footer>
				</div>
			</form>
		</div>
		<!-- General Unify Forms -->

	</div>
	<!-- End Content -->
</div>
