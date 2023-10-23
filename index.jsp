<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-PT">
<head>
    <title>KDODGE</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="divisoes.css">
</head>
<body>
<header>
    <img src="logo-removebg-preview.png" height="125px" width="250px">
</header>
<main>
    <div class="login">
        <h2><a style="margin-left: 100px; margin-left: 170px;">Login</a></h2>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("invalid")) { %>
        <p>Palavra-passe/Nome inválido. Tente novamente.</p>
        <% } %>
        <form action="index_2.jsp" method="POST">
            <a style="margin-left: 25px;">Nome de utilizador: <input type="text" name="username" style="width: 200px"></a>
            <br>
            <br>
            <a style="margin-left: 25px;">Password: <input type="password" name="password" style="width: 200px; margin-left: 62px;" ><br></a>
            <br>
            <button type="submit" style="float: right; margin-right: 20px; height: 30px; width:70px; margin-bottom: 20px;">Entrar</button>
        </form>
        <a href="registo.jsp" style="float: right; margin-right: 20px; height: 30px; width:70px; margin-bottom: 20px;">Registo</a>
    </div>
</main>
</body>
</html>






