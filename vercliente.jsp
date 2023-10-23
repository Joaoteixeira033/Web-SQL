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
        <li><a href="menu_principal.jsp">Home</a></li>
        <li><a href="marcacoes.jsp">Marcações</a></li>
        <li><a href="#cliente">Cliente</a></li>
        <li><a href="stock.jsp">Stock</a></li>
        <li><a href="pagamento.jsp">Pagamento</a></li>
        <li><a href="index.jsp" style="margin-left: 390px; color: red; font-size: 15px;">Terminar sessão</a></li>
    </ul>
</nav>
<main>
    <div id="cliente" class="table1" style="text-align: center;">
        <table style="width: 1000px; margin: 0 auto;">
            <tr>
                <td colspan="2"><h3>Nome do Cliente</h3></td>
                <td colspan="2"><h3>Telemovel</h3></td>
                <td colspan="2"><h3>Email</h3></td>
                <td colspan="2"><h3>Morada</h3></td>
                <td><h3>NIF</h3></td>
            </tr>
            <%
                Connection connection = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/projeto", "root", "Jj24062003?");
                    Statement statement = connection.createStatement();
                    String sql = "SELECT * FROM cliente WHERE nif = '123456789'"; // Altere o valor '123456789' para o NIF desejado
                    ResultSet resultSet = statement.executeQuery(sql);

                    while (resultSet.next()) {
                        String nomeCliente = resultSet.getString("nome");
                        String telemovel = resultSet.getString("telemovel");
                        String email = resultSet.getString("email");
                        String morada = resultSet.getString("morada");
                        String nif = resultSet.getString("nif");
            %>
            <tr>
                <td colspan="2"><%= nomeCliente %></td>
                <td colspan="2"><%= telemovel %></td>
                <td colspan="2"><%= email %></td>
                <td colspan="2"><%= morada %></td>
                <td><%= nif %></td>
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
        </table>
    </div>
    <div class="table2" style="text-align: center;">
        <table style="width: 1000px; margin: 0 auto;">
            <tr>
                <td><h3>Matrícula</h3></td>
                <td><h3>Marca</h3></td>
                <td><h3>Ano</h3></td>
            </tr>
            <%
                Connection connection2 = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    connection2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/projeto", "root", "Jj24062003?");
                    Statement statement2 = connection2.createStatement();
                    String sql2 = "SELECT * FROM veiculo WHERE cliente = '123456789'"; // Altere o valor '123456789' para o NIF desejado
                    ResultSet resultSet2 = statement2.executeQuery(sql2);

                    while (resultSet2.next()) {
                        String matricula = resultSet2.getString("matricula");
                        String marca = resultSet2.getString("marca");
                        int ano = resultSet2.getInt("ano");
            %>
            <tr>
                <td><%= matricula %></td>
                <td><%= marca %></td>
                <td><%= ano %></td>
            </tr>
            <%
                    }
                    resultSet2.close();
                    statement2.close();
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                } finally {
                    if (connection2 != null) {
                        try {
                            connection2.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }
            %>
        </table>
    </div>
</main>
</body>
</html>






