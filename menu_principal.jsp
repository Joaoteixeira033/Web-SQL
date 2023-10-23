<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-PT">
<head>
    <title>KDODGE</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="divisoes.css">
</head>
<body>
<header>
    <img src="logo-removebg-preview.png" height="50px" width="120px">
</header>
<nav>
    <ul>
        <li><a>Home</a></li>
        <li><a href="marcacoes.jsp">Marcações</a></li>
        <li><a href="cliente.jsp">Cliente</a></li>
        <li><a href="stock.jsp">Stock</a></li>
        <li><a href="pagamento.jsp">Pagamento</a></li>
        <li><a href="index.jsp" style="margin-left: 390px; color: red; font-size: 15px ;">Terminar sessão</a></li>
    </ul>
</nav>
<div class="botoes">
    <button class="botao"><a href="fzrmarcacao.jsp" style="text-decoration:none; color: black;">Fazer Marcação</a></button><br>
    <button class="botao"><a href="cliente.jsp" style="text-decoration:none; color: black;">Ficha Cliente</a></button><br>
    <button class="botao"><a href="stock.jsp" style="text-decoration:none; color: black;">Consultar Stock</a></button><br>
    <button class="botao"><a href="pagamento.jsp" style="text-decoration:none; color: black;">Emitir Fatura</a></button>
</div>
<div class="table">
    <table>
        <tr>
            <td colspan="3"><p style="text-align: center;">Marcações</p></td>
        </tr>
        <%
            Connection connection = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/projeto", "root", "Jj24062003?");
                Statement statement = connection.createStatement();
                String sql = "SELECT * FROM servicos";
                ResultSet resultSet = statement.executeQuery(sql);

                while (resultSet.next()) {
                    String data = resultSet.getString("data");
                    String hora = resultSet.getString("hora");
                    String nomeCliente = resultSet.getString("nomeCliente");
        %>
        <tr>
            <td colspan="3"><%= data %></td>
        </tr>
        <tr>
            <td><%= hora %></td>
            <td colspan="2"><%= nomeCliente %></td>
        </tr>
        <%
                }
                resultSet.close();
                statement.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            } finally {
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
        <tr>
            <td colspan="3"><p style="text-align: right; margin-right: 20px;"><a style="text-decoration:none; color: black" href="marcacoes.jsp" >Clique para ver mais detalhes</a></p></td>
        </tr>
    </table>
</div>
</body>
</html>







