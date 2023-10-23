<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%@ include file="alterardados_2.jsp" %>

<!DOCTYPE html>
<html lang="pt-PT">
<head>
    <title>KDODGE</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="divisoes.css">
    <style>
        table {
            border-collapse: collapse;
        }
        table td {
            padding: 5px;
        }
    </style>
</head>
<body>
<header>
    <img src="logo-removebg-preview.png" height="50px" width="120px">
</header>
<nav>
    <ul>
        <li><a href="menu_principal.jsp">Home</a></li>
        <li><a href="marcacoes.jsp">Marcações</a></li>
        <li><a href="cliente.jsp">Cliente</a></li>
        <li><a href="stock.jsp">Stock</a></li>
        <li><a href="pagamento.jsp">Pagamento</a></li>
        <li><a href="index.jsp" style="margin-left: 390px; color: red; font-size: 15px ;">Terminar sessão</a></li>
    </ul>
</nav>
<main>
    <div class="dois">
        <button style="width: 70px; height: 30px; margin-top: 50px;"><a href="cliente.jsp" style="text-decoration: none; color: black;">Voltar</a></button>
        <br>
        <div class="caixa">
            <div class="form">Dados pessoais e da viatura:</div>
            <form method="post" action="cliente.jsp">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 50%; vertical-align: top;">
                            <div class="name">Nome: <input type="text" name="nome" placeholder="Eduardo Pascoal Caetano" style="width: 400px;"></div>
                            <div class="name">Telemóvel: <input type="text" name="telemovel" placeholder="951265471"></div>
                            <div class="name">Morada: <input type="text" name="morada" placeholder="Rua Principal, 123"></div>
                            <div class="name">NIF: <input type="text" name="nif" placeholder="123456789"></div>
                        </td>
                        <td style="width: 50%; vertical-align: top;">
                            <div class="name">Marca: <input type="text" name="marca" placeholder="BMW" style="width: 90px;"></div>
                            <div class="name">Ano: <input type="text" name="ano" placeholder="2023" style="width: 90px;"></div>
                            <div class="name">Matrícula: <input type="text" name="matricula" placeholder="AB-12-CD"></div>
                        </td>
                    </tr>
                </table>
                <button class="botazinho" type="submit">Guardar</button>
            </form>
        </div>
    </div>
</main>

<%
    if (request.getMethod().equals("POST")) {
        // Obter os valores dos campos do formulário
        String nome = request.getParameter("nome");
        String telemovel = request.getParameter("telemovel");
        String morada = request.getParameter("morada");
        String nif = request.getParameter("nif");
        String marca = request.getParameter("marca");
        String ano = request.getParameter("ano");
        String matricula = request.getParameter("matricula");

        // Inserir os dados do cliente na tabela "cliente"
        try {
            Connection conn = (Connection) request.getAttribute("conn");
            String insertClienteQuery = "INSERT INTO cliente (nif, nome, telemovel, morada) VALUES (?, ?, ?, ?)";
            PreparedStatement insertClienteStmt = conn.prepareStatement(insertClienteQuery);
            insertClienteStmt.setString(1, nif);
            insertClienteStmt.setString(2, nome);
            insertClienteStmt.setString(3, telemovel);
            insertClienteStmt.setString(4, morada);
            int clienteRows = insertClienteStmt.executeUpdate();
            if (clienteRows > 0) {
                System.out.println("Dados do cliente inseridos com sucesso.");
            }
        } catch (SQLException e) {
            System.out.println("Erro ao inserir dados do cliente: " + e.getMessage());
        }

        // Inserir os dados do veículo na tabela "veiculo"
        try {
            Connection conn = (Connection) request.getAttribute("conn");
            String insertVeiculoQuery = "INSERT INTO veiculo (matricula, marca, ano, cliente) VALUES (?, ?, ?, ?)";
            PreparedStatement insertVeiculoStmt = conn.prepareStatement(insertVeiculoQuery);
            insertVeiculoStmt.setString(1, matricula);
            insertVeiculoStmt.setString(2, marca);
            insertVeiculoStmt.setInt(3, Integer.parseInt(ano));
            insertVeiculoStmt.setInt(4, Integer.parseInt(nif));
            int veiculoRows = insertVeiculoStmt.executeUpdate();
            if (veiculoRows > 0) {
                System.out.println("Dados do veículo inseridos com sucesso.");
            }
        } catch (SQLException e) {
            System.out.println("Erro ao inserir dados do veículo: " + e.getMessage());
        }
    }
%>

</body>
</html>



