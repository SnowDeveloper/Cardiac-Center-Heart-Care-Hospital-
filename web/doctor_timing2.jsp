<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="doctor" class="pkg.doctor_init">

<jsp:setProperty name="doctor" property="did" />
<jsp:setProperty name="doctor" property="timing" />

</jsp:useBean>
<%
int i=doctor.update();
if(i>0){
	//out.print("<br>Inserted");
	request.setAttribute("register", "success");
				
				RequestDispatcher rd = request.getRequestDispatcher("doctor_timing.jsp");
				rd.forward(request, response);
      }
else
	out.print("Not Updated");
%>

</body>
</html>