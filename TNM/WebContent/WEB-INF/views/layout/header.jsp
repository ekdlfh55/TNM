<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<div id="header">
 <!--=== Header ===-->
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="<%=cp%>">
                <img style="width: 200px;" src="<%=cp%>/res/main/assets/img/logo.png" alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">                    
                    <li class="cd-log_reg"><a class="cd-signin" href="javascript:void(0);">로그인</a></li>          
                    <li class="topbar-devider"></li>
                    <li><a href="<%=cp%>/member/join.do">회원가입</a></li>
                    <li class="topbar-devider"></li>
                    <li><a href="<%=cp%>/notice/service.do">고객센터</a></li>
                    <li class="topbar-devider"></li>
					<li><a href="<%=cp%>/admin/member.do">관리자</a></li>
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
            <div class="container" style="width: 60%">
                <ul class="nav navbar-nav">
                    <!-- Home -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
							뮤직
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="<%=cp%>/music/chat.do">톰차트</a></li>
							<li><a href="<%=cp%>/share/share.do">톰DJ</a></li>
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
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
							커뮤니티
                        </a>
                        <ul class="dropdown-menu">
             				<li><a href="<%=cp%>/table/freeTable.do">게시판</a></li>
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
                            <li class="dropdown-submenu">
                                <a href="javascript:void(0);">Login and Registration</a>
                                <ul class="dropdown-menu">
                                    <li><a href="page_registration.html">Registration Page</a></li>
                                    <li><a href="page_login.html">Login Page</a></li>
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

                    <!-- 뮤직스토리 -->
                    <li><a href="<%=cp%>/story/story.do">뮤직스토리 </a></li>
                    <!-- 뮤직스토리 -->

                    <!-- Portfolio -->
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
							 마이앨범
                        </a>
                        <ul class="dropdown-menu">              
                            <li><a href="<%=cp%>/myalbum/mypage.do">마이페이지</a> </li>
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


                    <!-- Search Block -->
                    <li style="margin: 6px;">
                        <img src="<%=cp%>/res/main/assets/img/search.png" style="width: 24px;">
                        <input type="text" style="width: 200px; ">
                    </li>  
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=== End Header ===-->
    
    <div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
        <div class="cd-user-modal-container"> <!-- this is the container wrapper -->
            <ul class="cd-switcher">
                <li><a href="javascript:void(0);">Login</a></li>
                <li><a href="javascript:void(0);">Register</a></li>
            </ul>

            <div id="cd-login"> <!-- log in form -->
                <form class="cd-form">
                    <p class="social-login">
                        <span class="social-login-facebook"><a href="#"><i class="fa fa-facebook"></i> Facebook</a></span>
                        <span class="social-login-google"><a href="#"><i class="fa fa-google"></i> Google</a></span>
                        <span class="social-login-twitter"><a href="#"><i class="fa fa-twitter"></i> Twitter</a></span>
                    </p>
                    
                    <div class="lined-text"><span>로그인</span><hr></div>

                    <p class="fieldset">
                        <label class="image-replace cd-username" for="signin-userid">UserId</label>
                        <input class="full-width has-padding has-border" id="signin-userid" type="text" placeholder="UserId">
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signin-password">Password</label>
                        <input class="full-width has-padding has-border" id="signin-password" type="text"  placeholder="Password">
                        <a href="javascript:void(0);" class="hide-password">Hide</a>
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <input type="checkbox" id="remember-me" checked>
                        <label for="remember-me">Remember me</label>
                    </p>

                    <p class="fieldset">
                        <input class="full-width" type="submit" value="Login">
                    </p>
                </form>

                <p class="cd-form-bottom-message"><a href="javascript:void(0);">Forgot your password?</a></p>
                <!-- <a href="javascript:void(0);" class="cd-close-form">Close</a> -->
            </div> <!-- cd-login -->

            <div id="cd-signup"> <!-- sign up form -->
                <form class="cd-form">
                    <p class="social-login">
                        <span class="social-login-facebook"><a href="#"><i class="fa fa-facebook"></i> Facebook</a></span>
                        <span class="social-login-google"><a href="#"><i class="fa fa-google"></i> Google</a></span>
                        <span class="social-login-twitter"><a href="#"><i class="fa fa-twitter"></i> Twitter</a></span>
                    </p>

                    <div class="lined-text"><span>회원가입</span><hr></div>
					
					<p class="fieldset">
                        <label class="image-replace cd-username" for="signup-userId">UserId</label>
                        <input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
                        <span class="cd-error-message">Error message here!</span>
                    </p>
                    
                    <p class="fieldset">
                        <label class="image-replace cd-username" for="signup-username">Username</label>
                        <input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-password">Password</label>
                        <input class="full-width has-padding has-border" id="signup-password" type="text"  placeholder="Password">
                        <a href="javascript:void(0);" class="hide-password">Hide</a>
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-password1">Again Password</label>
                        <input class="full-width has-padding has-border" id="signup-password1" type="text"  placeholder="Again Password">
                        <a href="javascript:void(0);" class="hide-password">Hide</a>
                        <span class="cd-error-message">Error message here!</span>
                    </p>
                    
                     <p class="fieldset">
                        <label class="image-replace cd-email" for="signup-email">E-mail</label>
                        <input class="full-width has-padding has-border" id="signup-email" type="text"  placeholder="email">         
                        <span class="cd-error-message">Error message here!</span>
                    </p>
                    
                     <p class="fieldset">
                        <label class="image-replace cd-tel" for="signup-tel">Tel</label>
                        <input class="full-width has-padding has-border" id="signup-tel" type="text"  placeholder="tel">
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <input type="checkbox" id="accept-terms">
                        <label for="accept-terms">위의 사항을 확인합니다.</label>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding" type="submit" value="created">
                    </p>
                </form>

                <!-- <a href="javascript:void(0);" class="cd-close-form">Close</a> -->
            </div> <!-- cd-signup -->

            <div id="cd-reset-password"> <!-- reset password form -->
                <p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

                <form class="cd-form">
                    <p class="fieldset">
                        <label class="image-replace cd-email" for="reset-email">E-mail</label>
                        <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding" type="submit" value="Reset password">
                    </p>
                </form>

                <p class="cd-form-bottom-message"><a href="javascript:void(0);">Back to log-in</a></p>
            </div> <!-- cd-reset-password -->
            <a href="javascript:void(0);" class="cd-close-form">Close</a>
        </div> <!-- cd-user-modal-container -->
    </div> <!-- cd-user-modal -->
</div>