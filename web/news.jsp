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
							<a href="news.jsp" class="active"></i>News</a>
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
					<h1>News</h1>
					
					<nav class="bread-crumbs">
						<a href="index-2.jsp">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
						<a href="news.jsp">News</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
					</nav>
				</div>
			</section>
			<!--/ page title -->
			
			<!-- page content -->
			<main class="page-content">
				<div class="grid-row">					
					<!-- news -->
					<section id="news" class="widget news news-4">						
						<div class="grid">
							<div class="item">
								<h3><a href="#">How the human heart functions</a></h3>
								<div class="date">20 July 2014<i class="fa fa-comment"><span>3</span></i></div>
								<div class="pic">
									<img src="pic/photo-tour-1.jpg" alt="How the human heart functions">
								</div>
								<p>Every day, your heart beats about 100,000 times, sending 2,000 gallons of blood surging through your body. Although it’s no bigger than your fist, your heart has the mighty job of keeping blood flowing through the 60,000 miles of blood vessels that feed your organs and tissues. Any damage to the heart or its valves can reduce that pumping power, forcing the heart to work harder just to keep up with the body’s demand for blood.</p>
								<div class="cats">Posted in: 20 July, 12:45pm. <a href="news.jsp">News</a></div>
							</div>

							<div class="item">
								<h3><a href="#">Stress and the Monday morning heart attack continued...</a></h3>
								<div class="date">15 Apr 2014<i class="fa fa-comment"><span>1</span></i></div>
								<p>Doctors have long known that morning is prime time for heart attacks. "We call it 'the witching hour,'" Dr. Wall says. That's because levels of a stress hormone called cortisol peak early in the day. When this happens, cholesterol plaque that has built up in the arteries can rupture and block the flow of blood to the heart. Add in the rise in blood pressure and increased heart rate from the stress of returning to work after the weekend, and you have the perfect recipe for a Monday morning heart attack.</p>
								<p>That’s why it’s important to reduce your stress levels as much as you can. Practice yoga, meditate, exercise, laugh, or spend more quality time with your family -- whatever works best for you.</p>
								<div class="cats">Posted in: 15 April, 08:03pm. <a href="news.jsp">News</a></div>
							</div>
							
							<div class="item">
								<h3><a href="#">Laughter: The good heart medicine</a></h3>
								<div class="date">10 AUG 2014<i class="fa fa-comment"><span>4</span></i></div>
								<div class="pic">
									<img src="pic/doctor-1.jpg" alt="Laughter">
								</div>
								<p>Health experts now have proof that laughter is good medicine.</p>

								<P>	A good belly laugh can send 20% more blood flowing through your entire body. One study found that when people watched a funny movie, their blood flow increased. That’s why laughter might just be the perfect antidote to stress.</P>

								<P>	When you laugh, the lining of your blood vessel walls relaxes and expands, Krasuski says. So have a good giggle. Your heart will thank you.</p>
								<div class="cats">Posted in: 10 August,03:15pm <a href="news.jsp">News</a></div>
							</div>
							
							<div class="item">
								<h3><a href="#">Pulse</a></h3>
								<div class="date">10 Jan 2014<i class="fa fa-comment"><span>4</span></i></div>
								<div class="pic">
									<img src="pic/pulse.jpg" alt="Pulse">
								</div>
								<p>You might have watched television shows or movies where a patient in a hospital is attached to an electrocardiogram (ECG). You might recognize it as the machine with a line moving across a screen that occasionally spikes (or remains flat when a patient is dying).</p>

								<P>	This machine can measure the electricity going through a patient’s heart. A doctor can use the information to know when a patient is having heart rhythm problems or even a heart attack.</p>
								<div class="cats">Posted in: 10 Jan,02:25pm <a href="news.jsp">News</a></div>
							</div>
							
							
							</div>
						</section>
					<!--/ news -->
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