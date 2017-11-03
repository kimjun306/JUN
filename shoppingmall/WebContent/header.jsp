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
@import url('https://fonts.googleapis.com/css?family=Wendy+One');

@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);

body, ul {
	margin: 0px    !important;  
	padding: 0px;
}

#header {
	background-color: black;
	height: 46px;
	width: 100%;
	
}

#header_ul {
	z-index:-1px;
	list-style-type: none; /* ul의 점 없애는 태그.  */
}

.header_li { 
	float: left;
	color: white;
	width: 100px;
	text-align: center;
	position: relative;
	line-height: 46px;
}



#header2 {
	float: right;
	margin-right: 70px;
}

.header_a {
	color: white;
	text-decoration: none; 
}

.header_dropdown {
	width: 100px;
	position: absolute;
	left: 0px;
	display: none;
}

.dropdown_a {
	display: block; /* block 을 줘야 세로로 나옴 */
	color: black;
	
	text-decoration : none;
	font-size: 19px;
	padding: 10px 0;
	font-family: 'Nanum Pen Script', cursive;
}


.header_li:HOVER {
	background-color: #353535;
}

.dropdown_a:HOVER {
	background-color: orange;
	
}
.dropdown_a {
	line-height : 20px;
}

.header_li:HOVER .header_dropdown {
	display: block;
}

.header_li>a {
	color: white;
	text-decoration: none;
	padding: 0 5px;
	font-size: 20px;
	line-height: 30px;
	font-family: 'Nanum Pen Script', cursive;
}



#bookmark {
	color: white;
	font-size: 17px;
	line-height: 50px;
	font-weight: bold;
	margin-left: 70px;
}

/*  line 2 (로고이미지)
 */
.logo_span {
	color: black;
	font-size: 55px;
	z-index: 1;
    position: relative;

}

#logo>a {
	text-decoration: none;
	font-family: 'Wendy One', sans-serif;
}

#mainlogo {
	width: 280px;
	text-align: center;
	margin: 0 auto; 		/* margin: 0  auto 를 주면 가운데로 온다. width 값이 무조건필요함 */
	padding: 20px 0;
}

#nav {
	height: 50px;
	background-color: grey;
}

#nav_ul {

	list-style-type: none;
	
}
	


.nav_li {
	float: left;
	color: white;
	width: 360px;
	text-align: center;
	position: relative;
	margin-left : 70 px;
 	z-index: 1;

}

.nav_a {
	color : white;
	line-height: 50px;
	text-decoration: none; 
}

.nav_dropdown_a{
	float: left;
	line-height:50px;
	
	

}
.nav_dropdown {
	display: none; 
	position: absolute;
	width:100%;
	text-decoration : none;
	background-color : #d9e1e8;
	
	
	
}

.nav_li:HOVER{
    	background-color: #353535;
    
}


.nav_li:HOVER .nav_dropdown{
 	display:block; 

	
}

#login_user{
	padding-top:13px;
	float:left;
	font-size : 12px;
	color : white;
}



</style>
<script src=js/jquery-3.2.1.min.js></script>
<script type="text/javascript">



 $(document).on("click" , ".btn13" , function(){
	 
	 
	 var
	 form = $("formlogin");
	
	
	 
	 
	 form.submit();
	 
 });


 	
 
</script>


</head>
<body>

	
	<div id="header">
	
		<span id="bookmark"> BOOKMARK </span>
		<!-- 로그인, 회원가입등등 담겨있는 div -->
		<div id="header2">
			<ul id="header_ul">
	
				
			<c:choose>
				<c:when test="${empty sessionScope.loginUser }">
				<li class="header_li"><a href="login.jsp" class="header_a"> 로그인</a></li>		
				<li class="header_li"><a href="contract.jsp" class="header_a"> 회원가입</a></li>
				</c:when>
				<c:otherwise>
				<li id = "login_user">${sessionScope.loginUser.shopname}(${sessionScope.loginUser.shopid})</li>
				<li class = "header_li"><a class ="header_a" href = "LoginOutAction"  >로그아웃</a></li>
				
				</c:otherwise>
			</c:choose>
				
				<li class="header_li"><a href="#" class="header_a">마이페이지</a>
					<div class="header_dropdown">
						<a href="#" class="dropdown_a">주문/배송조회</a> 
						<a href="#" class="dropdown_a">장바구니</a> 
						<a href="MemberOut" class="dropdown_a">회원탈퇴</a>				
						<a href="RegisterUpdate" class="dropdown_a">회원정보</a>

					</div>
				</li>
				<li class = "header_li"><a href = "#" class = "header_a">고객센터</a>
					<div class = "header_dropdown">
						<a href = "#" class = "dropdown_a">질문게시판</a>		
					</div>	
				</li>


			
			
			</ul>
		</div>

		<div id="logo">
			<a href="ShoppingIndex">
				<div id="mainlogo">
					<span class="logo_span">Jewelry Lovers </span>
				</div>

			</a>
		</div>
		<div id='nav'>
			<ul id = "nav_ul">
				<li class = "nav_li" > <a href ="#" class="nav_a"> 목걸이 </a> 
					<div class = "nav_dropdown">
					<a href = "#" class ="dropdown_a">금목걸이</a>
					<a href = "#" class ="dropdown_a">은목걸이</a>
					<a href = "#" class ="dropdown_a">다이아목걸이</a>
					<a href = "#" class ="dropdown_a">루비목걸이</a>
				
					</div>
				</li>
				<li class = "nav_li" > <a href ="#" class="nav_a"> 반지 </a> 
					<div class = "nav_dropdown"> 
					<a href = "#" class = "dropdown_a">금반지</a>
					<a href = "#" class = "dropdown_a">은반지</a>
					<a href = "#" class = "dropdown_a">다이아반지</a>
					<a href = "#" class = "dropdown_a">루비반지</a>
					</div>
					
				</li>
				<li class = "nav_li" > <a href ="#" class="nav_a"> 귀걸이 </a> 
					<div class = "nav_dropdown"> 
					<a href = "#" class = "dropdown_a">금귀걸이</a>
					<a href = "#" class = "dropdown_a">은귀걸이</a>
					<a href = "#" class = "dropdown_a">다이아귀걸이</a>
					<a href = "#" class = "dropdown_a">루비귀걸이</a>
					</div>
				</li>
				
				<li class = "nav_li" > <a href ="#" class="nav_a"> 커플링</a> 
					<div class = "nav_dropdown"> 
					<a href = "#" class = "dropdown_a">금커플링</a>
					<a href = "#" class = "dropdown_a">은커플링</a>
					<a href = "#" class = "dropdown_a">다이아커플링</a>
					<a href = "#" class = "dropdown_a">루비커플링</a>
					</div>
				</li>
				<li class = "nav_li" > <a href ="#" class="nav_a"> 팔찌 </a> 
					<div class = "nav_dropdown"> 
					<a href = "#" class = "dropdown_a">금팔찌</a>
					<a href = "#" class = "dropdown_a">은팔찌</a>
					<a href = "#" class = "dropdown_a">다이아팔찌</a>
					<a href = "#" class = "dropdown_a">루비팔찌</a>
					</div>
				</li>
			</ul>
		</div>

</body>
</html>