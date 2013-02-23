<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ben's, Chantelle's &amp; Matt's Index Page</title>
</head>
<body>
	
	<%
		Cookie[] cookies = request.getCookies();

		if (cookies == null) {
			//out.println("No Cookies Found<br />");
		} else {

			for (Cookie retrievedCookie : cookies) {
				String name = retrievedCookie.getName();
				String value = retrievedCookie.getValue();

				if(name.equals("message")){
					out.println("<h1>" + name + " : " + value + "</h1><br />");
				}
			}
		}
	%>
	
	<!-- Start Form -->
	<form action="/CS53000-Project1/Controller" method="get">
	
		<input type="hidden" name="action" value="docomplete" />
		
		<input type="submit" name="btnReplace" value="Replace" />
		<input type="text" name="txtField" value="Please enter a value..." />
		<br /><br />
		<input type="submit" name="btnRefresh" value="Refresh" />
		<br /><br />
		<input type="submit" name="btnLogout" value="Log Out!" />
		<br /><br />
	</form>
	<!-- End Form -->
	
	<p>Session on </p>
	<p>Expires: </p>
	
</body>
</html>