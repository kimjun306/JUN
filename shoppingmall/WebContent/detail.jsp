<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 화페 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type = "text/css">



img {
	
    width: 430px;
    margin-top: 2%;
    margin-left: 20%;
    height: 430px;
    padding-left:10%;
    padding-top:2%;

}

#span_id{

	font-size: 30px;
    margin-top: 50px;
    margin-left: 41%;
    position: absolute;
	
}

a{
	text-decoration: none;
}

.btn_buy {
    color: #fff;
    border: 1px solid #1fbc02;
    background-color: #1fbc02;
}

.btn_buynot{

    color: #fff;
    border: 1px solid orange;
    background-color: orange;

}
	
.btn_type {
		
	width: 300px;
    font-size: 20px;
    font-weight: 600;
    line-height: 61px;
    display: block;
    box-sizing: border-box;
    height: 61px;
    padding-top: 1px;
    text-align: center;
    margin-left: 60%;
    margin-top: -110px;
}

.btn_type1 {
		
	width: 300px;
    font-size: 20px;
    font-weight: 600;
    line-height: 61px;
    display: block;
    box-sizing: border-box;
    height: 61px;
    padding-top: 1px;
    text-align: center;
    margin-left: 60%;
    margin-top: 10px;
}
	
#div_id2{

	margin-left: 32%;
    margin-top: 25px;
    position: absolute;
    font-size: 25px;

}	
	


	

</style>
	 <%@include file = "header.jsp" %> 

<script src="js/jquery-3.2.1.min.js"></script>

 	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.loupe.js"></script>
	<script type="text/javascript">
 
	$(document).ready(function(){
		$('.demo').loupe({
			
			width : 230,
			height : 270, 
			
			
			loupe: 'loupe'
				
			
		});
		
		
		});
	  
	</script>

</head>
<body>


	<%
	String img = request.getParameter("img");
	String name = request.getParameter("name");
	String price = request.getParameter("price");

	%>
	
	<div id = "div_id">	
	<img alt="" src="img/<%=img %>" class="demo"  >	
	</div>
	
	
	<div id = "div_id2">
	<%=name %>
	<fmt:setLocale value=""/>
	<fmt:formatNumber value = "<%=price %>" type ="currency"/>
	</div>
	
	




		
<span><a href = "ShoppingIndex" class = "btn_type btn_buynot">장바구니</a> </span><br>				
<span><a href = "ShoppingIndex" class = "btn_type1 btn_buy" >구매하기</a></span>
	

</body>
</html>