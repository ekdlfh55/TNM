 <%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<div class="body2">
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">           
            <ul class="pull-right breadcrumb">
                <li><a href="<%=cp%>">main</a></li>
                <li><a href="<%=cp%>/member/login.do">login</a></li>
                <li class="active">Registration</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <form class="reg-page" name="joinForm" method="post">
                    <div class="reg-header">
                        <h2>${title}</h2>
                        <p>Already Signed Up? Click <a href="<%=cp%>/member/login.do" class="color-green">Sign In</a> to login your account.</p>
                    </div>

                    <label>UserId <span class="color-red">*</span></label>
                    <input type="text" name="userId" id="userId" onchange="#" class="form-control margin-bottom-20" value="${dto.userId}"${mode=="update" ? "readonly='readonly' style='border:none;'":""}>

                    <label>UserName <span class="color-red">*</span></label>
                    <input type="text" name="userName" class="form-control margin-bottom-20" value="${dto.userName}" ${mode=="update" ? "readonly='readonly' style='border:none;' ":""}>
                    
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Password <span class="color-red">*</span></label>
                            <input type="password" name="userPwd" class="form-control margin-bottom-20">
                        </div>
                        <div class="col-sm-6">
                            <label>Confirm Password <span class="color-red">*</span></label>
                            <input type="password" name="userPwd1" class="form-control margin-bottom-20">
                        </div>
                    </div>
                    
                    <label>birth</label>
                    <input type="date" name="birth" value="${dto.birth}" class="form-control margin-bottom-20">
                    
                    <label>Email Address</label>
                    <div class="row">   	
                        	<div class="col-sm-5">
	                           <select style="width: 110px" name="selectEmail" class="form-control margin-bottom-20" onchange="changeEmail()">
									<option  value="">선 택</option>
									<option value="naver.com" ${dto.email2=="naver.com" ? "selected='selected'" : ""}>naver.com</option>
									<option value="hanmail.net" ${dto.email2=="hanmail.net" ? "selected='selected'" : ""}>hanmail.net</option>
									<option value="hotmail.com" ${dto.email2=="hotmail.com" ? "selected='selected'" : ""}>hotmail.com</option>
									<option value="gmail.com" ${dto.email2=="gmail.com" ? "selected='selected'" : ""}>gmail.com</option>
									<option value="direct">직접입력</option>
							
							</select>
                        	</div>
	                        
	                        <div class="col-sm-3">                      	      
	                            <input type="text" name="email1" value="${dto.email1}" class="form-control margin-bottom-20">
	                        </div> 
	                        
	                        <div class="col-sm-4">                      	      
	                            <input type="text" name="email2" class="form-control margin-bottom-20" value="${dto.email2}" readonly="readonly">
	                        </div>               	                       
                    </div>
                    
                    <label>Favourite Genre1(복수선택 가능)</label>
                    <div class="row">   	
                        <div class="col-sm-12" align="center">
                      	    <input type="checkbox" name="genre[]" value="가요">가요&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="pop">POP&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="ost">OST&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="일렉트로니카&클럽뮤직">일렉트로니카&클럽뮤직&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="록/메탈">록/메탈&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="R&B/Soul">R&B/Soul&nbsp;&nbsp;&nbsp;<br>
							<input type="checkbox" name="genre[]" value="랩/힙합">랩/힙합&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="인디음악">인디음악&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="트로트">트로트&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="J-POP">J-POP&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="클래식">클래식&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="genre[]" value="재즈">재즈&nbsp;&nbsp;&nbsp;		
                        </div>                                                  	                        
                    </div>
                    <br>
           	   
                 	<label>Address</label>
	                 <input type="text" name="home" class="form-control margin-bottom-20">	
             
                    <label>Phone</label>
	                <div class="row">   	
                        	<div class="col-sm-4">
	                            <select name="tel1" class="form-control margin-bottom-20">
	 								<option style="width: 70px" value="">선 택</option>
									<option value="010" ${dto.tel1=="010" ? "selected='selected'" : ""}>010</option>
									<option value="011" ${dto.tel1=="011" ? "selected='selected'" : ""}>011</option>
									<option value="016" ${dto.tel1=="016" ? "selected='selected'" : ""}>016</option>
									<option value="017" ${dto.tel1=="017" ? "selected='selected'" : ""}>017</option>
									<option value="018" ${dto.tel1=="018" ? "selected='selected'" : ""}>018</option>
									<option value="019" ${dto.tel1=="019" ? "selected='selected'" : ""}>019</option>
								</select>
                        	</div>
	                        
	                        <div class="col-sm-4">                      	      
	                            <input type="text"  name="tel2" class="form-control margin-bottom-20" value="${dto.tel2}" onkeypress="onlyNum();">
	                        </div>
                     
	                        <div class="col-sm-4">                      	      
	                            <input type="text"  name="tel3" class="form-control margin-bottom-20" value="${dto.tel3}" onkeypress="onlyNum();">
	                        </div>
                    </div>
					
					
					
					<label>Question</label>
					<div class="row">   	
                        	<div class="col-sm-7">
	                            <select name="question" class="form-control margin-bottom-20">
	 								<option style="width: 70px" value="">원하는 질문을 선택하세요.</option>
									<option value="가장 기억에 남는 장소는?" >가장 기억에 남는 장소는?</option>
									<option value="나의 좌우명은?" >나의 좌우명은?</option>
									<option value="나의 보물 제 1호는?">나의 보물 제 1호는?</option>
									<option value="오래도록 기억하고 싶은 날짜는?">오래도록 기억하고 싶은 날짜는?</option>
									<option value="가장 생각나는 친구 이름은?">가장 생각나는 친구 이름은?</option>
									<option value="좋아하는 스포츠의 팀은?">좋아하는 스포츠의 팀은?</option>
									<option value="초등학교시절 나의 꿈은?">초등학교시절 나의 꿈은?</option>
									<option value="내가 좋아하는 색은?">내가 좋아하는 색은?</option>
									<option value="우리집 애완동물 이름은?">우리집 애완동물 이름은?</option>									
								</select>
                        	</div>
                        	
                        	<div class="col-sm-5">                      	      
	                            <input name="answer" type="text" class="form-control margin-bottom-20">
	                        </div>
                     </div>
					
                    <hr>

                    <div class="row">
                        <div class="col-lg-6 checkbox">
                            <label>
                                <input type="checkbox">
                                I read <a href="page_terms.html" class="color-green">Terms and Conditions</a>
                            </label>
                        </div>
					<c:if test="${mode=='created'}">
                        <div class="col-lg-6 text-right">
                            <button class="btn-u" type="button" onclick="memberOk();">Register</button>
                            <button class="btn-u" type="reset">Reset</button>
                            <button class="btn-u" type="button" onclick="javascript:location.href='<%=cp%>';">cencle</button>
                        </div>
                    </c:if>
                    
                    <c:if test="${mode=='update'}">
                        <div class="col-lg-6 text-right">
                        	<input type="hidden" name="enabled" value="${dto.enabled}">
                            <button class="btn-u" type="button" onclick="memberOk();">Update</button>
                            <button class="btn-u" type="reset">Reset</button>
                            <button class="btn-u" type="button" onclick="javascript:location.href='<%=cp%>';">cencle</button>
                        </div>
                    </c:if>
                    
                    </div>
                </form>
                
            </div>
        </div>
    </div><!--/container-->
  
</div>

<script type="text/javascript">
    /* jQuery(document).ready(function() {
        App.init();
    }); */
    
    function memberOk() {
    	var f = document.joinForm;
    	var str;

    	str = f.userId.value;
    	str = str.trim();
    	if(!str) {
    		alert("\n아이디를 입력하세요. ");
    		f.userId.focus();
    		return;
    	}
    	if(!/^[a-z][a-z0-9_]{4,9}$/i.test(str)) { 
    		alert("아이디는 5~10자이며 첫글자는 영문자이어야 합니다.");
    		f.userId.focus();
    		return;
    	}

    	f.userId.value = str;

    	str = f.userPwd.value;
    	str = str.trim();
    	if(!str) {
    		alert("\n패스워드를 입력하세요. ");
    		f.userPwd.focus();
    		return;
    	}
    	if(!/^(?=.*[a-z])(?=.*[!@#$%^*+=-]|.*[0-9]).{5,10}$/i.test(str)) { 
    		alert("패스워드는 5~10자이며 하나 이상의 숫자나 특수문자가 포함되어야 합니다.");
    		f.userPwd.focus();
    		return;
    	}
    	f.userPwd.value = str;

    	if(str!= f.userPwd1.value) {
            alert("\n패스워드가 일치하지 않습니다. ");
            f.userPwd1.focus();
            return;
    	}
    	
        str = f.userName.value;
    	str = str.trim();
        if(!str) {
            alert("\n이름을 입력하세요. ");
            f.userName.focus();
            return;
        }
        f.userName.value = str;

        str = f.birth.value;
    	str = str.trim();
        if(!str ) { //|| !isValidDateFormat(str)
            alert("\n생년월일를 입력하세요[YYYY-MM-DD]. ");
            f.birth.focus();
            return;
        }
        
        str = f.tel1.value;
    	str = str.trim();
        if(!str) {
            alert("\n전화번호를 입력하세요. ");
            f.tel1.focus();
            return;
        }

        str = f.tel2.value;
    	str = str.trim();
        if(!str) {
            alert("\n전화번호를 입력하세요. ");
            f.tel2.focus();
            return;
        }
        if(!/^(\d+)$/.test(str)) {
            alert("\n숫자만 가능합니다. ");
            f.tel2.focus();
            return;
        }
		
        str = f.home.value;
    	str = str.trim();
        if(!str) {
            alert("\n주소를 입력하세요. ");
            f.zip.focus();
            return;
        }
        
        str = f.tel3.value;
    	str = str.trim();
        if(!str) {
            alert("\n전화번호를 입력하세요. ");
            f.tel3.focus();
            return;
        }
        if(!/^(\d+)$/.test(str)) {
            alert("\n숫자만 가능합니다. ");
            f.tel3.focus();
            return;
        }
        
        str = f.email1.value;
    	str = str.trim();
        if(!str) {
            alert("\n이메일을 입력하세요. ");
            f.email1.focus();
            return;
        }
        
        

        str = f.email2.value;
    	str = str.trim();
        if(!str) {
            alert("\n이메일을 입력하세요. ");
            f.email2.focus();
            return;
        }
        
        str = f.answer.value;
        str = str.trim();
        if(!str){
        	alert("\n질문을 입력하세요. ");
            f.answar.focus();
            return;
        }

        var mode="${mode}";
        if(mode=="created") {
        	f.action = "<%=cp%>/member/join.do";
        } else if(mode=="update") {
        	f.action = "<%=cp%>/member/update.do";
        }

        f.submit();
    }
    
    function changeEmail() {
        var f = document.joinForm;
        
     	var str = f.selectEmail.value;
        if(str!="direct") {
             f.email2.value=str; 
             f.email2.readOnly = true;
             f.email1.focus(); 
        }
        else {
            f.email2.value="";
            f.email2.readOnly = false;
            f.email1.focus();
        }
    }
    
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>