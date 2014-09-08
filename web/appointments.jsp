<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <style>
        .placeholder::-webkit-input-placeholder {
            color:    #da4f49;
        }
        .placeholder::-webkit-input-placeholder {
            color:    #da4f49;
        }
        .placeholder::-moz-placeholder {
            color:    #da4f49;
        }
        .placeholder::-moz-placeholder {
            color:    #da4f49;
        }
        .placeholder::-ms-input-placeholder {
            color:    #da4f49;
        }
    </style>



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
                <a href="index.jsp"></i>Home</a>
            </li>
            <li class="right">
                <a href="widgets.jsp"></i>Features</a>
            </li>
            <li>
                <a href="services.jsp"></i>Services</a>
            </li>
            <li>
                <a href="services.jsp"></i>Our Doctors</a>
            </li>
            <li>
                <a href="appointments.jsp" class="active"></i>Appointments</a>
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

        <label>
            <select>
                <option value="0">Speciality</option>
                <option value="1">Cardiologist</option>
                <option value="2">Interventional Cardiologist</option>
                <option value="3">Vascular Surgeon</option>
                <option value="4">Electrophysiologist</option>
                <option value="4">Cardiac Surgeon</option>
                <option value="4">Pediatric Cardiologist</option>
            </select>
        </label>

    </fieldset>
</form>
<!--/ quick search -->
<!--/ HEADERS -->

<!-- page title -->
<section class="page-title">
    <div class="grid-row clearfix">
        <h1>Appointments</h1>

        <nav class="bread-crumbs">
            <a href="index.jsp">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
            <a href="appointments.jsp">Appointments</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
            <a href="appointments.jsp">New User Form</a>
        </nav>
    </div>
</section>
<!--/ page title -->

<main class="page-content">
    <div class="grid-row">
        <div class="grid-col grid-col-9">
            <section class="detailed-services wpb_content_element">
                <div class="widget-title">New Patient Appointment Form</div>
            </section>
            <div class="grid-col grid-col-5">
                <!-- appointment -->
                <section class="widget widget-appointment">
                    <div name="TheStageIsSet" class="widget-title">Enter Details</div>
                    <form name="frm1" action="form1servlet" method="post" onsubmit="return(validateF());">
                        <div class="row">
                            <input id="TheName" type="text" placeholder="Full Name - example(John Doe)" name="name">
                            <i class="fa fa-user"></i><br>
                        </div>
                        <div class="row">
                            <input id="TheAge" type="text" placeholder="Age - example(24)" name="age">
                            <i class="fa fa-user"></i><br>
                        </div>
                        <div class="row">
                            <input id="ThePhoneNumber" type="tel" placeholder="Phone Number - example(033-2655-6734)" name="num">
                            <i class="fa fa-phone"></i><br>
                        </div>
                        <div class="row">
                            <input id="TheEmail" type="text" placeholder="Email Address - example (john@gmail.com)" name="email">
                            <i class="fa fa-envelope"></i><br>
                        </div>
                        <div class="row">
                            <input id="TheAppointmentDate" type="text" placeholder="Appointment Date - example(dd/mm/yy)" name="date">
                            <i class="fa fa-calendar"></i><br>
                        </div>
                        <div class="row">
                            <textarea id="TheAddress" cols="30" rows="5" placeholder="Address" name="add"></textarea>
                            <i class="fa fa-align-left"></i><br>
                        </div>

                        <div class="row">
                            <label for="doc">Select Doctor:</label>
                            <label>
                                <select name="option"><option value=""><---Select---></option>
                                    <%
                                        Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                                        String connectionURL = "jdbc:oracle:thin:@//localhost:1521/XE";
                                        Connection connection= DriverManager.getConnection(connectionURL, "snowwhite", "prakaship");
                                        PreparedStatement psmnt = connection.prepareStatement("select * from doctor ");
                                        ResultSet results = psmnt.executeQuery();
                                        while(results.next()){
                                            String name = results.getString(1);
                                            String id = results.getString(2);
                                    %><option value="<%= name %>"><%=name%></option>
                                    <%} results.close(); psmnt.close(); %>
                                </select>
                            </label><br>
                        </div>
                        <div class="row"><div style="text-align: center;">
                            <button class="button button-primary" type="submit">Submit</button></div>
                        </div>
                    </form>
                </section>
                <!--/ appointment -->
            </div>
        </div>

        <div class="grid-col grid-col-3">
            <!-- calendar -->
            <section class="widget widget-calendar">
                <div class="widget-title">Calendar</div>
                <div id="calendar"></div>
            </section>
            <!--/ calendar -->

            <!-- follow -->
            <section class="widget widget-appointments">
                <div  class="widget-title">Check Reference No. Status</div>
                <form name="frm" action="ReferenceServlet" method="post" onsubmit="return(validateForm());">
                    <div class="row">
                        <input id="TheRefNo" type="text" placeholder="Reference No. (XXXXXXX)" name="ref"></br>
                    </div>
                    <div class="row"><div style="text-align: center;">
                        <button class="button button-primary" type="submit">Submit</button></div>
                    </div>
                </form>
            </section>
            <!--/ follow -->

        </div>
</main>



<!-- FOOTERS -->
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
                            String connectionURL4 = "jdbc:oracle:thin:@//localhost:1521/XE";
                            Connection connection4= DriverManager.getConnection(connectionURL4, "snowwhite", "prakaship");
                            PreparedStatement psmnt4 = connection4.prepareStatement("select * from article ");
                            ResultSet results4 = psmnt4.executeQuery();
                            for(int i=1;i<=2;i++){
                                while(results4.next()){
                                    String name = results4.getString(3);
                                    String id = results4.getString(1);
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
                    <div style="text-align: center;">Office Hours</div>
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
<script type="text/javascript">
    function validateF()
    {
        var name = document.frm1.name.value;
        var age = document.frm1.age.value;
        var phonenum = document.frm1.num.value;
        var email = document.frm1.email.value;
        var appointdate = document.frm1.date.value;
        var addr = document.frm1.add.value;
        var doc = document.frm1.option.value;

        if (name == null || name == "") {
            $("#TheName").attr("value","")
            $("#TheName").attr("placeholder","First name must be filled out")
            $("#TheName").addClass("placeholder")
            $('html, body').animate({
                scrollTop: $("#TheName").offset().top
            }, 'slow');
            return false;
        }
        if (age == null || age == "" || isNaN(age)) {
            $("#TheAge").attr("value","")
            $("#TheAge").attr("placeholder","Age must be filled out")
            $("#TheAge").addClass("placeholder")
            $('html, body').animate({
                scrollTop: $("#TheAge").offset().top
            }, 'slow');
            return false;
        }
        if (phonenum == null || phonenum == "" || isNaN(phonenum)) {
            $("#ThePhoneNumber").attr("value","")
            $("#ThePhoneNumber").attr("placeholder","Contact Number must be filled out")
            $("#ThePhoneNumber").addClass("placeholder")
            $('html, body').animate({
                scrollTop: $("#ThePhoneNumber").offset().top
            }, 'slow');
            return false;
        }
        if (email == null || email == "" || email.indexOf("@") == -1  || email.indexOf(".") == -1) {
            $("#TheEmail").attr("value","")
            $("#TheEmail").attr("placeholder","Email must be filled out")
            $("#TheEmail").addClass("placeholder")
            $('html, body').animate({
                scrollTop: $("#TheEmail").offset().top
            }, 'slow');
            return false;
        }
        if (appointdate == null ||
                appointdate == "" ||
                (appointdate.indexOf("/") == -1 &&
                        appointdate.indexOf("-") == -1 &&
                        appointdate.indexOf(".") == -1)) {
            $("#TheAppointmentDate").attr("value","")
            $("#TheAppointmentDate").attr("placeholder","The Date must be filled out")
            $("#TheAppointmentDate").addClass("placeholder")
            $('html, body').animate({
                scrollTop: $("#TheAppointmentDate").offset().top
            }, 'slow');
            return false;
        }
        if (addr == null || addr == "") {
            $("#TheAddress").attr("value","")
            $("#TheAddress").attr("placeholder","Address must be filled out")
            $("#TheAddress").addClass("placeholder")
            $('html, body').animate({
                scrollTop: $("#TheAddress").offset().top
            }, 'slow');
            return false;
        }

        $.ajax({
            type: "POST",
            url: "/form1servlet",
            data: {_name:name,_age:age,_phonenum:phonenum,_email:email,_appointdate:appointdate,_addr:addr,_doc:doc},
            success: function(data)
            {
                $('form[name="frm1"]').closest("form").hide();
                $('div[name="TheStageIsSet"]').closest("div").text(data);
                $('div[name="TheStageIsSet"]').closest("div").append("<br><a onclick='return(ReForm());'>Click For New Appointment</a>");
            }
        });
        return false;
    }
</script>
<script type="text/javascript">
    function ReForm()
    {
        $('form[name="frm1"]').closest("form").trigger("reset");
        $('form[name="frm1"]').closest("form").show();
        $('div[name="TheStageIsSet"]').closest("div").text("Enter Details");
    }
    </script>
<script type="text/javascript">
    function validateForm()
    {

        var ref = document.frm.ref.value;

        if (ref == null || ref == "" || isNaN(ref)) {
            $("#TheRefNo").attr("value","")
            $("#TheRefNo").attr("placeholder","Ref. No. must be filled out")
            $("#TheRefNo").addClass("placeholder")
            $('html, body').animate({
                scrollTop: $("#TheRefNo").offset().top
            }, 'slow');
            return false;
        }
        $.ajax({
            type: "POST",
            url: "/ReferenceServlet",
            data: {_ref:ref},
            success: function(data)
            {
                var dataSplit = data.split(";");
                $('form[name="frm1"]').closest("form").hide();
                $('div[name="TheStageIsSet"]').closest("div").html("Appointment Details:<br><br>");
                if(dataSplit.length>1) {
                    $('div[name="TheStageIsSet"]').append("Dear " + dataSplit[0] + " your Appointment is on " + dataSplit[1] + " with " + dataSplit[2]);
                }
                else{
                    $('div[name="TheStageIsSet"]').append("Invalid Reference No.!");
                }
                $('div[name="TheStageIsSet"]').closest("div").append("<br><a onclick='return(ReForm());'>Click For New Appointment</a>");
            }
        });
        return false;

    }
</script>
</body>
</html>