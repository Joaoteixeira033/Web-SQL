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
                <li><a href="marcacoes.jsp">Marcações</a></li>
                <li><a href="cliente.jsp">Cliente</a></li>
                <li><a href="stock.jsp">Stock</a></li>
                <li><a href="pagamento">Pagamento</a></li>
                <li><a href="index.jsp" style="margin-left: 390px; color: red; font-size: 15px ;">Terminar sessão</a></li>

            </ul>

        </nav>
        <main>
            <div class="select">
                <a style="font-size: 20px;">Selecionar:</a><br>
            </div>

            <div class="table" style="margin-top: 20px; margin-left: 200px; overflow: scroll;">
              <table>
                <tr>
                <td colspan="2">Reparação</td>
                </tr>
                <tr>
                  <td>Trocar Pneus</td>
                  <td><input type="checkbox"></td>
                  </tr>
                  <tr>
                    <td>Trocar oleo</td>
                    <td><input type="checkbox"></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><input type="checkbox"></td>
                      </tr>
                      <tr>
                        <td></td>
                        <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                          <td></td>
                          <td><input type="checkbox"></td>
                          </tr>
                          <tr>
                            <td></td>
                            <td><input type="checkbox"></td>
                            </tr>
                            <tr>
                              <td></td>
                              <td><input type="checkbox"></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td><input type="checkbox"></td>
                                </tr>
                                <tr>
                            <td></td>
                            <td><input type="checkbox"></td>
                            </tr>
              </table>
            </div>
                   
                      
              </div>

              <div class="contri">
              <a style="font-size: 20px;">Selecionar forma de pagamento:</a><br><br>
              <input type="radio">Multibanco <br>
              <input type="radio">Dinheiro
              </div>
            <div class="impress">
              <img src="impress-removebg-preview.png" height="70px" width="70px" style="border: 2px solid black;">

            </div>
        </main>
        </div>
    </body>
</html>







