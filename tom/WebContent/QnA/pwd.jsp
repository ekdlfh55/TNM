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
    <title>Login | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

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

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/page_log_reg_v1.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">
    <!--=== Header ===-->
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="index.html">
                <img src="<%=cp%>/res/main/assets/img/logo1-default.png" alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">
                    <li class="hoverSelector">
                        <i class="fa fa-globe"></i>
                        <a>Languages</a>
                        <ul class="languages hoverSelectorBlock">
                            <li class="active">
                                <a href="#">English <i class="fa fa-check"></i></a>
                            </li>
                            <li><a href="#">Spanish</a></li>
                            <li><a href="#">Russian</a></li>
                            <li><a href="#">German</a></li>
                        </ul>
                    </li>
                    <li class="topbar-devider"></li>
                    <li><a href="page_faq.html">Help</a></li>
                    <li class="topbar-devider"></li>
                    <li><a href="page_login.html">Login</a></li>
                </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div><!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav">
                    <!-- Home -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Home
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="index.html">Option 1: Default Page</a></li>

                            <!-- One Page -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Option 2: One Page</a>
                                <ul class="dropdown-menu">
                                    <li><a target="_blank" href="One-Page/index.html">- One Page Template</a></li>
                                    <li><a target="_blank" href="One-Page/one_page_dark.html">- One Page Dark Option</a></li>
                                    <li><a target="_blank" href="One-Page/one_page_home1.html">- One Page Option 1</a></li>
                                    <li><a target="_blank" href="One-Page/one_page_home2.html">- One Page Option 2</a></li>
                                    <li><a target="_blank" href="One-Page/one_page_home3.html">- One Page Option 3</a></li>
                                </ul>
                            </li>
                            <!-- End One Page -->

                            <!-- Shop UI Page -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Option 3: Shop UI</a>
                                <ul class="dropdown-menu">
                                    <li><a target="_blank" href="Shop-UI/index.html">- Home Page</a></li>
                                    <li><a target="_blank" href="Shop-UI/shop-ui-inner.html">- Product Page</a></li>
                                    <li><a target="_blank" href="Shop-UI/shop-ui-filter-grid.html">- Filter Grid Page</a></li>
                                    <li><a target="_blank" href="Shop-UI/shop-ui-filter-list.html">- Filter List Page</a></li>
                                    <li><a target="_blank" href="Shop-UI/shop-ui-add-to-cart.html">- Checkout Page</a></li>
                                    <li><a target="_blank" href="Shop-UI/shop-ui-login.html">- Login Page</a></li>
                                    <li><a target="_blank" href="Shop-UI/shop-ui-register.html">- Registration Page</a></li>
                                </ul>
                            </li>
                            <!-- End Shop UI -->

                            <!-- Blog Template -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Option 4: Blog Template</a>
                                <ul class="dropdown-menu">
                                    <li><a target="_blank" href="Blog/index.html">- Home Page</a></li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">- Blog Page Layouts</a>
                                        <ul class="dropdown-menu">
                                            <li><a target="_blank" href="Blog/blog_page_layouts1.html">Page Layouts v1</a></li>
                                            <li><a target="_blank" href="Blog/blog_page_layouts2.html">Page Layouts v2</a></li>
                                            <li><a target="_blank" href="Blog/blog_page_layouts3.html">Page Layouts v3</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">- Blog Post Layouts</a>
                                        <ul class="dropdown-menu">
                                            <li><a target="_blank" href="Blog/blog_post_layouts1.html">Post Layout v1</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts2.html">Post Layout v2</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts3.html">Post Layout v3</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts4.html">Post Layout v4</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts5.html">Post Layout v5</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts6.html">Post Layout v6</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts7.html">Post Layout v7</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts8.html">Post Layout v8</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts9.html">Post Layout v9</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts_ls.html">Left Sidebar Example</a></li>
                                            <li><a target="_blank" href="Blog/blog_post_layouts_fw.html">Full Width Example</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">- Grid Layouts</a>
                                        <ul class="dropdown-menu">
                                            <li><a target="_blank" href="Blog/blog_grid_1.html">Grid: 1 Col</a></li>
                                            <li><a target="_blank" href="Blog/blog_grid_2.html">Grid: 2 Col</a></li>
                                            <li><a target="_blank" href="Blog/blog_grid_3.html">Grid: 3 Col</a></li>
                                            <li><a target="_blank" href="Blog/blog_grid_4.html">Grid: 4 Col</a></li>
                                            <li><a target="_blank" href="Blog/blog_grid_4_fw.html">Grid: Full Width (4 Col)</a></li>
                                            <li><a target="_blank" href="Blog/blog_grid_2_rs.html">Grid: Right Sidebar (2 Col)</a></li>
                                            <li><a target="_blank" href="Blog/blog_grid_2_ls.html">Grid: Left Sidebar (2 Col)</a></li>
                                        </ul>
                                    </li>
                                    <li><a target="_blank" href="Blog/blog_single.html">- Single Page</a></li>
                                    <li><a target="_blank" href="Blog/blog_home_boxed.html">- Home Boxed Page</a></li>
                                    <li><a target="_blank" href="Blog/blog_home_boxed_space.html">- Home Boxed Space Page</a></li>
                                </ul>
                            </li>
                            <!-- End Blog Template -->

                            <li><a href="page_home8.html">Option 5: Home Discover</a></li>
                            <li><a href="page_home14.html">Option 6: Home Incredible</a></li>
                            <li><a href="page_home9.html">Option 7: Home Creative</a></li>
                            <li><a href="page_home10.html">Option 8: Home Inspire</a></li>
                            <li><a href="page_home11.html">Option 9: Home Desire</a></li>
                            <li><a href="page_jobs.html">Option 10: Home Jobs</a></li>
                            <li><a href="page_home3.html">Option 11: Amazing Content</a></li>
                            <li><a href="page_home6.html">Option 12: Home Magazine</a></li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Option 13: Home Sidebar</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_home12.html">- Home Left Sidebar</a></li>
                                    <li><a href="page_home13.html">- Home Right Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="page_home1.html">Option 14: Home Basic v1</a></li>
                            <li><a href="page_home2.html">Option 15: Home Basic v2</a></li>
                            <li><a href="page_home5.html">Option 16: Home Basic v3</a></li>
                            <li><a href="page_home4.html">Option 17: Home Basic v4</a></li>
                            <li><a href="page_home7.html">Option 18: Home Basic v5</a></li>
                        </ul>
                    </li>
                    <!-- End Home -->

                    <!-- Pages -->
                    <li class="dropdown active">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Pages
                        </a>
                        <ul class="dropdown-menu">
                            <!-- About Pages -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">About Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_about2.html">About Us </a></li>
                                    <li><a href="page_about3.html">About Us 1</a></li>
                                    <li><a href="page_about1.html">About Us 2</a></li>
                                    <li><a href="page_about.html">About Us 3</a></li>
                                    <li><a href="page_about_me.html">About Me </a></li>
                                    <li><a href="page_about_me1.html">About Me 1</a></li>
                                    <li><a href="page_about_me2.html">About Me 2</a></li>
                                    <li><a href="page_about_our_team.html">About Our Team</a></li>
                                    <li><a href="page_about_our_team1.html">About Our Team 1</a></li>
                                    <li><a href="page_about_our_team2.html">About Our Team 2</a></li>
                                </ul>
                            </li>
                            <!-- End About Pages -->

                            <!-- Service Pages -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Service Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_services.html">Our Services</a></li>
                                    <li><a href="page_services1.html">Our Services 1</a></li>
                                    <li><a href="page_services2.html">Our Services 2</a></li>
                                    <li><a href="page_services3.html">Our Services 3</a></li>
                                </ul>
                            </li>
                            <!-- End Service Pages -->

                            <!-- Contacts -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                    Contact Pages
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_contact1.html">Contacts Default</a></li>
                                    <li><a href="page_contact2.html">Contacts Option 1</a></li>
                                    <li><a href="page_contact3.html">Contacts Option 2</a></li>
                                    <li><a href="page_contact4.html">Contacts Option 3</a></li>
                                    <li><a href="page_contact_advanced.php">Contacts Advanced</a></li>
                                </ul>
                            </li>
                            <!-- End Contacts -->

                            <!-- Profile Pages -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Profile Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_profile.html">Profile Main Page</a></li>
                                    <li><a href="page_profile_me.html">Profile Overview</a></li>
                                    <li><a href="page_profile_users.html">Profile Users</a></li>
                                    <li><a href="page_profile_projects.html">Profile Projects</a></li>
                                    <li><a href="page_profile_comments.html">Profile Comments</a></li>
                                    <li><a href="page_profile_history.html">Profile History</a></li>
                                    <li><a href="page_profile_settings.html">Profile Settings</a></li>
                                </ul>
                            </li>
                            <!-- End Profile Pages -->

                            <!-- Job Pages -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Job Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_jobs.html">Jobs Main Page</a></li>
                                    <li><a href="page_jobs1.html">Jobs Main Page 1</a></li>
                                    <li><a href="page_jobs_inner.html">Jobs Description Default</a></li>
                                    <li><a href="page_jobs_inner1.html">Jobs Description Basic</a></li>
                                    <li><a href="page_jobs_inner2.html">Jobs Description Min</a></li>
                                </ul>
                            </li>
                            <!-- End Job Pages -->

                            <!-- Pricing Tables -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Pricing Tables</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_pricing_colorful.html">Colorful Pricing Tables</a></li>
                                    <li><a href="page_pricing_flat.html">Flat Pricing Tables</a></li>
                                    <li><a href="page_pricing_light.html">Light Pricing Tables</a></li>
                                    <li><a href="page_pricing_mega.html">Mega Pricing Tables</a></li>
                                    <li><a href="page_pricing.html">Default Pricing Tables</a></li>
                                </ul>
                            </li>
                            <!-- End Pricing Tables -->

                            <!-- Login and Registration -->
                            <li class="dropdown-submenu active">
                                <a href="javascript:void(0);">Login and Registration</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_registration.html">Registration Page</a></li>
                                    <li class="active"><a href="page_login.html">Login Page</a></li>
                                    <li><a href="page_registration1.html">Registration Option</a></li>
                                    <li><a href="page_login1.html">Login Option</a></li>
                                </ul>
                            </li>
                            <!-- End Login and Registration -->

                            <!-- FAQs Pages -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">FAQs Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_faq1.html">FAQs Page</a></li>
                                    <li><a href="page_faq.html">FAQs Basic</a></li>
                                </ul>
                            </li>
                            <!-- End FAQs Pages -->

                            <!-- Email Tempaltes -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Email Templates</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Email Corporate</a>
                                        <ul class="dropdown-menu">
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_aqua.html">Corporate Aqua Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_blue.html">Corporate Blue Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_brown.html">Corporate Brown Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_dark_blue.html">Corporate Dark Blue Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_green.html">Corporate Green Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_light_green.html">Corporate Light Green Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_grey.html">Corporate Grey Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_orange.html">Corporate Orange Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_purple.html">Corporate Purple Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/corporate/email_corporate_red.html">Corporate Red Color</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Email Flat</a>
                                        <ul class="dropdown-menu">
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_aqua.html">Flat Aqua Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_blue.html">Flat Blue Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_brown.html">Flat Brown Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_dark_blue.html">Flat Dark Blue Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_green.html">Flat Green Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_light_green.html">Flat Light Green Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_grey.html">Flat Grey Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_orange.html">Flat Orange Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_purple.html">Flat Purple Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/flat/email_flat_red.html">Flat Red Color</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Email Modern</a>
                                        <ul class="dropdown-menu">
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_aqua.html">Modern Aqua Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_blue.html">Modern Blue Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_brown.html">Modern Brown Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_dark_blue.html">Modern Dark Blue Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_green.html">Modern Green Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_light_green.html">Modern Light Green Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_grey.html">Modern Grey Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_orange.html">Modern Orange Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_purple.html">Modern Purple Color</a></li>
                                            <li><a target="_blank" href="Email-Templates/modern/email_modern_red.html">Modern Red Color</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- End Email Tempaltes -->

                            <!-- Search Results -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Search Results</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_search_inner_full_width.html">Search Results Full Width</a></li>
                                    <li><a href="page_search_inner_left_sidebar.html">Search Result Left Sidebar</a></li>
                                    <li><a href="page_search_table.html">Search Result Tables</a></li>
                                </ul>
                            </li>
                            <!-- End Search Results -->

                            <!-- Coming Soon -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Coming Soon Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_coming_soon.html">Coming Soon</a></li>
                                    <li><a href="page_coming_soon1.html">Coming Soon 1</a></li>
                                </ul>
                            </li>
                            <!-- End Coming Soon -->

                            <!-- Error Pages -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Error Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_404_error.html">404 Error Default</a></li>
                                    <li><a href="page_404_error1.html">404 Error Option 1</a></li>
                                    <li><a href="page_404_error2.html">404 Error Option 2</a></li>
                                    <li><a href="page_404_error3.html">404 Error Option 3</a></li>
                                </ul>
                            </li>
                            <!-- End Error Pages -->

                            <!-- Invoice Page -->
                            <li><a href="page_invoice.html">Invoice Page</a></li>
                            <!-- End Invoice Page -->

                            <!-- Clients Page -->
                            <li><a href="page_clients.html">Clients Page</a></li>
                            <!-- End Clients Page -->

                            <!-- Column Pages -->
                            <li><a href="page_3_columns.html">Three Columns Page</a></li>
                            <!-- End Column Pages -->

                            <!-- Privacy Policy -->
                            <li><a href="page_privacy.html">Privacy Policy</a></li>
                            <!-- End Privacy Policy -->

                            <!-- Terms of Service -->
                            <li><a href="page_terms.html">Terms of Service</a></li>
                            <!-- End Terms of Service -->

                            <!-- Sub Level Menu -->
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Sub Level 1</a>
                                <ul class="dropdown-menu no-bottom-space">
                                    <li><a href="index.hmtl">Sub Level 2</a></li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Sub Level 2</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="index.hmtl">Sub Level 3</a></li>
                                            <li><a href="index.hmtl">Sub Level 3</a></li>
                                            <li><a href="index.hmtl">Sub Level 3</a></li>
                                            <li><a href="index.hmtl">Sub Level 3</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="index.hmtl">Sub Level 2</a></li>
                                    <li class="dropdown-submenu">
                                        <a href="javascript:void(0);">Sub Level 2</a>
                                        <ul class="dropdown-menu no-bottom-space">
                                            <li><a href="index.hmtl">Sub Level 3</a></li>
                                            <li><a href="index.hmtl">Sub Level 3</a></li>
                                            <li><a href="index.hmtl">Sub Level 3</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- End Sub Level Menu -->
                        </ul>
                    </li>
                    <!-- End Pages -->

                    <!-- Blog -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Blog
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Blog Large Image</a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog_large_right_sidebar1.html">Right Sidebar</a></li>
                                    <li><a href="blog_large_left_sidebar1.html">Left Sidebar</a></li>
                                    <li><a href="blog_large_full_width1.html">Full Width</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Blog Medium Image</a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog_medium_right_sidebar1.html">Right Sidebar</a></li>
                                    <li><a href="blog_medium_left_sidebar1.html">Left Sidebar</a></li>
                                    <li><a href="blog_medium_full_width1.html">Full Width</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Blog Item Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog_large_right_sidebar_item1.html">Right Sidebar Item</a></li>
                                    <li><a href="blog_large_left_sidebar_item1.html">Left Sidebar Item</a></li>
                                    <li><a href="blog_large_full_width_item1.html">Full Width Item</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Blog Simple Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog_large_right_sidebar.html">Right Sidebar Large</a></li>
                                    <li><a href="blog_medium_right_sidebar.html">Right Sidebar Medium</a></li>
                                    <li><a href="blog_large_full_width.html">Full Width</a></li>
                                    <li><a href="blog_large_right_sidebar_item.html">Right Sidebar Item</a></li>
                                    <li><a href="blog_large_full_width_item.html">Full Width Item</a></li>
                                </ul>
                            </li>
                            <li><a href="blog_masonry_3col.html">Masonry Grid Blog</a></li>
                            <li><a href="blog_timeline.html">Blog Timeline</a></li>
                        </ul>
                    </li>
                    <!-- End Blog -->

                    <!-- Portfolio -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Portfolio
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">No Space Boxed</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_2_columns_grid_no_space.html">2 Columns</a></li>
                                    <li><a href="portfolio_3_columns_grid_no_space.html">3 Columns</a></li>
                                    <li><a href="portfolio_4_columns_grid_no_space.html">4 Columns</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Grid Boxed</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_2_columns_grid.html">2 Columns</a></li>
                                    <li><a href="portfolio_3_columns_grid.html">3 Columns</a></li>
                                    <li><a href="portfolio_4_columns_grid.html">4 Columns</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Grid Text Boxed</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_2_columns_grid_text.html">2 Columns</a></li>
                                    <li><a href="portfolio_3_columns_grid_text.html">3 Columns</a></li>
                                    <li><a href="portfolio_4_columns_grid_text.html">4 Columns</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">No Space Full Width</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_2_columns_fullwidth_no_space.html">2 Columns</a></li>
                                    <li><a href="portfolio_3_columns_fullwidth_no_space.html">3 Columns</a></li>
                                    <li><a href="portfolio_4_columns_fullwidth_no_space.html">4 Columns</a></li>
                                    <li><a href="portfolio_5_columns_fullwidth_no_space.html">5 Columns</a></li>
                                    <li><a href="portfolio_6_columns_fullwidth_no_space.html">6 Columns</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Grid Full Width</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_2_columns_fullwidth.html">2 Columns</a></li>
                                    <li><a href="portfolio_3_columns_fullwidth.html">3 Columns</a></li>
                                    <li><a href="portfolio_4_columns_fullwidth.html">4 Columns</a></li>
                                    <li><a href="portfolio_5_columns_fullwidth.html">5 Columns</a></li>
                                    <li><a href="portfolio_6_columns_fullwidth.html">6 Columns</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Grid Text Full Width</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_2_columns_fullwidth_text.html">2 Columns</a></li>
                                    <li><a href="portfolio_3_columns_fullwidth_text.html">3 Columns</a></li>
                                    <li><a href="portfolio_4_columns_fullwidth_text.html">4 Columns</a></li>
                                    <li><a href="portfolio_5_columns_fullwidth_text.html">5 Columns</a></li>
                                    <li><a href="portfolio_6_columns_fullwidth_text.html">6 Columns</a></li>
                                </ul>
                            </li>
                            <li><a href="portfolio_hover_colors.html">Portfolio Hover Colors</a></li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Portfolio Items</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_single_item.html">Single Item</a></li>
                                    <li><a href="portfolio_old_item.html">Basic Item 1</a></li>
                                    <li><a href="portfolio_old_item1.html">Basic Item 2</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Portfolio Basic Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio_old_text_blocks.html">Basic Grid Text</a></li>
                                    <li><a href="portfolio_old_2_column.html">Basic 2 Columns</a></li>
                                    <li><a href="portfolio_old_3_column.html">Basic 3 Columns</a></li>
                                    <li><a href="portfolio_old_4_column.html">Basic 4 Columns</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- End Portfolio -->

                    <!-- Features -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Features
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Headers</a>
                                <ul class="dropdown-menu">
                                    <li><a href="feature_header_default.html">Header Default</a></li>
                                    <li><a href="feature_header_default_no_topbar.html">Header Default without Topbar</a></li>
                                    <li><a href="feature_header_default_centered.html">Header Default Centered</a></li>
                                    <li><a href="feature_header_default_fixed.html">Header Default Fixed (Sticky)</a></li>
                                    <li><a href="feature_header_default_login_popup.html">Header Default Login Popup</a></li>
                                    <li><a href="feature_header_v1.html">Header v1</a></li>
                                    <li><a href="feature_header_v2.html">Header v2</a></li>
                                    <li><a href="feature_header_v3.html">Header v3</a></li>
                                    <li><a href="feature_header_v4.html">Header v4</a></li>
                                    <li><a href="feature_header_v4_logo_centered.html">Header v4 Centered Logo</a></li>
                                    <li><a href="feature_header_v5.html">Header v5</a></li>
                                    <li><a href="feature_header_v6_transparent.html">Header v6 Transparent</a></li>
                                    <li><a href="feature_header_v6_semi_dark_transparent.html">Header v6 Dark Transparent</a></li>
                                    <li><a href="feature_header_v6_semi_white_transparent.html">Header v6 White Transparent</a></li>
                                    <li><a href="feature_header_v6_border_bottom.html">Header v6 Border Bottom</a></li>
                                    <li><a href="feature_header_v6_classic_dark.html">Header v6 Classic Dark</a></li>
                                    <li><a href="feature_header_v6_classic_white.html">Header v6 Classic White</a></li>
                                    <li><a href="feature_header_v6_dark_dropdown.html">Header v6 Dark Dropdown</a></li>
                                    <li><a href="feature_header_v6_dark_scroll.html">Header v6 Dark on Scroll</a></li>
                                    <li><a href="feature_header_v6_dark_search.html">Header v6 Dark Search</a></li>
                                    <li><a href="feature_header_v6_dark_res_nav.html">Header v6 Dark in Responsive</a></li>
                                    <li><a href="page_home12.html">Header v7 Left Sidebar</a></li>
                                    <li><a href="page_home13.html">Header v7 Right Sidebar</a></li>
                                    <li><a href="feature_header_v8.html">Header v8</a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Footers</a>
                                <ul class="dropdown-menu">
                                    <li><a href="feature_footer_default.html#footer-default">Footer Default</a></li>
                                    <li><a href="feature_footer_v1.html#footer-v1">Footer v1</a></li>
                                    <li><a href="feature_footer_v2.html#footer-v2">Footer v2</a></li>
                                    <li><a href="feature_footer_v3.html#footer-v3">Footer v3</a></li>
                                    <li><a href="feature_footer_v4.html#footer-v4">Footer v4</a></li>
                                    <li><a href="feature_footer_v5.html#footer-v5">Footer v5</a></li>
                                    <li><a href="feature_footer_v6.html#footer-v6">Footer v6</a></li>
                                    <li><a href="feature_footer_v7.html#footer-v7">Footer v7</a></li>
                                    <li><a href="feature_footer_v8.html#footer-v8">Footer v8</a></li>
                                </ul>
                            </li>
                            <li><a href="feature_gallery.html">Gallery Examples</a></li>
                            <li><a href="feature_animations.html">Animations on Scroll</a></li>
                            <li><a href="feature_parallax_counters.html">Parallax Counters</a></li>
                            <li><a href="feature_testimonials_quotes.html">Testimonials and Quotes</a></li>
                            <li><a href="feature_icon_blocks.html">Icon Blocks</a></li>
                            <li><a href="feature_team_blocks.html">Team Blocks</a></li>
                            <li><a href="feature_news_blocks.html">News Blocks</a></li>
                            <li><a href="feature_parallax_blocks.html">Parallax Blocks</a></li>
                            <li><a href="feature_funny_boxes.html">Funny Boxes</a></li>
                        </ul>
                    </li>
                    <!-- End Features -->

                    <!-- Shortcodes -->
                    <li class="dropdown mega-menu-fullwidth">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Shortcodes
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="mega-menu-content disable-icons">
                                    <div class="container">
                                        <div class="row equal-height">
                                            <div class="col-md-3 equal-height-in">
                                                <ul class="list-unstyled equal-height-list">
                                                    <li><h3>Typography &amp; Components</h3></li>

                                                    <!-- Typography -->
                                                    <li><a href="shortcode_typo_general.html"><i class="fa fa-sort-alpha-asc"></i> General Typography</a></li>
                                                    <li><a href="shortcode_typo_headings.html"><i class="fa fa-magic"></i> Headings Options</a></li>
                                                    <li><a href="shortcode_typo_dividers.html"><i class="fa fa-ellipsis-h"></i> Dividers</a></li>
                                                    <li><a href="shortcode_typo_blockquote.html"><i class="fa fa-quote-left"></i> Blockquote Blocks</a></li>
                                                    <li><a href="shortcode_typo_boxshadows.html"><i class="fa fa-asterisk"></i> Box Shadows</a></li>
                                                    <li><a href="shortcode_typo_testimonials.html"><i class="fa fa-comments"></i> Testimonials</a></li>
                                                    <li><a href="shortcode_typo_tagline_boxes.html"><i class="fa fa-tasks"></i> Tagline Boxes</a></li>
                                                    <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> Grid Layouts</a></li>
                                                    <!-- End Typography -->

                                                    <!-- Components -->
                                                    <li><a href="shortcode_compo_messages.html"><i class="fa fa-comment"></i> Alerts &amp; Messages</a></li>
                                                    <li><a href="shortcode_compo_labels.html"><i class="fa fa-tags"></i> Labels &amp; Badges</a></li>
                                                    <li><a href="shortcode_compo_media.html"><i class="fa fa-volume-down"></i> Audio/Videos &amp; Images</a></li>
                                                    <li><a href="shortcode_compo_pagination.html"><i class="fa fa-arrows-h"></i> Paginations</a></li>
                                                    <!-- End Components -->
                                                </ul>
                                            </div>
                                            <div class="col-md-3 equal-height-in">
                                                <ul class="list-unstyled equal-height-list">
                                                    <li><h3>Buttons &amp; Icons</h3></li>

                                                    <!-- Buttons -->
                                                    <li><a href="shortcode_btn_general.html"><i class="fa fa-flask"></i> General Buttons</a></li>
                                                    <li><a href="shortcode_btn_brands.html"><i class="fa fa-html5"></i> Brand &amp; Social Buttons</a></li>
                                                    <li><a href="shortcode_btn_effects.html"><i class="fa fa-bolt"></i> Loading &amp; Hover Effects</a></li>
                                                    <!-- End Buttons -->

                                                    <!-- Icons -->
                                                    <li><a href="shortcode_icon_general.html"><i class="fa fa-chevron-circle-right"></i> General Icons</a></li>
                                                    <li><a href="shortcode_icon_fa.html"><i class="fa fa-chevron-circle-right"></i> Font Awesome Icons</a></li>
                                                    <li><a href="shortcode_icon_line.html"><i class="fa fa-chevron-circle-right"></i> Line Icons</a></li>
                                                    <li><a href="shortcode_icon_glyph.html"><i class="fa fa-chevron-circle-right"></i> Glyphicons Icons (Bootstrap)</a></li>
                                                    <!-- End Icons -->
                                                </ul>
                                            </div>
                                            <div class="col-md-3 equal-height-in">
                                                <ul class="list-unstyled equal-height-list">
                                                    <li><h3>Common elements</h3></li>

                                                    <!-- Common Elements -->
                                                    <li><a href="shortcode_thumbnails.html"><i class="fa fa-image"></i> Thumbnails</a></li>
                                                    <li><a href="shortcode_accordion_and_tabs.html"><i class="fa fa-list-ol"></i> Accordion &amp; Tabs</a></li>
                                                    <li><a href="shortcode_timeline1.html"><i class="fa fa-dot-circle-o"></i> Timeline Option 1</a></li>
                                                    <li><a href="shortcode_timeline2.html"><i class="fa fa-dot-circle-o"></i> Timeline Option 2</a></li>
                                                    <li><a href="shortcode_table_general.html"><i class="fa fa-table"></i> Tables</a></li>
                                                    <li><a href="shortcode_compo_progress_bars.html"><i class="fa fa-align-left"></i> Progress Bars</a></li>
                                                    <li><a href="shortcode_compo_panels.html"><i class="fa fa-columns"></i> Panels</a></li>
                                                    <li><a href="shortcode_carousels.html"><i class="fa fa-sliders"></i> Carousel Examples</a></li>
                                                    <li><a href="shortcode_maps_google.html"><i class="fa fa-map-marker"></i> Google Maps</a></li>
                                                    <li><a href="shortcode_maps_vector.html"><i class="fa fa-align-center"></i> Vector Maps</a></li>
                                                    <!-- End Common Elements -->
                                                </ul>
                                            </div>
                                            <div class="col-md-3 equal-height-in">
                                                <ul class="list-unstyled equal-height-list">
                                                    <li><h3>Forms &amp; Infographics</h3></li>

                                                    <!-- Forms -->
                                                    <li><a href="shortcode_form_general.html"><i class="fa fa-bars"></i> Common Bootstrap Forms</a></li>
                                                    <li><a href="shortcode_form_general1.html"><i class="fa fa-bars"></i> General Unify Forms</a></li>
                                                    <li><a href="shortcode_form_advanced.html"><i class="fa fa-bars"></i> Advanced Forms</a></li>
                                                    <li><a href="shortcode_form_layouts.html"><i class="fa fa-bars"></i> Form Layouts</a></li>
                                                    <li><a href="shortcode_form_layouts_advanced.html"><i class="fa fa-bars"></i> Advanced Layout Forms</a></li>
                                                    <li><a href="shortcode_form_states.html"><i class="fa fa-bars"></i> Form States</a></li>
                                                    <li><a href="shortcode_form_sliders.html"><i class="fa fa-bars"></i> Form Sliders</a></li>
                                                    <li><a href="shortcode_form_modals.html"><i class="fa fa-bars"></i> Modals</a></li>
                                                    <!-- End Forms -->

                                                    <!-- Infographics -->
                                                    <li><a href="shortcode_compo_charts.html"><i class="fa fa-pie-chart"></i> Charts &amp; Countdowns</a></li>
                                                    <!-- End Infographics -->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- End Shortcodes -->

                    <!-- Misc Pages -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            Misc
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="page_misc_blank.html">Blank page</a></li>
                            <li><a href="page_misc_boxed.html">Boxed Page</a></li>
                            <li><a href="page_misc_boxed_img.html">Boxed Image Page</a></li>
                            <li><a href="page_misc_boxed_fixed_header.html">Boxed Fixed Menu</a></li>
                            <li><a href="page_misc_dark.html">Dark Page</a></li>
                            <li><a href="page_misc_dark_boxed.html">Dark Boxed Page</a></li>
                            <li><a href="page_misc_dark_other_color.html">Dark Page with Theme Color</a></li>
                            <li><a href="page_misc_sticky_footer.html">Sticky Footer Example</a></li>
                        </ul>
                    </li>
                    <!-- End Misc Pages -->

                    <!-- Search Block -->
                    <li>
                        <i class="search fa fa-search search-btn"></i>
                        <div class="search-open">
                            <div class="input-group animated fadeInDown">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">
                                    <button class="btn-u" type="button">Go</button>
                                </span>
                            </div>
                        </div>
                    </li>
                    <!-- End Search Block -->
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=== End Header ===-->

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Login</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Pages</a></li>
                <li class="active">Login</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
    	<div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <form class="reg-page">
                    <div class="reg-header">
                        <h2>Login to your account</h2>
                    </div>

                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" placeholder="Username" class="form-control">
                    </div>
                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" placeholder="Password" class="form-control">
                    </div>

                    <div class="row">
                        <div class="col-md-6 checkbox">
                            <label><input type="checkbox"> Stay signed in</label>
                        </div>
                        <div class="col-md-6">
                            <button class="btn-u pull-right" type="submit">Login</button>
                        </div>
                    </div>

                    <hr>

                    <h4>Forget your Password ?</h4>
                    <p>no worries, <a class="color-green" href="#">click here</a> to reset your password.</p>
                </form>
            </div>
        </div><!--/row-->
    </div><!--/container-->
    <!--=== End Content Part ===-->

     <!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a href="index.html"><img id="logo-footer" class="footer-logo" src="<%=cp%>/res/main/assets/img/logo2-default.png" alt=""></a>
                        <p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
                        <p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>
                    </div><!--/col-md-3-->
                    <!-- End About -->

                    <!-- Latest -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="posts">
                            <div class="headline"><h2>Latest Posts</h2></div>
                            <ul class="list-unstyled latest-list">
                                <li>
                                    <a href="#">Incredible content</a>
                                    <small>May 8, 2014</small>
                                </li>
                                <li>
                                    <a href="#">Best shoots</a>
                                    <small>June 23, 2014</small>
                                </li>
                                <li>
                                    <a href="#">New Terms and Conditions</a>
                                    <small>September 15, 2014</small>
                                </li>
                            </ul>
                        </div>
                    </div><!--/col-md-3-->
                    <!-- End Latest -->

                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2>Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div><!--/col-md-3-->
                    <!-- End Link List -->

                    <!-- Address -->
                    <div class="col-md-3 map-img md-margin-bottom-40">
                        <div class="headline"><h2>Contact Us</h2></div>
                        <address class="md-margin-bottom-40">
                            25, Lorem Lis Street, Orange <br />
                            California, US <br />
                            Phone: 800 123 3456 <br />
                            Fax: 800 123 3456 <br />
                            Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
                        </address>
                    </div><!--/col-md-3-->
                    <!-- End Address -->
                </div>
            </div>
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p>
                            2015 &copy; All Rights Reserved.
                           <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                        </p>
                    </div>

                    <!-- Social Links -->
                    <div class="col-md-6">
                        <ul class="footer-socials list-inline">
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                    <i class="fa fa-skype"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div>
        </div><!--/copyright-->
    </div>
    <!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->

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