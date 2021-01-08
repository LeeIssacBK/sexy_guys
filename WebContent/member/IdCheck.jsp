<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
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
     <input type="text" id="id">
     <button onclick="idCheck()">click</button>
     <span id="result"></span>
</body>
</html>