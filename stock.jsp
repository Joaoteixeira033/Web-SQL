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
                <li><a href="#stock">Stock</a></li>
                <li><a href="pagamento.jsp">Pagamento</a></li>
                <li><a href="index.jsp" style="margin-left: 390px; color: red; font-size: 15px ;">Terminar sessão</a></li>

            </ul>

        </nav>
        <main>
            <div class="marcar">
                Procurar peças: <input type="search" name="search" placeholder="Procurar peças" style="width: 350px; height: 40px;">
            </div>

            <div class="table1" >
                <table style="width: 1000px;">
                    <tr>
                        <td><h3>Peças</h3></td><td><h3>Quantidade em Stock</h3></td><td><h3>Falhas no Stock</h3></td><td><h3>Pedir peça</h3></td>
                    </tr>
                    <tr>
                        <td style="width: 300px; text-align: left; padding-left: 10px;">Pneus</td><td style="width: 150px"><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px; text-align: left; padding-left: 10px;">Jantes</td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px;"></td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px;"></td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px;"></td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px;"></td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px;"></td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px;"></td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
                    <tr>
                        <td style="width: 150px;"></td><td><input type="number"></td><td><input type="checkbox"></td><td><button>+</button></td>
                    </tr>  
 

                </table>
            </div>
        </main>
        </div>
    </body>
</html>







