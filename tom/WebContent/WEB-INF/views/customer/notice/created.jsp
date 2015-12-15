<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<script type="text/javascript">
   function sendNotice() {
	   var f = document.noticeForm;

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
           f.action = "<%=cp%>/notice/created.do";
       else if(mode=="update")
           f.action = "<%=cp%>/notice/update.do";
           
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
			 <form name="noticeForm" class="sky-form" method="post" onsubmit="return sendNotice();">
                    <header>글쓰기</header>

                    <fieldset>
                    <div class="row">                                            
                         <div class="col-md-6"> 
                        <section>
                            <label class="label">작성자</label>
                            <label class="input">
                               
                                ${sessionScope.member.userName}
                            </label>
                        </section>
                        </div>
                        
                        <div class="col-md-6"> 
	                        <section>
	                            <label class="label">selected</label>
	                            <label class="select">
	                               <input type="checkbox" value="0">공지여부
	                            </label>
	                        </section>
                        </div>
					</div>
						
						
					<div class="row">                                            
                         <div class="col-md-6"> 
							<section>
								<label class="label">제 목</label> <label class="input"> <input
									type="text" name="subject" value="${dto.subject}" />
								</label>
							</section>
						</div>
						
						<div class="col-md-6"> 
							<section>
	                            <label class="label">분류</label>
	                            <label class="select">
	                                <select name="genre">
	                                    <option value="분류">분류</option>
	                                    <option value="서비스 소식">서비스 소식</option>
	                                    <option value="서비스 오픈">서비스 오픈</option>
	                                    <option value="서비스 종료">서비스 종료</option>
	                                    <option value="서비스 점검">서비스 점검</option>
	                                    <option value="안내">안내</option>
	                                </select>
	                                <i></i>
	                            </label>
                       		</section>
						</div>
					</div>
   
                       	 <section>
                            <label class="label">내용</label>
                            <label class="textarea">
                                <textarea rows="7" name="content">${dto.content}</textarea>
                            </label>
                            <div class="note"><strong>Note:</strong> height of the textarea depends on the rows attribute.</div>
                        </section>
                        
                    </fieldset>
					<div align="center">
	                    <footer>
	                   
	                    <c:if test="${mode=='created' }">
	                        <button type="submit" class="btn-u" >등록하기</button>
	                        <button type="reset" class="btn-u">다시쓰기</button>
	                        <button type="button" class="btn-u btn-u-default" onclick="window.history.back();">돌아가기</button>
	                    </c:if>
	                       
	                        <c:if test="${mode=='update' }">   
		                        <button type="submit" class="btn-u" >수정하기</button>
		                        <button type="reset" class="btn-u">다시쓰기</button>
		                        <button type="button" class="btn-u btn-u-default" onclick="window.history.back();">돌아가기</button>
		                        
		                        <input type="hidden" name="pageNum" value="${pageNum}">
                				<input type="hidden" name="num" value="${dto.num}">  	
	                        </c:if>
	                        
	                    </footer>
                    </div>
                </form>
                <!-- General Unify Forms -->
		</div>
		<!-- General Unify Forms -->

	</div>
	<!-- End Content -->
</div>
