<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Clinico - Cardiac Center</title>

    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="http://themeforest.net/user/CreativeWS/portfolio">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <!--/ metas -->

    <!-- styles -->
    <link rel="stylesheet" type="text/css" href="css/layerslider.css">
    <link rel="stylesheet" type="text/css" href="css/fullwidth/skin.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" type="text/css" href="css/color-blue.css">
    <link rel="stylesheet" type="text/css" href="tuner/css/styles.css">
    <!--/ styles -->

    <!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->
</head>

<body>
<div class="page">

<!-- page header -->
<header class="page-header main-page">
    <!-- logo -->
    <section id="logo" class="logo">
        <div>
            <a href="index.jsp"><img src="img/blue/logo.png" width="190" height="50" alt="Clinico"></a>
        </div>
    </section>
    <!--/ logo -->



    <!-- main nav -->
    <nav class="main-nav">
        <ul>
            <li>
                <a href="index.jsp" class="active"></i>Home</a>
            </li>
            <li class="right">
                <a href="widgets.jsp"></i>Features</a>
            </li>
            <li>
            <li>
                <a href="services.jsp"></i>Services</a>
            </li>
            <li>
                <a href="doctors.jsp"></i>Our Doctors</a>
            </li>
            <li>
                <a href="appointments.jsp"></i>Appointments</a>
            </li>
            <li>
                <a href="news.jsp"></i>News</a>
            </li>
            <li>
                <a href="contacts.jsp"></i>Contact Us</a>
            </li>
            <a href="admin_login.html" style="text-decoration: underline"></i>Admin Login</a>
        </ul>
    </nav>

    <!--/ main nav -->

</header>
<!--/ page header -->



<!-- quick search -->
<form id="quick-search" class="quick-search">
    <fieldset>
        <legend>Quick Search:</legend>

        <input type="text" placeholder="Search by name">

        <select>
            <option value="0">Speciality</option>
            <option value="1">Cardiologist</option>
            <option value="2">Interventional Cardiologist</option>
            <option value="3">Vascular Surgeon</option>
            <option value="4">Electrophysiologist</option>
            <option value="4">Cardiac Surgeon</option>
            <option value="4">Pediatric Cardiologist</option>
        </select>

    </fieldset>
</form>
<!--/ quick search -->

<!-- slider -->
<div class="slider-wrapper">
    <section class="slider" id="slider">
        <div class="ls-slide" data-ls="transition2d:9;slidedelay:7000;">
            <img src="pic/medical-slide-1.jpg" alt="" class="ls-bg">

            <div class="intro ls-l" data-ls="offsetyin:top;offsetxin:0;durationin:2000;offsetyout:bottom;offsetxout:0;durationout:1000;" style="left:80%;top:35%;">
                <span class="icon fa fa-heart"></span>
                <h2><span>SYMPTOM</span>CHECKER</h2>
                <div class="buttons">
                    <a href="#" class="prev"><i class="fa fa-angle-left"></i></a><!--
								--><a href="services.jsp" class="button">Read More</a><!--
								--><a href="#" class="next"><i class="fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
        <div class="ls-slide" data-ls="transition2d:40;slidedelay:7000;">
            <img src="pic/medical-slide-2.jpg" alt="" class="ls-bg">

            <div class="intro ls-l" data-ls="scalexin:0.3;scaleyin:0.3;rotatexin:180;offsetxin:0;durationin:2000;durationout:2000;scalexout:2;scaleyout:2;offsetxout:0;fadeout:true;showuntil:3000;" style="left:80%;top:35%;">
                <span class="icon fa fa-comments"></span>
                <h2><span>HELP</span>ONLINE</h2>
                <div class="buttons">
                    <a href="#" class="prev"><i class="fa fa-angle-left"></i></a><!--
								--><a href="contacts.jsp" class="button">Read More</a><!--
								--><a href="#" class="next"><i class="fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
        <div class="ls-slide" data-ls="transition2d:11;slidedelay:7000;">
            <img src="pic/medical-slide-3.jpg" alt="" class="ls-bg">

            <div class="intro ls-l" data-ls="skewxin:30;skewyin:0;offsetxin:right;fadein:false;durationin:2000;durationout:1000;offsetxout:right;offsetyout:0;fadeout:true;" style="left:80%;top:35%;">
                <span class="icon fa fa-flask"></span>
                <h2><span>LAB</span>TESTING</h2>
                <div class="buttons">
                    <a href="#" class="prev"><i class="fa fa-angle-left"></i></a><!--
								--><a href="services.jsp" class="button">Read More</a><!--
								--><a href="#" class="next"><i class="fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    </section>
</div>
<!--/ slider -->

<!-- page content -->
<main class="page-content">
    <div class="grid-row">
        <!-- benefits -->
        <section class="benefits">
            <ul>
                <li>
                    <div class="pic"><i class="fa fa-heart"></i></div>
                    <div class="text">
                        <h2>Heart Rate</h2>
                        <p>Get all obeservations related to your pulse.</p>
                        <a href="heartrate.jsp" class="more"></a>
                    </div>
                </li>
                <li>
                    <div class="pic"><i class="fa fa-flask"></i></div>
                    <div class="text">
                        <h2>Lab Test</h2>
                        <p>Test results provided within 24 hours</p>
                        <a href="services.jsp" class="more"></a>
                    </div>
                </li>
                <li>
                    <div class="pic"><i class="fa fa-stethoscope"></i></div>
                    <div class="text">
                        <h2>Symptom Check</h2>
                        <p>Be informed before it's too late.</p>
                        <a href="symptomcheck.jsp" class="more"></a>
                    </div>
                </li>
                <li>
                    <div class="pic"><i class="fa fa-comments-o"></i></div>
                    <div class="text">
                        <h2>Online Help</h2>
                        <p>24x7 helpline</p>
                        <a href="contacts.jsp" class="more"></a>
                    </div>
                </li>
            </ul>
        </section>
        <!--/ benefits -->
    </div>

    <div class="grid-row">
        <!-- services -->
        <section class="services">
            <ul>
                <li>
                    <a class="pic"><i class="fa fa-leaf"></i></a>
                    <h2><a href="services.jsp">Transplant Services</a></h2>
                    <p>Our purpose is to save and improve lives. Our ambition is to be the best organisation of our type in the world. Clinico Cardiac Center is dedicated to saving and improving lives through the wide range of services we provide.</p>
                    <a href="services.jsp" class="more fa fa-long-arrow-right"></a>
                </li>
                <li>
                    <a class="pic"><i class="fa fa-user-md"></i></a>
                    <div class="text">
                        <h2><a href="doctors.jsp">Qualified Doctors</a></h2>
                        <p>Clinico Cardiac Center has a set of dedicated heart specialists to take care of you.</p>
                        <a href="doctors.jsp" class="more fa fa-long-arrow-right"></a>
                    </div>
                </li>
                <li>
                    <a class="pic"><i class="fa fa-clock-o"></i></a>
                    <h2><a href="services.jsp">24 Hours Service</a></h2>
                    <p>Our 24x7 services keeps Clinico Cardiac Center connected to you always!</p>
                    <a href="services.jsp" class="more fa fa-long-arrow-right"></a>
                </li>
                <li>
                    <a class="pic"><i class="fa fa-ambulance"></i></a>
                    <div class="text">
                        <h2><a href="contacts.jsp">Emergency Departments</a></h2>
                        <p>Call us and we get in touch with you immediately.</p>
                        <a href="contacts.jsp" class="more fa fa-long-arrow-right"></a>
                    </div>
                </li>
            </ul>
        </section>
        <!--/ services -->
    </div>

    <div class="grid-row">
        <!-- doctors carousel -->
        <section class="widget doctors-carousel doctors">
            <div class="widget-title">Our Doctors</div>
            <div id="doctors-carousel" class="owl-carousel">
                <div class="item">
                    <div class="pic">
                        <img src="pic/doctor-1.jpg" width="270" height="270" alt="Dr. Butcher House">

                    </div>
                    <h3>Dr. Butcher House</h3>
                    <p>Cardiologist</p>
                </div>
                <div class="item">
                    <div class="pic">
                        <img src="pic/doctor-2.jpg" width="270" height="270" alt="Dr. Nigella Wall">
                    </div>
                    <h3>Dr. Nigella Wall</h3>
                    <p>Interventional Cardiologist</p>
                </div>
                <div class="item">
                    <div class="pic">
                        <img src="pic/doctor-5.jpg" width="270" height="270" alt="Dr. Shruti Singh">
                    </div>
                    <h3>Dr. Shruti Singh</h3>
                    <p>Vascular Surgeon</p>
                </div>
                <div class="item">
                    <div class="pic">
                        <img src="pic/doctor-4.jpg" width="270" height="270" alt="Dr. Rose Kinder">
                    </div>
                    <h3>Dr. Mangle Taleebin</h3>
                    <p>Electrophysiologist</p>
                </div>
                <div class="item">
                    <div class="pic">
                        <img src="pic/doctor-6.jpg" width="270" height="270" alt="Dr. Rohan Kapoor">
                    </div>
                    <h3>Dr. Rohan Kapoor</h3>
                    <p>Cardiac Surgeon</p>
                </div>
                <div class="item">
                    <div class="pic">
                        <img src="pic/doctor-4.jpg" width="270" height="270" alt="Dr. Mangle Taleebin">
                    </div>
                    <h3>Dr. Mangle Taleebin</h3>
                    <p>Pediatric Cardiologist</p>
                </div>
        </section>
        <!--/ doctors carousel -->
    </div>
</main>
<!--/ page content -->

<!-- page footer -->
<footer class="page-footer">
    <a href="#" id="top-link" class="top-link"><i class="fa fa-angle-double-up"></i></a>

    <div class="grid-row">
        <div class="grid-col grid-col-3">
            <!-- last news -->
            <section class="widget-alt last-news">
                <div class="widget-icon"></div>
                <div class="widget-title">Clinico</div>
                <ul>
                    <li>Clinico Cardiac Center has achieved success in every operation since 17 years.</li>
                    <li>Keep your heart healthy through regular check-ups at our centres. We are always happy to help you 24x7.</li>
                    <li>Believe in yourself. Life Healthy and Eat Right.</li>
                </ul>
            </section>
            <!--/ last news -->
        </div>

        <div class="grid-col grid-col-3">
            <!-- location -->
            <section class="widget-alt location">
                <div class="widget-icon"></div>
                <div class="widget-title">Location</div>
                <address>188/87, G.T. Road, Kolkata - 711117.</address>
                <ul>
                    <li><i class="fa fa-phone"></i>(033) 6566-55555</li>
                    <li><i class="fa fa-at">@</i>clinico@gmail.com</li>
                </ul>
            </section>
            <!--/ location -->
        </div>

        <div class="grid-col grid-col-3">
            <!-- last news -->
            <section class="widget-alt recent-posts">
                <div class="widget-icon"></div>
                <div class="widget-title">Recent Posts</div>
                <ul>
                    <li>
                        <a href="news.jsp"><img src="pic/post/1.png" width="80" height="80" alt=""></a>
                        <p><div style="color: #ffffff">Today's Articles</div>
                        <%
                            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                            String connectionURL = "jdbc:oracle:thin:@//localhost:1521/XE";
                            Connection connection= DriverManager.getConnection(connectionURL, "snowwhite", "prakaship");
                            PreparedStatement psmnt = connection.prepareStatement("select * from article ");
                            ResultSet results = psmnt.executeQuery();
                            for(int i=1;i<=2;i++){
                                while(results.next()){
                                    String name = results.getString(3);
                                    String id = results.getString(1);
                                    out.print(i+") ");
                                    i++;
                                    out.println(name);
                                    out.println("<br>");
                                    out.println("Dated: "+id);
                                    out.println("<br>");
                                }
                        %>
                        </a><br></p>
                        <%}
                            results.close(); psmnt.close(); %>
                    </li>
                    <li>
                        <a href="news.jsp"><img src="pic/post/2.png" width="80" height="80" alt=""></a>
                        <p><a href="news.jsp">A healthy heart can add 10 years to your average survival age.</a><br>8 months ago</p>
                    </li>
                    <li>
                        <a href="news.jsp"><img src="pic/post/3.png" width="80" height="80" alt=""></a>
                        <p><a href="news.jsp">Discoveries offer a new explanation for diabetes, food facts.</a><br>10 months ago</p>
                    </li>
                </ul>
            </section>
            <!--/ last news -->
        </div>

        <div class="grid-col grid-col-3">
            <!-- work time -->
            <section class="widget-alt work-time">
                <div class="widget-icon"></div>
                <dl>
                    <center>Office Hours</center>
                    <dt>Mon</dt>
                    <dd>08:00 am - 08:00 pm</dd>
                    <dt>Tue</dt>
                    <dd>08:00 am - 08:00 pm</dd>
                    <dt>Wed</dt>
                    <dd>08:00 am - 08:00 pm</dd>
                    <dt>Thu</dt>
                    <dd>08:00 am - 08:00 pm</dd>
                    <dt>Fri</dt>
                    <dd>08:00 am - 08:00 pm</dd>
                    <dt>Sat</dt>
                    <dd>08:00 am - 04:00 pm</dd>
                    <dt>Sun</dt>
                    <dd>Free day</dd>
                </dl>
                <a href="appointments.jsp" class="button">Make an Appointment</a>
            </section>
            <!--/ work time -->
        </div>
    </div>
</footer>
<!--/ page footer -->

<!-- copyrights -->
<div class="copyrights">Copyrights ©2014: Clinico - Cardiac Center</div>
<!--/ copyrights -->

</div>

<!-- scripts -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.migrate.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-media.js"></script>
<script type="text/javascript" src="js/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot.categories.js"></script>
<script type="text/javascript" src="js/greensock.js"></script>
<script type="text/javascript" src="js/layerslider.transitions.js"></script>
<script type="text/javascript" src="js/layerslider.kreaturamedia.jquery.js"></script>

<!-- Superscrollorama -->
<script type="text/javascript" src="js/jquery.superscrollorama.js"></script>
<script type="text/javascript" src="js/TweenMax.min.js"></script>
<script type="text/javascript" src="js/TimelineMax.min.js"></script>
<!--/ Superscrollorama -->

<script type="text/javascript" src="js/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.widget.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.tabs.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-tabs-rotate.js"></script>
<script type="text/javascript" src="js/jquery.ui.accordion.min.js"></script>
<script type="text/javascript" src="js/jquery.tweet.js"></script>
<!-- EASYPIECHART -->
<script type="text/javascript" src="js/jquery.easypiechart.js"></script>
<!--/ EASYPIECHART -->
<script type="text/javascript" src="js/scripts.js"></script>
<!--/ scripts -->


</body>
</html>