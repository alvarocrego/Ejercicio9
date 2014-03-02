<%-- 
    Document   : pagina2
    Created on : 21-oct-2013, 22:30:35
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int numero;
            if (session.getAttribute("contador") == null) {
                session.setAttribute("contador", 0);
                System.out.println("miayu");
            } else {

                numero = (Integer) session.getAttribute("contador");
                session.setAttribute("contador", ++numero);
            }

        %>
        <h1>Pagina 2</h1>
        <p>Numero de recargas:  <%= session.getAttribute("contador")%></p>
        <p><a href="index.jsp">Ir a Pagina 1</a></p>
        <p><a href="servlet">Ir a Servlet</a></p>
    </body>
</html>
