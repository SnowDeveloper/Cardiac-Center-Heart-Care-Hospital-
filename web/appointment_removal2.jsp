<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="appointment" class="pkg.appointment_init">

<jsp:setProperty name="appointment" property="refn" />

</jsp:useBean>
<%
int i=appointment.remove();
if(i>0){
	//out.print("<br>Inserted");
	request.setAttribute("register", "success");
				
				RequestDispatcher rd = request.getRequestDispatcher("appointment_removal.jsp");
				rd.forward(request, response);
      }
else
	out.print("Not Removed");
%>
</body>
</html>