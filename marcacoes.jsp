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
            <img src="logo-removebg-preview.png" height="50px" width="120px">
        </header>
        <nav>
            <ul>
                <li><a href="menu_principal.jsp" >Home</a></li>
                <li><a href="#marcaçoes">Marcações</a></li>
                <li><a href="cliente.jsp">Cliente</a></li>
                <li><a href="stock.jsp">Stock</a></li>
                <li><a href="pagamento.jsp">Pagamento</a></li>
                <li><a href="index.jsp" style="margin-left: 390px; color: red; font-size: 15px ;">Terminar sessão</a></li>

            </ul>

        </nav>
        <main>
            <div class="marcar">
                Data: <input type="date" name="Data">
                <button class="bigbotao"><a href="fzrmarcacao.jsp" style="text-decoration:none; color: black ">Fazer Marcação</a></button>
            </div>

            <div class="table1">
                <table style="width: 1000px;">
                    <tr>
                        <td><h3>Horas</h3></td><td style="width: 1200px;"><h3>Cliente</h3></td><td style="width: 1200px;"><h3>Matricula</h3></td>
                    </tr>
                    <tr>
                        <td>9:30</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr> 
                    <tr>
                        <td>10:00</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>   
                    <tr>
                        <td>10:30</td><td style="text-align: left; padding-left: 10px;">Eduardo Pascoal Caetano</td><td>AB-12-CD</td>
                    </tr> 
                    <tr>
                        <td>11:00</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>   
                    <tr>
                        <td>11:30</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>   
                    <tr>
                        <td>12:00</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>   
                    <tr>
                        <td>12:30</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>   
                    <tr>
                        <td>14:30</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>   
                    <tr>
                        <td>15:00</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>  
                    <tr>
                        <td>15:30</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>  
                    <tr>
                        <td>16:00</td><td style="width: 1200px; text-align: left;  padding-left: 10px;">Jorge Santos Silva</td><td>98-ZX-25</td>
                    </tr>  
                    <tr>
                        <td>16:30</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>  
                    <tr>
                        <td>17:00</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>  
                    <tr>
                        <td>17:30</td><td style="width: 1200px; text-align: left;"></td><td></td>
                    </tr>  
                     

                    
        
                </table>
            </div>
        </main>
        </div>
    </body>
</html>







