<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method = "post" action ="TestAction" name = "frm">
		<input type = "text" placeholder="ID" name = "uid">
		<input type = "text" placeholder="pw" name = "upw">
		
		<%
			String uri = request.getRequestURI();
			String ctx = request.getContextPath();
			
			String command = uri.substring(ctx.length());
			
		
		%>
		
			<input type = "hidden" name ="uri" value =<%= command %>>
			<input type = "submit">
		
	
	</form>



</body>
</html>