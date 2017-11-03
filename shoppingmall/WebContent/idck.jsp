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

.span_ck{
	font-size : 12px;
	color : #e85a71;
	display:none; 
	margin-left : 20px;
}



</style>
<script src="js/jquery-3.2.1.min.js"></script>
<script type = "text/javascript">

	function closeOk(){
		alert("aa");
		var str = document.getElementById("duid").value;
		alert("dd");
		opener.document.form1.name_pw.focus();
		opener.document.form1.ckuid.value = "0";
		opener.document.form1.name_id.value = str;
		opener.document.form1.uid2.value = "${message}"; 
		self.close();
					//form 네임값 . 찍고 pw 네임값.
	}

	function closeNg(){
		opener.document.form1.name_id.select();
		opener.document.form1.ckuid.value = "1";
		self.close();
	}

	
	$(document).on("click" , "#duplicate" , function(){
		
		
		var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식 
		var form = $("#formid");
		var uid = $("#ckid");
		var id = $.trim(uid.val());
		
		if(id == ""){
			uid.focus();			
			$("#span_id").css("display" , "block"); 
			return false; 
	 	}
	
	  		form.submit;
	});
	
	
	
</script>
</head>
<body>
	
	<c:choose>
		<c:when test= "${idCount == '0'}">
			
			${message}(은)는 사용가능한 ID 입니다.<br>
		
			<input type = "text" value = "${message}" id = "duid" ><br>
			<button onclick = "closeOk()">사용하기</button>
			
		</c:when>
		
		
		<c:otherwise>
		<form action = "IdckAction" name = "form1" id = "formid" method = "get" >
			${message}(은)는 중복된 ID 입니다.<br>
			다른아이디를 입력해주세요
			<input type = "text" name = "ckid" id = "ckid" >
			<!-- <button onclick="closeNg()">확인</button><br> -->
			<input type = "submit" value = "중복확인" id = "duplicate" >
			<input type = "hidden" id = "ckuid" name = "ckuid" value="1">
			<input type = "hidden" id = "uid2" name = "uid2" >
					<span id="span_id" class = "span_ck">아이디를 입력하세요</span>
		
		</form>
		</c:otherwise>

	</c:choose>
	
	<%-- <% String id = request.getParameter("ckid"); %>
	<%= id %>
	아이디 중복체크다 !! --%>
</body>
</html>