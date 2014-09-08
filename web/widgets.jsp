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
							<a href="widgets.jsp" class="active"></i>Features</a>
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
					<h1>Widgets</h1>
					
					<nav class="bread-crumbs">
						<a href="index-2.jsp">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
						<a href="widgets.jsp">Features</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;
					</nav>
				</div>
			</section>
			<!--/ page title -->
			
			<!-- page content -->
			<main class="page-content">
				<div class="grid-row">
					<div class="grid-col grid-col-3">
						<!-- sevices -->
						<section class="widget widget-sevices">
							<div class="widget-title">Our Services</div>
							<ul>
								<li><i class="fa fa-bookmark"></i><a href="services.jsp"><i class="fa fa-angle-right"></i>Addiction Recovery</a></li>
								<li><i class="fa fa-bookmark"></i><a href="services.jsp"><i class="fa fa-angle-right"></i>Emergency Department</a></li>
								<li><i class="fa fa-bookmark"></i><a href="services.jsp"><i class="fa fa-angle-right"></i>Food & Nutrition</a></li>
								<li><i class="fa fa-bookmark"></i><a href="services.jsp"><i class="fa fa-angle-right"></i>Heart(Cardiovascular)</a></li>
							</ul>
						</section>
						<!--/ sevices -->
						
						<!-- comments -->
						<section class="widget widget-comments">
							<div class="widget-title">Comments</div>
							<div id="comments-carousel" class="owl-carousel">
								<div class="item">
									<ul>
										<li>
											<img src="pic/doctor-1.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Butcher House</a></div>
											<p>Successful operations at Clinico.<br><span class="date">Jul 27th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-2.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Nigella Wall</a></div>
											<p>Take care of your heart and live long.<br><span class="date">Jul 24th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-6.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Rohan Kapoor</a></div>
											<p>New challenges at Clinico.<br><span class="date">Jul 20th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-4.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Mangle Taleebin</a></div>
											<p>Delivered a successful heart transplant.<br><span class="date">Jul 11th, 2014</span></p>
										</li>
									</ul>
								</div>
								<div class="item">
									<ul>
										<li>
											<img src="pic/doctor-4.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Mangle Taleebin</a></div>
											<p>Saving a life feels good.<br><span class="date">Jul 11th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-5.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Shruti Singh</a></div>
											<p>Heart replacement succeeded today.<br><span class="date">Jul 24th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-1.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Butcher House</a></div>
											<p>Take care of your heart and live long.<br><span class="date">Jul 27th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-3.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Normand Wehling</a></div>
											<p>Eat healthy and enjoy life.<br><span class="date">Jul 20th, 2014</span></p>
										</li>
									</ul>
								</div>
								<div class="item">
									<ul>
										<li>
											<img src="pic/doctor-6.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Rohan Kapoor</a></div>
											<p>Take care of your heart and live long.<br><span class="date">Jul 20th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-2.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Nigella Wall</a></div>
											<p>Internship at Clinico completed.<br><span class="date">Jul 24th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-4.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Mangle Taleebin</a></div>
											<p>A healthy heart is all we can assure you.<br><span class="date">Jul 11th, 2014</span></p>
										</li>
										<li>
											<img src="pic/doctor-5.jpg" alt="">
											<div class="author"><a href="doctors.jsp">Shruti Singh</a></div>
											<p>Health above all. Eat veggies more.<br><span class="date">Jul 27th, 2014</span></p>
										</li>
									</ul>
								</div>
							</div>
						</section>
						<!--/ comments -->
						
						
					</div>
					
					<div class="grid-col grid-col-6">
						<!-- philosophy -->
						<section>	
							<div class="widget-title">Our Philosophy</div>
							
							<div class="wpb_text_column wpb_content_element">
								<div class="wpb_wrapper">			
									<img src="pic/our-phylosophy.jpg" width="260" height="246" alt="" class="alignleft">
									<p class="capitalized">Clinico Cardiac Center is a leading, pan Asia-Pacific, integrated heart-healthcare delivery provider.</p>
									<p>Currently, its healthcare delivery services are in India, Singapore, Dubai, Mauritius and Sri Lanka with 65 healthcare facilities (including projects under development), over 10,000 potential beds, over 240 diagnostic centres and a team strength of more than 17,000 people.</p>
									<p>Clinico Cardio Center has the larger purpose of saving and enriching lives through clinical excellence.</p>
								</div>
							</div>
						</section>
						<!--/ philosophy -->
						
						<!-- list -->
						<article>	
							<div class="widget-title">Why Choose Clinico?</div>
							
							<div class="wpb_row vc_row-fluid">
								<div class="vc_span6 wpb_column column_container">
									<div class="wpb_wrapper">
										<div class="wpb_text_column wpb_content_element">
											<div class="wpb_wrapper">			
												<ul class="ul1">
													<li>Highly skilled team of Doctors.</li>
													<li>Caring and polite group of nurses.</li>
													<li>24x7 Helpline.</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="vc_span6 wpb_column column_container">
									<div class="wpb_wrapper">
										<div class="wpb_text_column wpb_content_element">
											<div class="wpb_wrapper">
												<ul class="ul1">
													<li>Immediate action to Emergencies.</li>
													<li>Guidance post treatment.</li>
													<li>Nutrition tips provided.</li>													
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
						<!--/ list -->
						
						<!-- testimonial -->
						<div class="wpb_content_element">
							<div class="widget testimonial">
								<div class="clearfix">
									<img src="pic/testimonial-1.jpg" width="96" height="96" alt="">
									<p>Being in control of your life,eating and exercising right and having realistic expectations about your day-to-day challenges are the keys to a healthy heart, which is perhaps the most important ingredient to living a happy, healthy and rewarding life.</p>
								</div>
								<div class="author">Kate Ross, The Healthy Heart</div>
							</div>
						</div>
						<!--/ testimonial -->
						
						
					</div>
					
					<div class="grid-col grid-col-3">					
										
											
						<!-- tags -->
						<section class="widget widget-tags">
							<div class="widget-title">Find</div>
							<ul>
								<li><a href="doctors.jsp">Doctors</a></li>
								<li><a href="appointments.jsp">Appointments</a></li>
								<li><a href="index.jsp">General</a></li>
								<li><a href="news.jsp">News</a></li>
								<li><a href="services.jsp">Services</a></li>
							</ul>
						</section>
						<!--/ tags -->
						
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
	</body>
</html>