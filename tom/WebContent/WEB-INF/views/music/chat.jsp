<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>
<div class="bodychat">

   <br><br>

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
           <div class="headline">
              <h2>${title}</h2>
           </div>
            <!-- Begin Content -->
            <div class="col-md-12">
                <!-- Alert Tabs -->
                <div class="tab-v2 margin-bottom-40">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#song-1" data-toggle="tab">실시간 차트</a></li>
                        <li><a href="#song-2" data-toggle="tab">인기</a></li>
                        <li><a href="#song-3" data-toggle="tab">일간</a></li>
                        <li><a href="#song-4" data-toggle="tab">주간</a></li>
                        <li><a href="#song-5" data-toggle="tab">월간</a></li>
                    </ul>
                    <div class="tab-content">
                        <!-- 실시간 -->
                        <div class="tab-pane fade in active" id="song-1">
	                          <div class="tab-pane fade in active" id="song-1">
	                           <!--  <form action="#" id="sky-form" class="sky-form">       
	                            </form> -->
	                             <div class="panel panel-grey margin-bottom-40">
	                             
	                             </div>
	                            <!--Basic Table-->
					                <div class="panel panel-grey margin-bottom-40">
				                    <div class="panel-heading">
				                        <h3 class="panel-title"><i class="fa fa-tasks"></i>실시간 리스트</h3>
				                    </div>
				                    				                    
				                    <table class="table">
				                        <thead>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <th>순위</th>
				                                <th>곡정보</th>
				                                <th>좋아요</th>
				                                <th>발매일</th>
				                                
				                            </tr>
				                        </thead>
				                        <tbody>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <td><font style="font-size: 20pt">1</font></td>
				                                <td>
				                                	<div>
				                                		<div><a href="#" style="color: black;">노래제목</a></div>
				                                		<div>
				                                			<div>
				                                			<a href="#">가수이름</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<%=cp%>/music/album.do">앨범이름</a>
				                                			</div>
				                                		</div>
				                                	</div>
												</td>
				                                <td>
				                                	<button class="btn-u btn-u-orange"><i class="fa fa-heart"></i></button>
				                                </td>
				                                <td><font style="font-size: 20pt">2010.05.12</font></td>                            
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
                        </div>
                        <!-- End 실시간 -->

                        <!-- 인기 -->
                        <div class="tab-pane fade in" id="song-2">
                              <div class="panel panel-grey margin-bottom-40">
	                             
	                             </div>
	                            <!--Basic Table-->
					                <div class="panel panel-grey margin-bottom-40">
				                    <div class="panel-heading">
				                        <h3 class="panel-title"><i class="fa fa-tasks"></i>인기 리스트</h3>
				                    </div>
				                    				                    
				                    <table class="table">
				                        <thead>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <th>순위</th>
				                                <th>곡정보</th>
				                                <th>좋아요</th>
				                                <th>발매일</th>
				                                
				                            </tr>
				                        </thead>
				                        <tbody>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <td><font style="font-size: 20pt">1</font></td>
				                                <td>
				                                	<div>
				                                		<div><a href="#">노래제목</a></div>
				                                		<div>
				                                			<div>
				                                			<a href="#">가수이름</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">앨범이름</a>
				                                			</div>
				                                		</div>
				                                	</div>
												</td>
				                                <td>
				                                	<button class="btn-u btn-u-orange"><i class="fa fa-heart"></i></button>
				                                </td>
				                                <td><font style="font-size: 20pt">2010.05.12</font></td>                            
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
                        <!-- 인기 -->

                        <!-- 일간 -->
                        <div class="tab-pane fade in" id="song-3">
                              <div class="headline">
	                             <h2>2015.11.26(오늘날자)</h2>
	                          </div>
	                            <!--Basic Table-->
					                <div class="panel panel-grey margin-bottom-40">
				                    <div class="panel-heading">
				                        <h3 class="panel-title"><i class="fa fa-tasks"></i>일간 리스트</h3>
				                    </div>
				                    				                    
				                    <table class="table">
				                        <thead>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <th>순위</th>
				                                <th>곡정보</th>
				                                <th>좋아요</th>
				                                <th>발매일</th>
				                                
				                            </tr>
				                        </thead>
				                        <tbody>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <td><font style="font-size: 20pt">1</font></td>
				                                <td>
				                                	<div>
				                                		<div><a href="#">노래제목</a></div>
				                                		<div>
				                                			<div>
				                                			<a href="#">가수이름</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">앨범이름</a>
				                                			</div>
				                                		</div>
				                                	</div>
												</td>
				                                <td>
				                                	<button class="btn-u btn-u-orange"><i class="fa fa-heart"></i></button>
				                                </td>
				                                <td><font style="font-size: 20pt">2010.05.12</font></td>                            
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
                        <!-- 일간 -->                              
                        
                        <!-- 주간-->
                        <div class="tab-pane fade in" id="song-4">
                              <div class="panel panel-grey margin-bottom-40">
	                             
	                             </div>
	                            <!--Basic Table-->
					                <div class="panel panel-grey margin-bottom-40">
				                    <div class="panel-heading">
				                        <h3 class="panel-title"><i class="fa fa-tasks"></i>주간 리스트</h3>
				                    </div>
				                    				                    
				                    <table class="table">
				                        <thead>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <th>순위</th>
				                                <th>곡정보</th>
				                                <th>좋아요</th>
				                                <th>발매일</th>
				                                
				                            </tr>
				                        </thead>
				                        <tbody>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <td><font style="font-size: 20pt">1</font></td>
				                                <td>
				                                	<div>
				                                		<div><a href="#">노래제목</a></div>
				                                		<div>
				                                			<div>
				                                			<a href="#">가수이름</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">앨범이름</a>
				                                			</div>
				                                		</div>
				                                	</div>
												</td>
				                                <td>
				                                	<button class="btn-u btn-u-orange"><i class="fa fa-heart"></i></button>
				                                </td>
				                                <td><font style="font-size: 20pt">2010.05.12</font></td>                            
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
                        <!-- 주간 -->
                        
                        <!-- 월간 -->
                        <div class="tab-pane fade in" id="song-5">
                              <div class="panel panel-grey margin-bottom-40">
	                             
	                          </div>
	                            <!--Basic Table-->
					                <div class="panel panel-grey margin-bottom-40">
				                    <div class="panel-heading">
				                        <h3 class="panel-title"><i class="fa fa-tasks"></i>월간 리스트</h3>
				                    </div>
				                    				                    
				                    <table class="table">
				                        <thead>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <th>순위</th>
				                                <th>곡정보</th>
				                                <th>좋아요</th>
				                                <th>발매일</th>
				                                
				                            </tr>
				                        </thead>
				                        <tbody>
				                            <tr>
				                            	<th><input type="checkbox"></th>
				                                <td><font style="font-size: 20pt">1</font></td>
				                                <td>
				                                	<div>
				                                		<div><a href="#">노래제목</a></div>
				                                		<div>
				                                			<div>
				                                			<a href="#">가수이름</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">앨범이름</a>
				                                			</div>
				                                		</div>
				                                	</div>
												</td>
				                                <td>
				                                	<button class="btn-u btn-u-orange"><i class="fa fa-heart"></i></button>
				                                </td>
				                                <td><font style="font-size: 20pt">2010.05.12</font></td>                            
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
                        <!-- 월간 -->
                    </div>
                </div>
                <!-- End Alert Tabs -->

            

              
            </div>
            <!-- End Content -->
        </div>
    </div><!--/container-->
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->

