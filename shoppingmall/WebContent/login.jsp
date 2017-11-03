<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Random Login Form</title>
  
  
  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body, ul{
	margin-top: 0px   !important; 
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
	
}

.body{
	 
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;

	-webkit-filter: blur(5px);
	z-index: 0;
}

.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: #5379fa !important;
}

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: 43%;
	height: 150px;
	width: 300px;
	padding: 10px;
	margin-top: 60px;
	
}

.id_input{
	
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=button]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=button]:hover{
	opacity: 0.8;
}

.login input[type=button]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=button]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
    
 
 .span_ck{
 	display: none;
 	color: #e85a71;
 }   
 
 
 
    
    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
	<script src=js/jquery-3.2.1.min.js></script>
	<script type="text/javascript">


	
	
	$(document).ready(function(){
		$("#input_id").blur(function(){
			if($("#input_id").val()==""){
				$("#span_id").css("display" , "block");
			}else{
				$("#span_id").css("display" , "none");
			}
		
	});
		$("#input_pw").blur(function(){
			if($("#input_pw").val()==""){
				$("#span_pw").css("display", "block");
			}else{
				$("#span_pw").css("display", "none");
			}
		});
		
	});	
		
	


 $(document).on("click" , ".btn13" , function(){
	 var
	 form = $("#formlogin");
	 uid = $("#input_id");
	 upw = $("#input_pw");
	
	 var id = $.trim(uid.val());
	 pw = $.trim(upw.val());
	 
	 if( id == ""){
		 uid.focus();
		 $("#span_id").css("display" , "block");
		 return false;
	 }
	 
	 if (pw == ""){
		 upw.focus(); 
		 $("#span_pw").css("display" , "block");		 
		 return false;
		 
	 }
	 
	 var
	 form = $("#formlogin");
	 id = $("#input_id");
	 pw = $("#input_pw");
	 
	 
	 
	 form.submit();
	 
 });

 

 </script>
 <script type = "text/javascript">
 window.onload = function(){
		
		var code = ${code};

		if(code == '2'){
			document.getElementById('span_pww').style.display = "block";	
	
		}
		
 }
	
	
 
 </script>
</head>


<body>
  <div class="body"></div>
		<div class="grad"></div>
 	<%@ include file="header.jsp" %>
		
		<div class="header">
			 
		</div>
		<br>
	<form action ="LoginAction" id = "formlogin" name ="formlogin" method = "post" onReset = "clearForm() ">
		<div class="login">
			
		<%-- 	<%
				String uri = request.getRequestURI();
				String ctx = request.getContextPath();
				String command = uri.substring(ctx.length());
			%> --%>
		
		
				<input type="text" placeholder="아이디" name="user" class = "input_class" id ="input_id"><br>
				<span id = "span_id" class="span_ck">아이디를 입력하세요</span>
				<input type="password" placeholder="비밀번호" name="password" class="input_class" id="input_pw"><br>
				<span id = "span_pw" class ="span_ck">비밀번호를 입력하세요</span>
				<span id = "span_pww"  class = "span_ck">아이디나 비밀번호가 다릅니다. </span>
				
			<%-- 	<input type = "hidden" name ="uri" value = <%= command %>> --%>
				<input type="button" value="로그인" class="id_input btn13" >
				
				
		</div>
		</form>		
	
		
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<%--   <%@include file="header.jsp" %> --%>
</body>
</html>
