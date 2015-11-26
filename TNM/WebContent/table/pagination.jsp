<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Paginations | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/animate.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
            <!-- Begin Sidebar Menu -->
            <div class="col-md-3">
                <ul class="list-group sidebar-nav-v1" id="sidebar-nav">
                    <!-- Typography -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-typography">Typography</a>
                        <ul id="collapse-typography" class="collapse">
                            <li><a href="shortcode_typo_general.html"><i class="fa fa-sort-alpha-asc"></i> General Typography</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_typo_headings.html"><i class="fa fa-magic"></i> Heading Options</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_typo_dividers.html"><i class="fa fa-ellipsis-h"></i> Dividers</a>
                            </li>
                            <li><a href="shortcode_typo_blockquote.html"><i class="fa fa-quote-left"></i> Blockquote Blocks</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_typo_boxshadows.html"><i class="fa fa-asterisk"></i> Box Shadows</a>
                            </li>
                            <li><a href="shortcode_typo_testimonials.html"><i class="fa fa-comments"></i> Testimonials</a></li>
                            <li><a href="shortcode_typo_tagline_boxes.html"><i class="fa fa-tasks"></i> Tagline Boxes</a></li>
                            <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> Grid Layouts</a></li>
                        </ul>
                    </li>
                    <!-- End Typography -->

                    <!-- Buttons UI -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-buttons">Buttons UI</a>
                        <ul id="collapse-buttons" class="collapse">
                            <li><a href="shortcode_btn_general.html"><i class="fa fa-flask"></i> General Buttons</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_btn_brands.html"><i class="fa fa-html5"></i> Brand &amp; Social Buttons</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_btn_effects.html"><i class="fa fa-bolt"></i> Loading &amp; Hover Effects</a>
                            </li>
                        </ul>
                    </li>
                    <!-- End Buttons UI -->

                    <!-- Icons -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-icons">Icons</a>
                        <ul id="collapse-icons" class="collapse">
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_icon_general.html"><i class="fa fa-chevron-circle-right"></i> General Icons</a>
                            </li>
                            <li><a href="shortcode_icon_fa.html"><i class="fa fa-chevron-circle-right"></i> Font Awesome Icons</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_icon_line.html"><i class="fa fa-chevron-circle-right"></i> Line Icons</a>
                            </li>
                            <li><a href="shortcode_icon_glyph.html"><i class="fa fa-chevron-circle-right"></i> Glyphicons (Bootstrap)</a></li>
                        </ul>
                    </li>
                    <!-- End Icons -->

                    <!-- Thumbails -->
                    <li class="list-group-item"><a href="shortcode_thumbnails.html">Thumbnails</a></li>
                    <!-- End Thumbails -->

                    <!-- Components -->
                    <li class="list-group-item list-toggle active">
                        <a class="accordion-toggle" href="#collapse-components" data-toggle="collapse">Components</a>
                        <ul id="collapse-components" class="collapse in">
                            <li><a href="shortcode_compo_messages.html"><i class="fa fa-comment"></i> Alerts &amp; Messages</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_compo_labels.html"><i class="fa fa-tags"></i> Labels &amp; Badges</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_compo_progress_bars.html"><i class="fa fa-align-left"></i> Progress Bars</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_compo_media.html"><i class="fa fa-volume-down"></i> Audio/Videos &amp; Images</a>
                            </li>
                            <li><a href="shortcode_compo_panels.html"><i class="fa fa-columns"></i> Panels</a></li>
                            <li class="active"><a href="shortcode_compo_pagination.html"><i class="fa fa-arrows-h"></i> Pagination</a></li>
                        </ul>
                    </li>
                    <!-- End Components -->

                    <!-- Accordion and Tabs -->
                    <li class="list-group-item"><a href="shortcode_accordion_and_tabs.html">Accordion and Tabs</a></li>
                    <!-- End Accordion and Tabs -->

                    <!-- Timeline -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-timeline" data-toggle="collapse">Timeline</a>
                        <ul id="collapse-timeline" class="collapse">
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_timeline1.html"><i class="fa fa-dot-circle-o"></i> Timeline 1</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_timeline2.html"><i class="fa fa-dot-circle-o"></i> Timeline 2</a>
                            </li>
                        </ul>
                    </li>
                    <!-- End Timeline -->

                    <!-- Carousel Examples -->
                    <li class="list-group-item">
                        <span class="badge badge-u">New</span>
                        <a href="shortcode_carousels.html">Carousel Examples</a>
                    </li>
                    <!-- End Carousel Examples -->

                    <!-- Forms -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-forms" data-toggle="collapse">Forms</a>
                        <ul id="collapse-forms" class="collapse">
                            <li><a href="shortcode_form_general.html"><i class="fa fa-bars"></i> Common Bootstrap Forms</a></li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_form_general1.html"><i class="fa fa-bars"></i> General Unify Forms</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_form_advanced.html"><i class="fa fa-bars"></i> Advanced Forms</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_form_layouts.html"><i class="fa fa-bars"></i> Form Layouts</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_form_layouts_advanced.html"><i class="fa fa-bars"></i> Advanced Form Layouts</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_form_states.html"><i class="fa fa-bars"></i> Form States</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_form_sliders.html"><i class="fa fa-bars"></i> Form Sliders</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_form_modals.html"><i class="fa fa-bars"></i> Modals</a>
                            </li>
                        </ul>
                    </li>
                    <!-- End Forms -->

                    <!-- Tables -->
                    <li class="list-group-item"><a href="shortcode_table_general.html">Tables</a></li>
                    <!-- End Tables -->

                    <!-- Maps -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-maps" data-toggle="collapse">Maps</a>
                        <ul id="collapse-maps" class="collapse">
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_maps_google.html"><i class="fa fa-map-marker"></i> Google Maps</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_maps_vector.html"><i class="fa fa-align-center"></i> Vector Maps</a>
                            </li>
                        </ul>
                    </li>
                    <!-- End Maps -->

                    <!-- Charts -->
                    <li class="list-group-item">
                        <span class="badge badge-u">New</span>
                        <a href="shortcode_compo_charts.html">Charts &amp; Countdowns</a>
                    </li>
                    <!-- End Charts -->
                </ul>
            </div>
            <!-- End Sidebar Menu -->      
            </div>
            <!-- End Content -->
    </div><!--/container-->
    <!--=== End Content Part ===-->

</div><!--/End Wrapepr-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>