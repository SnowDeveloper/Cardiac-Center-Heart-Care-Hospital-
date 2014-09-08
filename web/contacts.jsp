<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
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
							<a href="appointments.jsp"></i>Appointments</a>
						</li>
						<li>
							<a href="news.jsp"></i>News</a>
						</li>
						<li>
							<a href="contacts.jsp" class="active"></i>Contact Us</a>
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
					<h1>Contacts</h1>
					
					<nav class="bread-crumbs">
						<a href="index.jsp">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
						<a href="contacts.jsp">Contacts</a>
					</nav>
				</div>
			</section>
			<!--/ page title -->
			
			<!-- page content -->
			<main class="page-content">
				<div class="grid-row">
					<!-- map -->
					<section class="map">
						<div class="widget-title">Our Main Branch(Melbourne)</div>
                        <img src="pic/map.jpg">
					</section>
					<!--/ map -->
				</div>
				
				<div class="grid-row">
					<div class="grid-col grid-col-5">
						<!-- feedback -->
                        <section class="widget widget-appointment">
                            <div name="TheStageIsSet" class="widget-title">Write To Us</div>
                            <form name="frm3" action="ContactForm" method="post" onsubmit="return(validateF());">
                                <div class="row">
                                    <input id="TheEmail" type="text" placeholder="Email Address - example (john@gmail.com)" name="email">
                                    <i class="fa fa-envelope"></i><br>
                                </div>
                                <div class="row">
                                    <input id="TheName" type="text" placeholder="Name - example(John Doe)" name="name">
                                    <i class="fa fa-user"></i><br>
                                </div>
                                <div class="row">
                                    <input id="TheSubject" type="text" placeholder="Subject - example (Cardiac Arrest)" name="subject">
                                    <i class="fa fa-envelope"></i><br>
                                </div>
                                <div class="row">
                                    <textarea id="TheMessage" cols="30" rows="5" placeholder="Message" name="message"></textarea>
                                    <i class="fa fa-align-left"></i><br>
                                </div>
                                <div class="row"><div style="text-align: center;">
                                    <button class="button button-primary" type="submit">Submit</button></div>
                                </div>
                            </form>
                        </section>
						<!--/ feedback -->
					</div>
					
					<div class="grid-col grid-col-3">						
						<!-- contacts -->
						<section class="widget widget-contacts">
							<div class="widget-title">Contact Details</div>
							<dl>
								<dt class="opened">Clinico Cardio Center (India)</dt>
								<dd>
									<ul>
										<li><i class="fa fa-map-marker"></i>188/87, G.T. Road, Kolkata - 711117.</li>
										<li><i class="fa fa-phone"></i>Call us: (033) 6566-55555</li>
										<li><i class="fa fa-envelope"></i>E-mail: clinico@gmail.com</li>
									</ul>
								</dd>
								
							</dl>
						</section>
						<section class="widget widget-contacts">
							<dl>
								<dt class="opened">Clinico Cardio Center (Australia)</dt>
								<dd>
									<ul>
										<li><i class="fa fa-map-marker"></i>347 Lonsdale St Melbourne, VIC 3000.</li>
										<li><i class="fa fa-phone"></i>Call us: +61 3 9642 8220</li>
										<li><i class="fa fa-envelope"></i>E-mail: clinico@gmail.com</li>
									</ul>
								</dd>
								
							</dl>
						</section>
						<!--/ contacts -->
						
					</div>
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
        <script type="text/javascript">
            function validateF()
            {

                var email = document.frm3.email.value;
                var name = document.frm3.name.value;
                var subject = document.frm3.subject.value;
                var message = document.frm3.message.value;
                if (email == null || email == "" || email.indexOf("@") == -1  || email.indexOf(".") == -1) {
                    $("#TheEmail").attr("value","")
                    $("#TheEmail").attr("placeholder","Email must be filled out")
                    $("#TheEmail").addClass("placeholder")
                    $('html, body').animate({
                        scrollTop: $("#TheEmail").offset().top
                    }, 'slow');
                    return false;
                }
                if (name == null || name == "") {
                    $("#TheName").attr("value","")
                    $("#TheName").attr("placeholder","Name must be filled out")
                    $("#TheName").addClass("placeholder")
                    $('html, body').animate({
                        scrollTop: $("#TheName").offset().top
                    }, 'slow');
                    return false;
                }
                if (subject == null || subject == "") {
                    $("#TheSubject").attr("value","")
                    $("#TheSubject").attr("placeholder","Subject must be filled out")
                    $("#TheSubject").addClass("placeholder")
                    $('html, body').animate({
                        scrollTop: $("#TheSubject").offset().top
                    }, 'slow');
                    return false;
                }
                if (message == null || message == "") {
                    $("#TheMessage").attr("value","")
                    $("#TheMessage").attr("placeholder","Message must be filled out")
                    $("#TheMessage").addClass("placeholder")
                    $('html, body').animate({
                        scrollTop: $("#TheMessage").offset().top
                    }, 'slow');
                    return false;
                }
                $.ajax({
                    type: "POST",
                    url: "/ContactForm",
                    data: {_email:email,_name:name,_subject:subject,_message:message},
                    success: function(data)
                    {
                        $('form[name="frm3"]').closest("form").remove();
                        $('div[name="TheStageIsSet"]').closest("div").text(data);
                    }
                });
                return false;
            }
        </script>
	</body>
</html>