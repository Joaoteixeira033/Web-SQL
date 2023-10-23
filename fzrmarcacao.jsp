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
        <li><a href="cliente.jsp">Cliente</a></li>
        <li><a href="stock.jsp">Stock</a></li>
        <li><a href="pagamento.jsp">Pagamento</a></li>
        <li><a href="index.jsp" style="margin-left: 390px; color: red; font-size: 15px;">Terminar sessão</a></li>
    </ul>
</nav>
<main>
    <div class="marcacoes"><br>
        NIF: <input style="height: 25px; width: 247px;" type="text" id="nifInput" oninput="fetchPersonName()"><br><br>
        Nome: <input style="height: 25px; width: 247px;" type="text" id="nomeInput" disabled><br><br><br><br><br>
    </div>
    <div class="contmarc"><br>
        Dia: <input type="date" id="dataInput" name="data" onchange="fetchAvailability()"><br>
        <br>
        <table id="availabilityTable">
            <tr>
                <td colspan="4">Disponibilidade</td>
            </tr>
            <!-- Os dados da tabela serão preenchidos dinamicamente -->
        </table>
    </div>
    <div>
        <button style="float: right; margin-top: 510px; margin-right: 100px; height: 50px; width:100px;"><a href="marcacoes.jsp" style="text-decoration: none; color: black">Marcar</a></button>
    </div>
</main>
</body>
<script>
    function fetchPersonName() {
        const nifInput = document.getElementById("nifInput");
        const nomeInput = document.getElementById("nomeInput");

        const nif = nifInput.value;

        // Chamar a API ou realizar a consulta à base de dados para obter o nome da pessoa associada ao NIF
        fetch(`/fetchPersonName.jsp?nif=${nif}`)
            .then(response => response.text())
            .then(nome => {
                nomeInput.value = nome;
            })
            .catch(error => {
                console.error('Ocorreu um erro ao buscar o nome da pessoa:', error);
            });
    }

    function fetchAvailability() {
        const dataInput = document.getElementById("dataInput");
        const availabilityTable = document.getElementById("availabilityTable");

        const data = dataInput.value;

        // Chamar a API ou realizar a consulta à base de dados para obter a disponibilidade do dia
        fetch(`/fetchAvailability.jsp?data=${data}`)
            .then(response => response.json())
            .then(availability => {
                // Limpar a tabela antes de preenchê-la novamente
                availabilityTable.innerHTML = "<tr><td colspan='4'>Disponibilidade</td></tr>";

                // Preencher a tabela com base na disponibilidade obtida
                availability.forEach(row => {
                    const tr = document.createElement("tr");
                    const tdTime = document.createElement("td");
                    const tdColspan = document.createElement("td");
                    const tdName = document.createElement("td");
                    const tdCheckbox = document.createElement("td");
                    tdTime.textContent = row.time;
                    tdColspan.setAttribute("colspan", "2");
                    tdColspan.textContent = row.name ? row.name : "";
                    tdCheckbox.innerHTML = `<input type='checkbox' onclick='markTime(this, "${row.time}", "${row.name}");'>`;

                    tr.appendChild(tdTime);
                    tr.appendChild(tdColspan);
                    tr.appendChild(tdName);
                    tr.appendChild(tdCheckbox);

                    availabilityTable.appendChild(tr);
                });
            })
            .catch(error => {
                console.error('Ocorreu um erro ao buscar a disponibilidade:', error);
            });
    }

    function markTime(checkbox, time, name) {
        const dataInput = document.getElementById("dataInput").value;
        const nifInput = document.getElementById("nifInput").value;
        const nomeInput = document.getElementById("nomeInput").value;

        if (checkbox.checked) {
            // Marcar horário na base de dados
            fetch(`/marcar.jsp?data=${dataInput}&nif=${nifInput}&nome=${nomeInput}&time=${time}`)
                .then(response => {
                    if (response.ok) {
                        console.log('Horário marcado com sucesso!');
                    } else {
                        console.error('Ocorreu um erro ao marcar o horário.');
                    }
                })
                .catch(error => {
                    console.error('Ocorreu um erro ao marcar o horário:', error);
                });
        } else {
            // Desmarcar horário na base de dados
            fetch(`/desmarcar.jsp?data=${dataInput}&nif=${nifInput}&time=${time}`)
                .then(response => {
                    if (response.ok) {
                        console.log('Horário desmarcado com sucesso!');
                    } else {
                        console.error('Ocorreu um erro ao desmarcar o horário.');
                    }
                })
                .catch(error => {
                    console.error('Ocorreu um erro ao desmarcar o horário:', error);
                });
        }
    }
</script>
</html>








