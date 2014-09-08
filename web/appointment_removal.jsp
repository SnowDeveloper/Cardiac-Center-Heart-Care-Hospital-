<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Appointment</title>
<!-- styles -->
		
		<link rel="stylesheet" href="admin_css/layout.css" type="text/css" media="screen" />
		<!--/ styles -->
</head>
<body>
<%
    String un = (String) session.getAttribute ("un");
    if (un == null) {
%>
<jsp:forward page="admin_login.html"></jsp:forward>
<%
    }
%>
<header id="header">
		<hgroup>
			<h1 class="site_title"><a href="admin_home.jsp">Clinico Admin</a></h1>
			<h2 class="section_title">Dashboard</h2><div class="btn_view_site"><a href="index.jsp">View Site</a></div>
		</hgroup>
	</header> <!-- end of header bar -->
	
	<section id="secondary_bar">
		<div class="user">
			<p>Admin (<a href="messages.jsp"> Messages</a>)</p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		<div class="breadcrumbs_container">
			<article class="breadcrumbs"><a href="index.jsp">Website Admin</a> <div class="breadcrumb_divider"></div> <a class="current">Dashboard</a></article>
		</div>
	</section><!-- end of secondary bar -->
	
	<aside id="sidebar" class="column">
		
		<hr/>
		<h3>Doctors</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="doctor_entry.jsp">Add a Doctor</a></li>
			<li class="icn_edit_article"><a href="doctor_removal.jsp">Remove a Doctor</a></li>
			<li class="icn_categories"><a href="doctor_timing.jsp">Change Timing</a></li>
			<li class="icn_tags"><a href="doctor_show.jsp">Show Doctors</a></li>
		</ul>
		<h3>Nurses</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="nurse_entry.jsp">Add a Nurse</a></li>
			<li class="icn_view_users"><a href="nurse_removal.jsp">Remove a Nurse</a></li>
			<li class="icn_profile"><a href="nurse_show.jsp">Show Nurses</a></li>
		</ul>
        <h3>Appointments</h3>
        <ul class="toggle">
            <li class="icn_add_user"><a href="appointment_show.jsp">Show Appointments</a></li>
            <li class="icn_view_users"><a href="appointment_removal.jsp">Remove an Appointment</a></li>
        </ul>
		<h3>Article</h3>
		<ul class="toggle">
			<li class="icn_folder"><a href="admin_home.jsp">Post an Article</a></li>
			<li class="icn_photo"><a href="article_removal.jsp">Remove Article</a></li>
			
		</ul>
		<h3>Admin</h3>
		<ul class="toggle">
			<li class="icn_jump_back"><a href="logout.jsp">Logout</a></li>
		</ul>
		
		<footer>
			<hr />
			
		</footer>
		</aside>
		
		
<section id="main" class="column">
<%
		String s = (String)request.getAttribute("register");
		if (s != null && s.equals("success")) {
	%>
			 <h4 class="alert_info">Successfully Removed</h4>
	<% 	}
	%>
      

		<article class="module width_full">
			<header><h3>Remove Appointment</h3></header>
				
    <form id="AppointmentRemovalForm" method="post" action="appointment_removal2.jsp">
    
	<fieldset>
		
			
			<label for="refn">Enter Reference No. :</label>
			<input id="refn" name="refn" type="text" />
				
				<div class="clear"></div>
				
		<footer>
		<div class="submit_link">
			<input class="submit" type="submit" value="Submit">
		</div>
		</footer>
		
	</fieldset>
	
    </form>
</article>
</section>

</body>
</html>