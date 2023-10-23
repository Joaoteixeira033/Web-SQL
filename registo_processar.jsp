<%--
  Created by IntelliJ IDEA.
  User: texei
  Date: 12/06/2023
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
  // Parâmetros de Conexão
  String url = "jdbc:mysql://localhost:3306/projeto";
  String username = "root";
  String password = "Jj24062003?";

  // Dados do Formulário
  String nome = request.getParameter("nome");
  String passwordd = request.getParameter("password");

  // Conexão com o Banco de Dados
  try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(url, username, password);

    // Inserção do Registro na Tabela
    String sql = "INSERT INTO usuarios (username, password) VALUES (?, ?)";
    PreparedStatement statement = conn.prepareStatement(sql);
    statement.setString(1, nome);
    statement.setString(2, passwordd);
    statement.executeUpdate();

    // Redirecionamento para a Página de Sucesso
    response.sendRedirect("index.jsp");

    conn.close();
  } catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("registo.jsp?error=invalid");
  }
%>


