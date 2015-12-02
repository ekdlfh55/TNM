<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript" src="<%=cp%>/res/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
function check() {
    var f = document.musicForm;

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
        f.action = "<%=cp%>/admin/musicstory.do";
    else if(mode=="update")
        f.action = "<%=cp%>/notice/update.do";

		return true;
	}
</script>

<div class="bodyMusicstory">

     <div class="container"> 
       
          <!-- Begin Content -->
            <div class="col-md-9">
                <!-- Tabs -->
                <div class="tab-v1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#home-1" data-toggle="tab">뮤직스토리 리스트</a></li>
                         <li><a href="#profile-1" data-toggle="tab">뮤직스토리 추가/수정</a></li>
                    </ul>
                    <div class="tab-content">
                        <!-- 앨범리스트 -->
                        <div class="tab-pane fade in active" id="home-1">
                           <!--  <form action="#" id="sky-form" class="sky-form">       
                            </form> -->
                            
                            <!--Basic Table-->
				               <div class="panel panel-grey margin-bottom-40">
				                    <div class="panel-heading">
				                        <h3 class="panel-title"><i class="fa fa-tasks"></i>뮤직스토리 리스트</h3>
				                    </div>
				                    <div class="panel-body">
				                    <form class="form-inline" name="searchForm" action="" method="post">
				                          
				                          <select class="form-control" name="searchKey" class="selectField">
				                          	<option value="">선택</option>
				                          	<option value="subject">장르</option>
				                          	<option value="userName">제목</option>
				                            <option value="content">날자</option>                              
				                          </select>
				                          	<input placeholder="search" type="text" class="form-control" name="searchValue" />
				                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
				                    </form>
				                    
				                    </div>
				                    <table class="table">
				                        <thead>
				                            <tr>
				                                <th>Num</th>
				                                <th>제목</th>
				                                <th>장르</th>
				                                <th>날자</th>
				                                <th>삭제여부</th>
				                            </tr>
				                        </thead>
				                        <tbody>
				                            <tr>
				                                <td>1</td>
				                                <td>Mark</td>
				                                <td class="hidden-sm">Otto</td>
				                                <td>@mdo</td>
				                                <td><button class="btn btn-warning btn-xs"><i class="fa fa-trash-o"></i> Delete</button></td>
				                            </tr>
				                            <tr>
				                                <td>2</td>
				                                <td>Jacob</td>
				                                <td class="hidden-sm">Thornton</td>
				                                <td><span class="label label-warning">Expiring</span></td>
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
				                    
				                    <div class="panel-footer">
						                <table>
											<tr  height="15">
												<td align="center"><c:if test="${dataCount==0}">
														등록된 게시물이 없다
												</c:if> 
												<c:if test="${dataCount!=0}">
													${pageIndexList}   
												</c:if>
												</td>
											</tr>
										</table>        
					                </div>
				                </div>
				                <!--End Basic Table-->
                            
                        </div>
                        <!-- End 앨범리스트 -->
                  		
                  		<!-- 뮤직스토리등록 -->
                        <div class="tab-pane fade" id="profile-1">
                            <form name="musicForm" class="sky-form" method="po">
			                    <header>${title}</header>
			
			                    <fieldset>
			                    
			                   		<div class="row">
				                   		<div class="col-md-6"> 
					                        <section>
					                            <label class="label">제목</label>
					                            <label class="input">
					                                <input name="subject" type="text">
					                            </label>
					                        </section>
					                    </div>
					                    
					                    <div class="col-md-6"> 
					                        <section>
					                            <label class="label">이름</label>
					                            <label class="input">
					                                <input type="text" readonly="readonly">
					                            </label>
					                        </section>
					                    </div>
									</div>		
				
									<div class="row">
										<div class="col-md-6">	
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
			                        
				                        <div class="col-md-6">	
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
			                        	<div class="col-md-12">
					                        <section>
					                            <label class="label">노래 </label>
					                            <label for="file" class="input input-file">
					                                <div class="button"><input type="file" id="file" onchange="this.parentNode.nextSibling.value = this.value">Browse</div><input type="text" readonly>
					                            </label>
					                        </section>
				                        </div>
									</div>
									
									<div class="row">
										<div class="col-md-12">
					                        <section>			                        
					                            <label class="label">인터뷰 내용</label>
					                            <label class="textarea">
					                                <textarea id="content" name="content" style="width: 100%;"></textarea>
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
                        <!-- End 뮤직스토리등록 -->
                  
                    </div>
                </div>
                <!-- End Tabs-->
            </div>
            <!-- End Content -->
    </div>
    <!--=== End Content Part ===-->
    
    
</div><!--/End Wrapepr-->

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
		return check();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '돋움';
	var nFontSize = 24;
	oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>
