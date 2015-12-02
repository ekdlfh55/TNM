<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp=request.getContextPath();
   request.setCharacterEncoding("UTF-8");
%>

<script type="text/javascript">
	function freeBoardcheck() {
		var f=document.freeboardForm;
		
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
			f.action="<%=cp%>/table/created.do";
			else if(mode=="update")
				f.action="<%=cp%>/table/update.do";
				
		return true;			
	}


</script>

<div class="bodyGenreCreated">

    <!--=== Content Part ===-->
    <div class="container">
        
       <!-- Begin Content -->
            <div class="col-md-9">
                <!-- General Unify Forms -->
                <div class="panel panel-grey margin-bottom-40">
                   <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-tasks"></i>자유게시판 글쓰기</h3>
                    </div>
                    <div class="panel-body">
                <form action="#" class="sky-form" name="freeBoardForm" onsubmit="return freeBoardcheck();" method="post">
                    
                    <fieldset>
                   
                  <section>
                            <label class="label">제   목</label>
                            <label class="input">
                                <input type="text" name="subject" value="${dto.subject}"/>
                            </label>
                        </section>
                  <section>
                            <label class="label">작성자 : </label>
                            <label class="input">
                                <input type="text" readonly="readonly" value="${sessionScope.member.userId}">
                            </label>
                        </section>
                  <!-- <section>
                            <label class="label">Select</label>
                            <label class="select">
                                <select>
                                    <option value="0">분류</option>
                                    <option value="1">서비스 소식</option>
                                    <option value="2">서비스 오픈</option>
                                    <option value="3">서비스 종료</option>
                                    <option value="4">서비스 점검</option>
                                    <option value="5">안내</option>
                                </select>
                                <i></i>
                            </label>
                        </section> -->
                       
                           <section>
                            <label class="label">내   용</label>
                            <label class="textarea">
                                <textarea name="content" rows="7">${dto.content}</textarea>
                            </label>
                            </section>
                        
                    </fieldset>
               <div align="center">
                       <footer>
                           <button type="submit" class="btn-u" >등록하기</button>
                           <button type="reset" class="btn-u">다시쓰기</button>
                           <button type="button" class="btn-u btn-u-default" onclick="window.history.back();">돌아가기</button>
                       </footer>
                    </div>
                </form>
                 </div>
                <!-- General Unify Forms -->
               
            </div>
            <!-- End Content -->
        </div>
    </div><!--/container-->
    <!--=== End Content Part ===-->

</div><!--/End Wrapepr-->