<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


    
    

<style type="text/css">

    

body, div{
	margin: 0px;
	padding: 0px;

}

h3{
	margin: 0px;
}

img {
	width: 225px ;
	height: 225px ;
	
}

a{
	text-decoration: none;
}

.pdt_item {

	float: left;
	margin:0px 10px;
	}
	
.item_list{
	clear:both;
}
.div_wrap{
	width:1903px;
	height:1000px;
}
	
</style>

    <script src="js/jquery-3.2.1.min.js"></script>
   
   	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.loupe.js"></script>
	<script type="text/javascript">
  

   
   </script>
    
    
</head>
<body>

	<%@include file="header.jsp"%>
	<div class="div_wrap">
	<div class="item_list">
		<h3>Best Item</h3>
		<hr>
		<c:forEach items = "${bestlist}" var = "bpDto" >		
		<div class="pdt_item">
			<a href = "detail.jsp?img=${bpDto.p_img} &name=${bpDto.p_name}&price=${bpDto.p_price2}" >
				<img alt=베스트상품 src="img/${bpDto.p_img}" > 
				<div class = "wrap_info">
					<span>${bpDto.p_name }</span><br>
					<span>
					<fmt:setLocale value="ko_kr"/><!-- ko_kr, en_us, ja_jp -->
					<fmt:formatNumber value ="${bpDto.p_price2}" type = "currency"/> 
					
					</span>
				</div>
			</a>
		</div>	
		</c:forEach>		
		</div>
		<br>

	<div class="item_list">
		<h3>New Item</h3>
		<hr>
		<c:forEach items = "${newlist}" var = "npDto">
		<div class ="pdt_item">
			<a href = "detail.jsp?img=${npDto.p_img} &name=${npDto.p_name}&price=${npDto.p_price2}">
				<img alt = "신상품" src = "img/${npDto.p_img}" >
				<div class = "wrap_info">
					<span>${npDto.p_name}</span><br>
					<span>
					<fmt:setLocale value=""/>
					<fmt:formatNumber value = "${npDto.p_price2}" type ="currency"/>
					
					
					</span>
				</div>
			</a>	
		</div>

		</c:forEach>
	</div>
</div>
</body>
</html>


	
	

