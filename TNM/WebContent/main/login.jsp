<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Modal -->
                        <a class="btn-u" data-toggle="modal" data-target="#myModal">Modal Sample</a>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 id="myModalLabel1" class="modal-title">Modal Heading</h4>
                                    </div>
                                    <div class="modal-body">
                                        <h4>Text in a modal</h4>
                                        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>

                                        <h4>Popover in a modal</h4>
                                        <p>This <a data-content="And here's some amazing content. It's very engaging. right?" title="" class="btn-u btn-u-default popover-test" role="button" href="#" data-original-title="A Title">button</a> should trigger a popover on click.</p>

                                        <h4>Tooltips in a modal</h4>
                                        <p><a title="" class="tooltip-test" href="#" data-original-title="Tooltip">This link</a> and <a title="" class="tooltip-test" href="#" data-original-title="Tooltip">that link</a> should have tooltips on hover.</p>

                                        <hr>

                                        <h4>Overflowing text to show scroll behavior</h4>
                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button data-dismiss="modal" class="btn-u btn-u-default" type="button">Close</button>
                                        <button class="btn-u" type="button">Save changes</button>
                                    </div>
                                  </div>
                            </div>
                        </div>
                        <!-- End Modal -->
</body>
</html>