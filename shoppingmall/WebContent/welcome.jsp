<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv =  "Refresh" content = "3; url=ShoppingIndex">
<title>Insert title here</title>

<style type = "text/css"> 	

body { 
	   margin-top : 300px;
	   text-align : center;
	   font-size : 30px;
	   border : 1px solid red;
	   color : orange;
	   }


</style>

<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

/* 	setTimeout("move()",3000);
	function move(){
	location.href="login.jsp"};          3초후 페이지 이동*/
	
</script>

</head>
<body>


<% String name = request.getParameter("name_name"); %>
	
	
	<div>
		<%=name%>회원님 가입을 축하합니다.<br>
		3초후 메인 페이지로 이동합니다.	
	</div>

	
</body>
</html>