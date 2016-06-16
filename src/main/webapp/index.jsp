<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link href="css/style.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <title>IMC</title>
    </head>
    <body>
        <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="row centered">
                <a><h3>Calculadora IMC</h3></a>
                <br>
            </div>
        </div>
    </nav>
    <!-- LINHA EM AZUL CLARO -->
    <div id="blue">
        <div class="container-fluid">
            <div class="row">
                <br>
            </div>
        </div>
    </div>
    <!-- CONTEÚDO -->
    <div id="service">
        <div class="container">
            <div class="row centered">
                <div class="col-md-12">

                    <a><i class="fa fa-calculator fa-5x" aria-hidden="true"></i></a>
                    <br>
                    <br>
                    <form method="post" action="IMC">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-1 col-md-offset-3">
                                    <label class="control-label" for="altura">Altura:  </label>
                                </div>
                                <div class="col-md-4">
                                    <input class="form-control" placeholder="Digite uma altura válida, em Metros.  Ex.: 1.80 "type="text" id="altura" name="altura" />
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-1 col-md-offset-3">
                                    <label class="control-label" for="peso">Peso:  </label>
                                </div>
                                <div class="col-md-4">
                                    <input class="form-control" placeholder="Digite um peso válido, em Kg.  Ex.: 70"type="text" id="peso" name="peso" />
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-1 col-md-offset-3">
                                    <label class="control-label" for="sexo">Sexo:  </label>
                                </div>
                                <div class="col-md-4">
                                    <select class="form-control" name="sexo" id="sexo">
                                        <option value="masculino">Masculino</option>
                                        <option value="feminino">Feminino</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="container-fluid">
                                <div class="row">
                                    <p><button class="btn btn-theme">Calcular</button></p>
                                </div>
                            </div>
                    </form>  
                    <br>
                    <%
                        String imcString = request.getParameter("imc");
                        String resultado = request.getParameter("resultado");

                        if (imcString != null && resultado != null) {
                            double imc = Float.parseFloat(imcString);
                            out.print("<b><h4>IMC: " + imc + "</h4></b><br><h1>" + resultado + "</h1>");
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- RODAPÉ -->
<div id="footerwrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4"></div>
            <div class="col-lg-4"></div>
        </div>
    </div>
</div>
</div>
</body>
</html>
