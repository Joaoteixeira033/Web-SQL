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
    <div class="marcar">
        Procurar: <input type="search" name="search" placeholder="Procurar cliente" style="width: 350px; height: 40px;">
        <button class="bigbotao" style="width: 200px;"><a href="alterardados.jsp">Criar ficha para um novo cliente</a></button><br>
    </div>
    <div class="table1">
        <table style="width: 1000px;">
            <tr>
                <td><h3>Nome do Cliente</h3></td>
                <td><h3>Telemovel</h3></td>
                <td><h3>Ver Perfil</h3></td>
            </tr>
            <%
                // 1. Conectar-se ao banco de dados
                Connection connection = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/projeto", "root", "Jj24062003?");

                    // 2. Executar a consulta SQL
                    Statement statement = connection.createStatement();
                    String sql = "SELECT nome, telemovel FROM cliente";
                    ResultSet resultSet = statement.executeQuery(sql);

                    // 3. Processar os resultados
                    while (resultSet.next()) {
                        String nomeCliente = resultSet.getString("nome");
                        String cartaoCidadao = resultSet.getString("telemovel");
            %>
            <tr>
                <td><%= nomeCliente %></td>
                <td><%= cartaoCidadao %></td>
                <td><a href="vercliente.jsp">Ver Perfil</a></td>
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
</main>
</body>
</html>







