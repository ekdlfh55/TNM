<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>

<div class="bodynotice">
   
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <ul class="pull-right breadcrumb">
                <li><a href="<%=cp%>">Main</a></li>
                <li><a href="<%=cp%>/faq/faq.do">faq</a></li>
                <li class="active">Progress Bars</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
 		
 		    <!-- Begin Content -->
            <div class="col-md-12">
                <!-- Progress Bars -->
                <div class="headline">
                    <h2>${title}</h2>
                </div>

                <div class="tab-v2">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-1" data-toggle="tab">홈</a></li>
                        <li><a href="#tab-2" data-toggle="tab">공지사항</a></li>
                        <li><a href="#tab-3" data-toggle="tab">1:1질문게시판</a></li>
        
                    </ul>
                    <div class="tab-content">
                        <!-- Progress Bars With Texts -->
                        <div class="tab-pane fade in active" id="tab-1">
                            <div class="margin-bottom-30"></div>
                            
                            <div class="row">
							<!-- Icon Boxes 35 -->
							        <div class="row">
							            <div class="col-md-4">
							                <div class="service-block-v1 md-margin-bottom-50">
							                    <i class="icon-custom icon-lg rounded-x icon-bg-red icon-line icon-present"></i>
							                    <h3 class="title-v3-bg text-uppercase">이용권 안내</h3>
							                   
							                    <a class="text-uppercase" href="#">사이트 이동</a><br>
							                </div>
							            </div>
							            <div class="col-md-4">
							                <div class="service-block-v1 md-margin-bottom-50">
							                    <i class="icon-custom icon-lg rounded-x icon-bg-red icon-line icon-users"></i>
							                    <h3 class="title-v3-bg text-uppercase">회원 정보 관리</h3>
							                    
							                    <a class="text-uppercase" href="#">사이트 이동</a><br>
							                   
							                </div>
							            </div>
							            <div class="col-md-4">
							                <div class="service-block-v1 md-margin-bottom-50">
							               
							                   <i class="icon-custom icon-lg rounded-x icon-bg-red icon-line icon-volume-2"></i>

							                    <h3 class="title-v3-bg text-uppercase">서비스 이용 안내 </h3>
							                    
							                    <a class="text-uppercase" href="#">사이트 이동</a><br>			                   
							                </div>
							            </div>
							        </div>
							    
							    <!-- End Icon Boxes 35 -->
							</div>
							<hr><br>
							<!-- 자주하는 질문 -->
                            <div class="row">
                               <div align="center"><h2><i class="fa fa-chevron-right"></i>자주하는 질문</h2></div>
                               <hr><br>
					           	<div class="row main-check margin-bottom-30">
					                    <div class="col-xs-6 md-margin-bottom-20">
					                        <ul class="list-unstyled check-style">
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">How does encryption work?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Is Unify Template legal?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Can I download Unify multiple times?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">How to Update Unify Template?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">How does encryption work?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Is Unify Template legal?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Can I download Unify multiple times?</a></li>
					                        </ul>
					                    </div>
					                    <div class="col-xs-6">
					                        <ul class="list-unstyled check-style">
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">How does encryption work?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Is Unify Template legal?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Can I download Unify multiple times?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">How to Update Unify Template?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">How does encryption work?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Is Unify Template legal?</a></li>
					                            <li><i class="fa fa-angle-right color-green"></i> <a href="#">Can I download Unify multiple times?</a></li>
					                        </ul>
					                </div>
					        	</div>
                            </div>

                            <hr>
                         
                        </div>
                        <!-- End Progress Bars With Texts -->

                        <!-- Progress Bars Examples -->
                        <div class="tab-pane fade in" id="tab-2">
                            <div class="margin-bottom-20"></div>

	                            <div class="row">
			                           	 	 <!--Basic Table-->
							               <div class="panel panel-grey margin-bottom-40">
							                    <div class="panel-heading">
							                        <h3 class="panel-title"><i class="fa fa-tasks"></i>공지사항</h3>
							                    </div>
							                    <div class="panel-body">
								                    <form class="form-inline" name="searchForm" action="" method="post">
								                          <select class="form-control" name="searchKey" class="selectField">
								                          	<option value="">분류</option>
								                          	<option value="subject">서비스소식</option>
								                          	<option value="userName">서비스오픈</option>
								                            <option value="content">서비스종료</option>
								                            <option value="content">서비스점검</option>
								                            <option value="content">안내</option>                             
								                          </select>     	
								                    </form>
							                    	<div align="right" >
							                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>글쓰기</button>
							                    	</div>                 
							                    </div>
							                    <table class="table">
							                        <thead>
							                            <tr>
							                                <th>Num</th>
							                                <th>분류</th>
							                                <th>제목</th>
							                                <th>조회</th>
							                                <th>등록일</th>
							                            </tr>
							                        </thead>
							                        <tbody>
							                            <tr>
							                                <td>1</td>
							                                <td>서비스종료</td>
							                                <td><a href="#">t.melon.com 서비스 종료 안내</a></td>
							                                <td>21</td>
							                                <td>2015.09.24</td>
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
                            	</div>
                            <div class="tab-pane fade in" id="tab-3">
                            	<div class="margin-bottom-20"></div>

	                            <div class="row">
			                           	 	 <!--Basic Table-->
							               <div class="panel panel-grey margin-bottom-40">
							                    <div class="panel-heading">
							                        <h3 class="panel-title"><i class="fa fa-tasks"></i>공지사항</h3>
							                    </div>
							                    <div class="panel-body">
								                    <form class="form-inline" name="searchForm" action="" method="post">
								                    	
								                    	<select class="form-control" name="searchKey" class="selectField">
								                        	<option value="">선택</option>
								                          	<option value="subject">제목</option>
								                          	<option value="userName">작성자</option>
								                            <option value="content">내용</option>                              
								                        </select>
								                          	<input placeholder="search" type="text" class="form-control" name="searchValue" />
								                    		<button class="btn btn-warning" type="button" onclick="searchList()"><i class="fa fa-search"></i>검색</button>
								                    		<button style="float: right;" class="btn btn-warning" type="button" onclick="javascript:location.href='<%=cp%>/notice/ovoCreated.do';"><i class="fa fa-search"></i>글쓰기</button>   	
								                    </form>
	               
							                    </div>
							                    <table class="table">
							                        <thead>
							                            <tr>
							                                <th>Num</th>
							                                <th>분류</th>
							                                <th>제목</th>
							                                <th>조회</th>
							                                <th>등록일</th>
							                            </tr>
							                        </thead>
							                        <tbody>
							                            <tr>
							                                <td>1</td>
							                                <td>서비스종료</td>
							                                <td><a href="#">t.melon.com 서비스 종료 안내</a></td>
							                                <td>21</td>
							                                <td>2015.09.24</td>
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
                            </div>
                            
                        </div>
                          
                    </div>
                </div>
                <!-- End Progress Bars -->
            </div>
            <!-- End Content -->
        </div>
    </div><!--/container-->

