<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입을 환영합니다!</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/join.css" />
<link href="https://fonts.googleapis.com/css?family=Raleway:700" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/postcode.js"></script>
<script src="../js/bootstrap.js"></script>

<script>
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
	<div class="container">
		<form method="post" action="./join_ok">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="text-align:center;" colspan="3"><h2>회원가입</h2></th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td style="width: 110px;"><h5><label for="userID">아이디</label></h5></td>
					<td><input class="form-control" type="text" name="userID" id="userID" placeholder="아이디를 입력해주세요." maxLength="20" required/></td>
					<td style="width: 110px;"><button style="background-color:#00B8FF; border-color:#00B8FF;" class="btn btn-primary" type="button" onclick="idCheck();">중복확인</button></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="password1">비밀번호</label></h5></td>
					<td colspan="2"><input class="form-control" type="password" name="password1" id="password1" placeholder="비밀번호를 입력해주세요." maxLength="20" onkeyup="passCheck();"/></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="password2">비밀번호 확인</label></h5></td>
					<td colspan="2"><input class="form-control" type="password" name="password2" id="password2" placeholder="비밀번호 확인을 입력해주세요." maxLength="20"  onkeyup="passCheck();"/></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="userName">이름</label></h5></td>
					<td colspan="2"><input class="form-control" type="text" name="userName" id="userName" placeholder="이름을 입력해주세요." maxLength="10" /></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="gender">성별</label></h5></td>
					<td colspan="2">
						<nav>
							<input id="male" type="radio" name="gender" value="1" checked/><label class="male" for="male">남자</label>
							<input id="female" type="radio" name="gender" value="2" /><label class="female" for="female">여자</label>
						</nav>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="yy" class="form-label">생년월일</label></h5></td>
					<td colspan ="2">
					<select class="form-select" style="width:30%; display:inline;"  name ="yy">
						<option value="" selected>YY</option>
						<c:forEach var="y" begin="1900" end="2021" step="1">
							<option value="${y}">${y}</option>
						</c:forEach>
					</select>
					&nbsp;&nbsp;
					<select class="form-select" style="width:30%; display:inline;" name ="mm">
						<option value="" selected>MM</option>
						<c:forEach var="m" begin="1" end="12" step="1">
							<option value="${m}">${m}</option>
						</c:forEach>
					</select>
					&nbsp;&nbsp;
					<select class="form-select" style="width:30%; display:inline;" name ="dd">
						<option value="" selected>DD</option>
						<c:forEach var="d" begin="1" end="31" step="1">
							<option value="${d}">${d}</option>
						</c:forEach>
					</select>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="phone">연락처</label></h5></td>
					<td colspan="2">
							<input style="width:30%; display:inline;" class="form-control"  type="text" name="phone1" id="phone1" placeholder="###"/> - 
							<input style="width:30%; display:inline;" class="form-control"  type="text" name="phone2" id="phone2" placeholder="####"/> - 
							<input style="width:30%; display:inline;" class="form-control"  type="text" name="phone3" id="phone3" placeholder="####"/>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="sample6_address">주소입력</label></h5></td>
					<td colspan="2">
						<div>
							<input style="width:30%; display:inline;" class="form-control" type="text" id="sample6_postcode" placeholder="우편번호">
							<input style="width:20%; background-color:#00B8FF; border-color:#00B8FF;" class="btn btn-primary" style="width:150px;" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
							<input class="form-control" style="width:95%; margin:6px;" type="text" id="sample6_address" placeholder="주소">
							<input class="form-control" style="width:45%; display:inline; margin:3px;" type="text" id="sample6_detailAddress" placeholder="상세주소">
							<input class="form-control" style="width:45%; display:inline; margin:3px;" type="text" id="sample6_extraAddress" placeholder="참고항목">
						</div>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5><label for="email">이메일</label></h5></td>
					<td colspan="2">
						<input class="form-control" style="width:45%; display:inline;" type="text" name="email" id="email"/>&nbsp;&nbsp;@&nbsp;&nbsp;
						<select class="form-select" style="width:45%; display:inline;">
							<option value="#" selected>메일주소</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.net</option>
							<option value="gmail">gmail.com</option>
							<option value="self">직접입력</option>
						</select>
					</td>
				</tr>
				</tbody>
				<tr>
					<td colspan="3">
						<button class="w-100 btn btn-primary btn-lg" style="background-color:#00B8FF; border-color:#00B8FF;" type="submit">가입하기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>


