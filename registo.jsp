<%--
  Created by IntelliJ IDEA.
  User: texei
  Date: 04/06/2023
  Time: 09:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-PT">
<head>
    <title>KDODGE - Registo</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="divisoes.css">
</head>
<body>
<header>
    <img src="logo-removebg-preview.png" height="125px" width="250px">
</header>
<main>
    <div class="login">
        <h2><a style="margin-left: 100px; margin-left: 170px;">Registo</a></h2>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("invalid")) { %>
        <p>Erro no registo. Por favor, verifique os dados e tente novamente.</p>
        <% } %>
        <form action="registo_processar.jsp" method="POST">
            <a style="margin-left: 25px;">Nome: <input type="text" name="nome" style="width: 200px"></a>
            <br>
            <br>
            <a style="margin-left: 25px;">Password: <input type="password" name="password" style="width: 200px"></a>
            <br>
            <br>
            <button type="submit" style="float: right; margin-right: 20px; height: 30px; width:70px; margin-bottom: 20px;">Registar</button>
        </form>
    </div>
</main>
</body>
</html>


