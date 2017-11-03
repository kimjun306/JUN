<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원수정 페이지</title>




<style type="text/css">
body {
	
	background-attachment: fixed; 
	background-position: center;
	background-repeat: no-repeat;
	background-color : white;
}

.div_input {
	margin: auto auto auto 35%;
	/* background-image : url('img/white.png'); */
	
	

}

#register_span {
	margin-top : 30px;
	margin-left : 45%;
	text-align : center;
	position: absolute;
	font-size : 20px;
	color : black;
	font-weight : bold;
}

#register_id {
	margin-top: 100px;
}

#signRegister {
	text-align: center;
	font-size: 30px;
	margin-left : 43%;
	
}

.input_register {
	height: 20px;
	margin-left: 20px;
}

.div_index {

	margin-left : 20%;
	margin-top : 10%;
	font-size : 20px;
	
	
}

.div_index a {
	text-decoration :none;
	color :white;
	
}

.btn_index{
	font-size:28px;
	position:relative;
	bottom:-504px;
	background-color : black;
	margin-left : -28px;
	
	
}

.span_ck{
	font-size : 12px;
	color : #e85a71;
	display:none; 
	margin-left : 20px;
}

.td_class{
	padding-left:43px;
	padding-bottom: 10px;
}

#addr_button {
	font-size : 12px;
}

#duplicate {
	margin-left : 20px;
}
 table{
    border: 1px solid black;
    width: 561px;
    position: absolute;
    left: 703px;
 }
 #btn1{
 	margin-right:70px;
 	position: relative;
 	left:-39px;
 	background-color: grey;
 	border-radius : 10px  10px 10px 10px ;
 }
 #btn2{
   border-radius : 10px  10px 10px 10px ;
   background-color: grey;
   
 }


</style>


<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">



	$(document).ready(function(){
		$("#input_id").blur(function(){
			if($("#input_id").val()==""){
				$("#span_id").css("display", "block");
			}else{
				$("#span_id").css("display", "none");
			}
	});
		$("#input_pw").blur(function(){
			if($("#input_pw").val()==""){
				$("#span_pw").css("display", "block");
			}else{
				$("#span_pw").css("display", "none");
			}
	});
		$("#input_pw1").blur(function(){
			if($("#input_pw1").val()==""){
				$("#span_pw1").css("display", "block");
			}else{
				$("#span_pw1").css("display", "none");
			}
	});
		$("#input_name").blur(function(){
			if($("#input_name").val()==""){
				$("#span_name").css("display", "block");
			}else{
				$("#span_name").css("display", "none");
			}
	});
		 $("#sample6_postcode").blur(function(){
			 	if($("#sample6_postcode").val()==""){
			 		$("#span_postcode").css("display", "block");
			 	}else{
			 		$("#span_postcode").css("display", "none");
			 	}
			}); 
			 
			 $("#sample6_address2").blur(function(){
				 if($("#sample6_address2").val()==""){
					 $("#span_addr1").css("display", "block");
				 }else{
					 $("#span_addr1").css("display", "none");
				 }
			 });
		
		
		
		
		$("#input_phone").blur(function(){
			if($("#input_phone").val()==""){
				$("#span_phone").css("display", "block");
				$("#span_phone2").css("display", "none");
			}else if(!($.isNumeric($("#input_phone").val()))){
				$("#span_phone").css("display", "none");
				$("#span_phone2").css("display", "block");
			}else{
				$("#span_phone2").css("display", "none");
			}
		});
		$("#input_email").blur(function(){
			if($("#input_email").val()==""){
				$("#span_email").css("display", "block");
			}else{
				$("#span_email").css("display", "none");
			}
		});
	}); 
	
	$(document).on("click", ".btn13", function(){
		
		

		var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식 
		var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
		var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var re_url = /^(https?:\/\/)?([a-z\d\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?$/; // URL 검사식
		var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식 
		
		
		var
		form = $("#formid"),
		uid = $("#input_id"),
		upw = $("#input_pw"),
		urepw = $("#input_pw1"),
		uname = $("#input_name"),
		
		
		uzip = $("#sample6_postcode"),		
	 	uaddr =$("#sample6_address"),
		uaddr1 = $("#sample6_address2"),
		uphone =$("#input_phone"),
		uemail = $("#input_email"); 
		

		
		var id = $.trim(uid.val()),
		pw = $.trim(upw.val()),
		repw = $.trim(urepw.val()),
		name = $.trim(uname.val()),
		
		zip = $.trim(uzip.val()),
		addr = $.trim(uaddr.val()),
		addr1 = $.trim(uaddr1.val()), 
		phone = $.trim(uphone.val()),
		email = $.trim(uemail.val());
	 	
		
	 	if( id == ""){
	 		uid.focus();
	 		$("#span_id").css("display" , "block");
	 		return false;
	 	}else if(!re_id.test(id)){
			uid.focus();
			$("#span_id").text("유효하지 않는 아이디입니다.").css("display" , "block");
		 	return false;
		}
	 	
	 	if ( pw == ""){
	 		upw.focus();
	 		$("#span_pw").css("display" , "block");
	 		return false;
	 	}
	 	
	 	if ( repw == ""){
	 		urepw.focus();
	 		$("#span_pw1").css("display" , "block");
	 		return false;
	 	}else if( repw != pw){
			urepw.focus();
			$("#span_pw1").text("비밀번호는 같아야 합니다").css("display" , "block");
			return false;
		}
	 	
	 	if ( name == "") {
	 		uname.focus();
	 		$("#span_name").css("display" , "block");
	 		return false;
	 	}
	 	
	 	if (zip ==""){
			uaddr.focus();
			$("#span_postcode").text("반드시 주소를 입력하셔야 합니다.").css("display" , "block");
			return false;
		} 
	 	
	 	if (addr1 =="" ){
	 		uaddr1.focus();
	 		$("#span_addr1").css("display" , "blcok");
	 		return false;
	 	}
	 
		
		if(phone == ""){
			uphone.focus();
			$("#span_phone").css("display", "block");
			return false;
					
		}  else if(!re_tel.test(phone)){
			uphone.focus();
			return false;
		}
		
		if(email == ""){
			uemail.focus();
			$("#span_email").css("display" , "block");
			return false;
		}
	 	
	 	
	 	
	 		
	 	
	 	
	 	
		form.submit();
		

	});


	
	
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
</head>
<body>

	<%@include file="header.jsp"%>


	<span class=signRegister>회원수정 페이지 입니다.</span>

	
		<form action ="RegisterUpdate" id = formid name ="formid" method = "post" onReset = "clearForm() ">
	
	<div class="div_input" id="register_id">
			<table id = "table_id" style ="height:481px;">
			
				
				<tr>
					<td><span id="">아이디 : </span></td>
					<td><input type="text" placeholder="아이디" class="input_register" id= "input_id" value ="${sessionScope.loginUser.shopid}" 
					name = "name_id"  readonly>
					<span id="span_id" class = "span_ck">아이디를 입력하세요</span>
					</td>
				</tr>

				<tr>
					<td><span id="">비밀번호 : </span></td>
					<td><input type="password" placeholder="비밀번호" class="input_register" id="input_pw" value = "${sessionScope.loginUser.shoppw}"
					name = "name_pw" >
					<span id="span_pw" class = "span_ck">비밀번호를 입력하세요</span>
					</td>
				</tr>

				<tr>
					<td><span>비밀번호확인 : </span></td>
					<td><input type="password" placeholder="비밀번호 확인"	class="input_register" id="input_pw1" value = "${sessionScope.loginUser.shoppw}" >
					<span id="span_pw1" class = "span_ck">비밀번호를 입력하세요</span>
					</td>
				</tr>

				<tr>
					<td><span id="">이름 : </span></td>
					<td><input type="text" placeholder="이름" class="input_register"	 id="input_name" value = "${sessionScope.loginUser.shopname}" 
					name = "name_name">
					<span id="span_name" class = "span_ck">이름를 입력하세요</span>
					</td>
				</tr>

				<tr>
					<td><span id="">주소 : </span></td>
					<td><%-- <input type="text" placeholder="주소" class="input_register"	id="input_addr" value = "${sessionScope.loginUser.shopaddr}" name = "name_addr"> --%>
			
					<input type="text" id="sample6_postcode" placeholder="우편번호" class="input_register" name = "name_zip" readonly  value = "${sessionScope.loginUser.shopzip}">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="input_register"  id="addr_button" ><br><br>				
					<input type="text" id="sample6_address" placeholder="주소" class="input_register" name = "name_addr" readonly value = "${sessionScope.loginUser.shopaddr}" ><br><br>
						
					<span id="span_postcode" class = "span_ck">주소찾기를 이용하세요</span>				
					<input type="text" id="sample6_address2" placeholder="상세주소" class="input_register" name = "name_addr1" value = "${sessionScope.loginUser.shopaddr1}">
					<span id="span_addr1" class = "span_ck">상세주소를 입력하세요</span> 
			
					</td>
				</tr>

				<tr>
					<td><span id="">휴대폰 : </span></td>
					<td><input type="text" placeholder="휴대폰" class="input_register" id="input_phone" value = "${sessionScope.loginUser.shopphone}" 
					name = "name_phone">
					<span id="span_phone" class = "span_ck">휴대폰번호를 입력하세요</span>
					<span id="span_phone2" class = "span_ck">숫자만 입력하세요</sapn>
					</td>
				</tr>

				<tr>
					<td><span id="">이메일 : </span></td>
					<td><input type="text" placeholder="Email"	class="input_register" id="input_email" value = "${sessionScope.loginUser.shopemail}"
					name = "name_email">
					<span id="span_email" class = "span_ck">이메일주소를 입력하세요</span>
					</td>
				</tr>
			</table>
	
				<div class = "div_index">
					<a href="#" class = "btn_index btn13" id ="btn1">수정</a>
					<a href="ShoppingIndex" class = "btn_index" id ="btn2">취소</a></div>

	
	</div>
	
		</form>



</body>
</html>