<%-- 
    Document   : pruebaVariablesImpl.jsp
    Created on : 03-oct-2016, 8:54:07
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        La IP de tu ordenador es: <%= request.getRemoteHost() %>
        <br>
        El nombre de tu servidor es: <%= request.getServerName() %>
        <br>
        El puerto del servidor es: <%= request.getServerPort() %>
        <br>
        El protocolo que estas usando es:  <%= request.getProtocol() %>      
    </body>
</html>
