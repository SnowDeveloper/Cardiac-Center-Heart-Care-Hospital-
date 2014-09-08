<%@ page import="java.sql.*" %>
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
    <nav class="main-nav"><ul>
        <li>
            <a href="index.jsp"></i>Home</a>
        </li>

        <li class="right">
            <a href="widgets.jsp"></i>Features</a>
        </li>
        <li>
            <a href="services.jsp"></i>Services</a>
        </li>
        <li>
            <a href="doctors.jsp" class="active"></i>Our Doctors</a>
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

<!-- page title -->
<section class="page-title">
    <div class="grid-row clearfix">
        <h1>Our Doctors</h1>

        <nav class="bread-crumbs">
            <a href="index.jsp">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
            <a href="doctors.jsp">Our Doctors</a>
        </nav>
    </div>
</section>
<!--/ page title -->

<!-- page content -->
<main class="page-content">
    <div class="grid-row">
        <!-- doctors -->
        <section id="doctors" class="doctors">
            <div class="widget-title">Meet Our Team</div>

            <select class="filter">
                <option value=".item">All doctors</option>
                <option value=".item1">Cardiologist</option>
                <option value=".item2">Interventional Cardiologist</option>
                <option value=".item3">Vascular Surgeon</option>
                <option value=".item4">Electrophysiologist</option>
            </select>

            <div class="grid">
                <div class="item item1">
                    <div class="pic">
                        <img src="pic/doctor-1.jpg" alt="Dr. Butcher House">
                    </div>
                    <h3>Dr. Butcher House</h3>
                    <p>Cardiologist</p>
                </div>
                <div class="item item2">
                    <div class="pic">
                        <img src="pic/doctor-2.jpg" alt="Dr. Nigella Wall">
                    </div>
                    <h3>Dr. Nigella Wall</h3>
                    <p>Interventional Cardiologist</p>
                </div>
                <div class="item item3">
                    <div class="pic">
                        <img src="pic/doctor-5.jpg" alt="Dr. Shruti Singh">
                    </div>
                    <h3>Dr. Shruti Singh</h3>
                    <p>Vascular Surgeon</p>
                </div>
                <div class="item item4">
                    <div class="pic">
                        <img src="pic/doctor-4.jpg" alt="Dr. Rose Kinder">
                    </div>
                    <h3>Dr. Rose Kinder</h3>
                    <p>Electrophysiologist</p>
                </div>

                <div class="item item-fullwidth">
                    <!-- callout -->
                    <div class="callout wpb_content_element">
                        <div class="icon"><i class="fa fa-user-md"></i></div>
                        <div class="callout-wrapper">
                            <div class="callout-content">
                                <div class="title">Schedule Appointment!</div>
                                <div class="subtitle">Make an appointment with our specialists.</div>
                            </div>
                            <div class="callout-button">
                                <a href="appointments.jsp" class="button">Now</a>
                            </div>
                        </div>
                    </div>
                    <!--/ callout -->
                </div>


            </div>
        </section>
        <!--/ doctors -->
    </div>
    <section id="main" class="column" style="text-align: center;">

        <div style="color: #0066FF; font-size: 25pt;text-decoration:underline;">Our Doctors</div><br>

        <%
            Connection connection5 = DriverManager
                    .getConnection("jdbc:oracle:thin:@localhost:1521:xe",
                            "snowwhite", "prakaship");

            Statement statement = connection5.createStatement();
            ResultSet resultset = statement
                    .executeQuery("select * from doctor");
        %>

        <TABLE BORDER="1" style="color:blue" width="500" height="300">
            <TR>
                <TH><h3><div style="color: #000000; font-size: 20pt;" >Name</div></h3></TH>
                <TH><h3><div style="color: #000000; font-size: 20pt;" >ID</div></h3></TH>
                <TH><h3><div style="color: #000000; font-size: 20pt;" >Timing</div></h3></TH>
                <TH><h3><div style="color: #000000; font-size: 20pt;" >Description</div></h3></TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getInt(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>

            </TR>
            <% } %>
        </TABLE>
    </section>

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