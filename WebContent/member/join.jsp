<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입을 환영합니다!</title>
<link rel="stylesheet" href="../css/join.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/postcode.js"></script>
<script type="text/javascript">
     function idCheck(){
          //jQuery에서 선택자역할
          var idStr = $("#id").val();
          
          $.ajax({
              url : "../idCheckServlet?id="+idStr,
              success : function(data){
                   if(data == "success"){
                        $("#result").text("사용가능한 아이디입니다.");
                   }else if(data == "fail"){
                        $("#result").text("중복된 아이디입니다.");
                   }
              }
          });
     }
</script>
</head>
<body>
	<div class="join_main">
			<fieldset>
				<legend>회원가입</legend>
				<div class="field">
					<label for="id">아이디</label>
					<input type="text" name="id" id="id" placeholder="ID" required/>
					<button onclick="idCheck();">check</button>
					<div class="check_font" id="result"> </div>
				</div>
				<div class="field">
					<label for="pw">비밀번호</label>
					<input type="password" name="pw" id="pw" placeholder="PASSWORD"/>
					<div class="alert" role="alert"></div>
				</div>
					<label for="pwcheck">비밀번호 확인</label>
					<input type="password" name="pwcheck" id="pwcheck" placeholder="CONFIRM PASSWORD"/>
					<div class="alert" role="alert"></div>
				<div class="field">
					<label for="name">이름</label>
					<input type="text" name="name" id="name" />
				</div>
				<div class="field">
					<label for="gender">성별</label>
					<input type="radio" name="gender" value="1" />남자
					<input type="radio" name="gender" value="2" />여자
				</div>
				<div class="field">
					<span>생년월일</span>
					<select name ="yy">
						<option value="#" selected>YY</option>
						<c:forEach var="y" begin="1900" end="2021" step="1">
							<option value="${y}">${y}</option>
						</c:forEach>
					</select>
					<select name ="mm">
						<option value="#" selected>MM</option>
						<c:forEach var="m" begin="1" end="12" step="1">
							<option value="${m}">${m}</option>
						</c:forEach>
					</select>
					<select name ="dd">
						<option value="#" selected>DD</option>
						<c:forEach var="d" begin="1" end="31" step="1">
							<option value="${d}">${d}</option>
						</c:forEach>
					</select>
				</div>
				<div class="field">
					<span>연락처</span>
					<input type="text" name="phone" id="phone" placeholder="숫자만 입력하세요"/>
				</div>
				<div class="field">
					<div>주소입력</div>
					<input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" placeholder="주소"><br>
					<input type="text" id="sample6_detailAddress" placeholder="상세주소">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목">
				</div>
				<div class="field">
					<span>이메일</span>
					<input type="text" name="email" id="email"/>
					<span>@</span>
					<select>
						<option value="#" selected>메일주소</option>
						<option value="naver">naver.com</option>
						<option value="daum">daum.net</option>
						<option value="gmail">gmail.com</option>
						<option value="emwri">직접입력</option>
					</select>
				</div>
			</fieldset>
			<input type="submit" value="가입"/>
			<input type="reset" value="초기화"/>
	</div>
</body>
</html>


