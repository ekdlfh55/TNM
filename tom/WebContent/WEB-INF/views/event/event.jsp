<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>

<div class="bodyEvent">
    <br><br>
    
    <div class="container">
    <div class="headline"><h2>${title }</h2></div>
      
      <div class="row">
      
          <c:forEach var="dto" items="${list}">  
            <div class="col-sm-6 sm-margin-40">
                <div class="funny-boxes funny-boxes-left-green">
                    <div class="row">
                        <div class="col-md-5 funny-boxes-img">
                            <img class="img-responsive" src="<%=cp%>/uploads/event/${dto.eventFilename}" alt="">
                            <ul class="list-unstyled">
                            	<li><i class="fa-fw fa fa-map-marker"></i> ${dto.division}</li>
                               <li>
                               	<i class="fa-fw fa fa-briefcase"></i>${dto.createdstart } ~ ${dto.createdend }        
                               </li>   
                            </ul>
                        </div>
                        <div class="col-md-7">
                            <h2 align="center"><a href="#">${dto.subject }</a></h2>              
                            <p>${dto.content}</p>
                        </div>
                    </div>
                </div>
            </div>
    	</c:forEach>
    	
        </div>
        
        	<div class="page">
				<table>
					<tr align="center" height="15">
					
							<c:if test="${dataCount==0}">
								등록된 게시물이 없다
							</c:if> 
							
							<c:if test="${dataCount!=0}">
								${pageIndexList}   
							</c:if>				
						
					</tr>
				</table>
			</div>
	
    </div>    
  
</div><!--/wrapper-->
