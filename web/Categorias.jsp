<%-- 
    Document   : Categorias
    Created on : 26-ene-2021, 14:51:59
    Author     : Sebastián
--%>

<%@page import="matilde.model.Categoria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="ScriptStyle.jsp" %>
        <link href="Styles/css/sections.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/css/footer.css" rel="stylesheet" type="text/css"/>
        <title>Compras</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <%            List<Categoria> lstcat = (List<Categoria>) request.getAttribute("lstcat");
        %>
        <section>
            <div class="container mt-4 mb-4">
                <h1 class="text-center">Categorías de la pastelería 'Doña Matilde'</h1>
                <p class="text-muted">Puede seleccionar la categoría que desee, tenemos productos de muy buena calidad.</p>
                <div class="row">
                    <%
                        for (Categoria objcat : lstcat) {
                    %>
                    <div class="col-lg-3">
                        <div class="card mt-3 shadow bg-white rounded">
                            <img src="<%=objcat.getRuta_img()%>" class="card-img-top" alt="image_<%=objcat.getNom_cat()%>">
                            <div class="card-body">
                                <h5 class="card-title"><%=objcat.getNom_cat()%></h5>
                                <p class="card-text"><%=objcat.getDescripcion()%></p>
                                <a href="Productos" class="btn btn-primary">Muestrame más</a>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
