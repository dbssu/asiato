<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en" class="">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>あしあと</title>
  <link href="css/sandbox.css" rel="stylesheet">
  <link href="css/drawer.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <style>

  </style>
</head>
<body class="drawer drawer--left drawer--navbarTopGutter">
<%
	String contentPage = request.getParameter("contentpage");
%>
  <header class="drawer-navbar drawer-navbar--fixed" role="banner">
    <div class="drawer-container">
      <div class="drawer-navbar-header">
        <a class="drawer-brand" href="map.jsp">あしあと</a>
        <button type="button" class="drawer-toggle drawer-hamburger">
          <span class="sr-only"></span>
          <span class="drawer-hamburger-icon"></span>
        </button>
      </div>

      <nav class="drawer-nav" role="navigation">
        <ul class="drawer-menu">
        <li><a class="drawer-menu-item" href="information.jsp">설명서</a></li>
          <li><a class="drawer-menu-item" href="missionChk.jsp">미션확인</a></li>
          <li><a class="drawer-menu-item" href="map.jsp">지도</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <!-- content -->
  <main role="main" class="main">
    <section class="item">
        <jsp:include page="<%=contentPage%>" flush="false"/>
    </section>
  </main>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.2.0/iscroll.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/drawer.min.js" charset="utf-8"></script>
  <script>
    $(document).ready(function() {
      $('.drawer').drawer();
    });
  </script>
</body>
</html>