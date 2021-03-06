<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<div class="bodyMusic">

     <div class="container"> 
       
           <!-- Begin Content -->
            <div class="col-md-9">
                <!-- Tabs -->
                <div class="tab-v1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#home-1" data-toggle="tab">노래리스트</a></li>
                        <li><a href="#profile-1" data-toggle="tab">노래추가</a></li>
                    </ul>
                    <div class="tab-content">
                        <!-- 앨범리스트 -->
                        <div class="tab-pane fade in active" id="home-1">
                           <!--  <form action="#" id="sky-form" class="sky-form">       
                            </form> -->
                            
                            <!--Basic Table-->
				                <div class="panel panel-grey margin-bottom-40">
			                    <div class="panel-heading">
			                        <h3 class="panel-title"><i class="fa fa-tasks"></i>노래리스트</h3>
			                    </div>
			                    <div class="panel-body">
			                    <form class="form-inline" name="searchForm" action="" method="post">
			                          <select class="form-control" name="searchKey" class="selectField">
			                          	<option value="">선택</option>
			                          	<option value="subject">노래재목</option>
			                          	<option value="userName">아티스트</option>
			                            <option value="content">장르</option>                              
			                          </select>
			                          	<input placeholder="search" type="text" class="form-control" name="searchValue" />
			                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
			                    
			                    
			                    </form>
			                    </div>
			                    <table class="table">
			                        <thead>
			                            <tr>
			                                <th>Num</th>
			                                <th>앨범이름</th>
			                                <th>아티스트</th>
			                                <th>노래제목</th>
			                                <th>노래삭제</th>
			                                
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

                        <!-- 앨범등록 -->
                        <div class="tab-pane fade" id="profile-1">
                            <form action="#" class="sky-form">
			                    <header>노래추가</header>
			
			                    <fieldset>
			                    
			                   		<div class="row">
				                   		<div class="col-md-4"> 
					                        <section>
					                            <label class="label">노래제목</label>
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
					                            <label class="label">음악</label>
					                            <label for="file" class="input input-file">
					                                <div class="button"><input type="file" id="file" onchange="this.parentNode.nextSibling.value = this.value">Browse</div><input type="text" readonly>
					                            </label>
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
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->
