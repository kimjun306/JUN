<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 화페 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>




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
				$("#span_phone").css("display" , "none");
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
	
	$(document).on("click" , "#btn1", function(){
		
		
 
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
		uemail = $("#input_email"),
		uckid = $("#ckuid"),
		uid2 = $("#uid2");
		

		
		var
		 id =  $.trim(uid.val()),
		 pw =  $.trim(upw.val()),
		 repw =  $.trim(urepw.val()),
		 name =  $.trim(uname.val()),
		
		 zip = $.trim(uzip.val()),
		 addr = $.trim(uaddr.val()),
		 addr1 = $.trim(uaddr1.val()), 
		 phone = $.trim(uphone.val()),
		 ckid= $.trim(uckid.val()),
		 uid22 = $.trim(uid2.val()),
		
		 email =  $.trim(uemail.val());
		
	
		

		
		
		if(id == ""){
			uid.focus();
			$("#span_id").css("display", "block");	
			return false;
			
		}else if(!re_id.test(id)){
			uid.focus();
			$("#span_id").text("유효하지 않는 아이디입니다.").css("display" , "block");
		 	return false;
		}
		
		if(pw == ""){
			upw.focus();
			$("#span_pw").css("display" , "block");
			return false;
		}
		
		if(repw == "") {
			urepw.focus();
			$("#span_pw1").css("display" , "block");
			
			return false;
		} else if( repw != pw){
			urepw.focus();
			$("#span_pw1").text("비밀번호는 같아야 합니다").css("display" , "block");
			return false;
		}
		
		if (name == ""){
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
	 		$("#span_addr1").text("반드시 상세주소를 입력하셔야 합니다").css("display" , "blcok");
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
		
	  	if(ckid == "1"){
			uid.focus();			
			$("#span_ckuid").css("display" , "block"); 
			return false; 
	 	} 
	  	if(id != uid22 ){
	  		uid.focus();
	  		$("#span_ckuid").text("아이디가 변경되었습니다. 중복체크를 다시해주세요").css("display" , "block");
	  		
	  		return false;
	  	}
		 
		
		
	
		form.submit();
		
	});
	
	$(document).on("click" , "#duplicate" , function(){
		//새창의 크기
		cw = 550;
		ch = 300;
		//스크린의 크기
		sw = screen.availWidth;
		sh = screen.availHeight;
		//열 창의 포지션
		px = (sw-cw)/2;
		py = (sh-ch)/2;
		
		//검색할 ID 값 받기.
		
		var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식 
		
		var uid = $("#input_id");
		var id =  $.trim(uid.val());
		
	
		
		if(id == ""){
			uid.focus();
			$("#span_id").css("display", "block");	
			return false;
			
		}else{
		
			$("#span_ckuid").css("display" , "none");
			
		
		var url = "IdckAction?ckid=" +id;
		window.open(url, "_blank_1" ,
					"toolbar=no, menubar=no , status=no, scrollbars=no, resizable=no, left=" + px + ", top = " + py + ",width=" + cw + ", height = " + ch); 		
	
		
		
		}
		
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


	<span id="register_span">회원가입 페이지 입니다.</span>
	<div class="div_input" id="register_id">

		<form action ="InsertAction" id = formid name ="form1" method = "post"  onReset = "clearForm() ">
			<table id = "table_id" style="height:481px;">
			
				<tr>	
			
					<td class = "td_class"><span id="">아이디 : </span></td>
					<td class = "td_class"><input type="text" placeholder="등록하실 아이디" class="input_register" id="input_id" name = "name_id">
					<input type = "button" value = "중복확인" id = "duplicate">
					<input type = "hidden" id = "ckuid" name = "ckuid" value="1">
					<input type = "hidden" id = "uid2" name = "uid2" >
					<span id = "span_ckuid" class = "span_ck">중복확인을 눌러 아이디를 확인하세요</span>
					<span id="span_id" class = "span_ck">아이디를 입력하세요</span>
					</td>
				</tr>
					
			
				<tr>
					<td class = "td_class"><span id="">비밀번호 : </span></td>
					<td class = "td_class"><input type="password" placeholder="비밀번호" class="input_register" id="input_pw" name = "name_pw">
					<span id="span_pw" class = "span_ck">비밀번호를 입력하세요</span>
					</td>
				</tr>

				<tr>
					<td class = "td_class"><span>비밀번호확인 : </span></td>
					<td class = "td_class"><input type="password" placeholder="비밀번호 확인"	class="input_register" id="input_pw1" >
					<span id="span_pw1" class = "span_ck">비밀번호를 입력하세요</span>
					</td>
				</tr>

				<tr>
					<td class = "td_class"><span id="">이름 : </span></td>
					<td class = "td_class"><input type="text" placeholder="이름" class="input_register"	 id="input_name" name = "name_name">
					<span id="span_name" class = "span_ck">이름를 입력하세요</span>
					</td>
				</tr>

				<tr>
					<td class = "td_class"><span id="">주소 : </span></td>
					<td class = "td_class"><!-- <input type="text" placeholder="주소" class="input_register"	id="input_addr" name = "name_addr"> -->				
			
					<input type="text" id="sample6_postcode" placeholder="우편번호" class="input_register" name = "name_zip" readonly>
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="input_register"  id="addr_button"  ><br><br>				
					<input type="text" id="sample6_address" placeholder="주소" class="input_register" name = "name_addr" readonly><br><br>
						
						<span id="span_postcode" class = "span_ck">주소찾기를 이용하세요</span>				
					<input type="text" id="sample6_address2" placeholder="상세주소" class="input_register" name = "name_addr1">
					 <span id="span_addr1" class = "span_ck">상세주소를 입력하세요</span> 
					</td>
				</tr>

				<tr>
					<td class = "td_class"><span id="">휴대폰 : </span></td>
					<td class = "td_class"><input type="text" placeholder="휴대폰" class="input_register" id="input_phone" name = "name_phone">
					<span id="span_phone" class = "span_ck">휴대폰번호를 입력하세요</span>
					<span id="span_phone2" class = "span_ck">숫자만 입력하세요</sapn>
					</td>
				</tr>

				<tr>
					<td class = "td_class"><span id="">이메일 : </span></td>
					<td class = "td_class"><input type="text" placeholder="Email" class="input_register" id="input_email" name = "name_email">
					<span id="span_email" class = "span_ck">이메일주소를 입력하세요</span>
					</td>
				</tr>
			</table>
	<div class = "div_index">
	<div>
	<a href="#" class = "btn_index" id ="btn1">등록</a>
	<a href="header.jsp" class = "btn_index" id ="btn2">취소</a></div>
	</div>
	

	</form>

	</div>



</body>
</html>