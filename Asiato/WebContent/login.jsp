<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <link href="css/login.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="asiato">あしあと</div>
    <div class="form_div">
    <form action="loginProc.jsp" method="post">
        <input type="text" class="id" name="id" placeholder="아이디" required="required"> <br>
        <input type="password" class="pwd" name="pwd" placeholder="비밀번호" required="required"> <br>
        <input type="submit" class="login_btn" value="로그인"> <br>
        <input type="submit" class="sign_btn" value="회원가입"> <br>
        <button class="search_btn">아이디/비밀번호 찾기 ></button>
        </form>
    </div>
</body>

</html>