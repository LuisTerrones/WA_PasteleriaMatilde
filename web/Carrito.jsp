<%-- 
    Document   : Carrito
    Created on : 31-ene-2021, 19:09:38
    Author     : Sebastián
--%>

<%@page import="matilde.model.Carrito"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="ScriptStyle.jsp" %>
        <link href="Styles/css/sections.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/sin-flechas-number.css" rel="stylesheet" type="text/css"/>
        <title>Carrito</title>
    </head>
    <body>
        <div class="container">
            <section class="mt-2 mb-5">
                <%@include file="navbar.jsp" %>
                <h1>Carrito de compras <i class="fa fa-shopping-cart" aria-hidden="true"></i></h1>
                <div class="row mt-3 mb-5">
                    <div class="col-lg-8">
                        <div class="table-responsive shadow-lg p-3 mb-5 bg-white rounded">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Producto</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col">Subtotal</th>
                                        <th scope="col">Acción</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        List<Carrito> lstcarrito = (List<Carrito>)request.getAttribute("lstcarrito");
                                        for(Carrito objcar:lstcarrito){
                                    %>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td><%=objcar.getNombre()%></td>
                                        <td>S/. 75.00</td>
                                        <td><input class="form-control" type="number" value="1"></td>
                                        <td>S/. 75.00</td>
                                        <td><a class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card ">
                            <div class="card-header bg-negro">
                                <h5 class="card-title text-white text-center">Generar Compra</h5>
                            </div>
                            <div class="card-body">
                                <label>Subtotal:</label>
                                <input class="form-control" readonly="" type="text" value="">
                                <label>Descuento:</label>
                                <input class="form-control" readonly="" type="text" value="">
                                <label>Total:</label>
                                <input class="form-control" readonly="" type="text" value="">
                            </div>
                            <div class="card-footer">
                                <a class="btn btn-success w-100">Realizar pago <i class="fa fa-money" aria-hidden="true"></i></a>
                                <a class="btn btn-primary w-100 mt-2">Generar Compra <i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

            </section>

        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
