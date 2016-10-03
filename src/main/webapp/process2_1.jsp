<%-- 
    Document   : process2_1
    Created on : 03-oct-2016, 10:01:20
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.UsuarioBean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body bgcolor="#ffffcc">
        <% if ((request.getParameter("name")==null
                && request.getParameter("email")== null)
                ||
                (request.getParameter("name").equals("")
                && request.getParameter("email").equals(""))
                )
        {%>
        Complete este formulario
        <form method="POST" action="process2_1.jsp">
            Su nombre: <input type="text" name="name" size=26><BR>
            Su email: <input type="text" name="email" size=26><BR>
            <input type="submit" value="Enviar">
        </form>
        <% }else{ %> <%--scriptlet JSP --%>
            <% String nombre, email; %>
            <%
                nombre = request.getParameter("name");
                email = request.getParameter("email");
            %>
            <jsp:setProperty name="usuario" property="name" value="<%=nombre%>"/>
            <jsp:setProperty name="usuario" property="email" value="<%=email%>"/>
            <jsp:forward page="/process2_2.jsp" ></jsp:forward>
                             
        <% } %>
        
    </body>
    </body>
</html>
