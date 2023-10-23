<%--
  Created by IntelliJ IDEA.
  User: texei
  Date: 13/06/2023
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
  String url = "jdbc:mysql://localhost:3306/projeto";
  String user = "root";
  String password = "Jj24062003?";

  try {
    // Conectar ao banco de dados
    Connection conn = DriverManager.getConnection(url, user, password);
    // Definir a conexão como atributo de solicitação para ser usado no outro arquivo JSP
    request.setAttribute("conn", conn);
  } catch (SQLException e) {
    System.out.println("Erro ao conectar ao banco de dados: " + e.getMessage());
  }
%>

