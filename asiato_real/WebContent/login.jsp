<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <link href="css/login.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="asiato">��������</div>
    <div class="form_div">
    <form action="loginProc.jsp" method="post">
        <input type="text" class="id" name="id" placeholder="���̵�" required="required"> <br>
        <input type="password" class="pwd" name="pwd" placeholder="��й�ȣ" required="required"> <br>
        <input type="submit" class="login_btn" value="�α���"> <br>
        <input type="submit" class="sign_btn" value="ȸ������"> <br>
        <button class="search_btn">���̵�/��й�ȣ ã�� ></button>
        </form>
    </div>
</body>

</html>