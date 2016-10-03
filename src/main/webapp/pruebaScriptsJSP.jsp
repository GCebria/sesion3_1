<%-- 
    Document   : pruebaScriptsJSP
    Created on : 03-oct-2016, 12:16:44
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Contenido dinámico mediante Script JSP:
        <ul>
            <li>
                <b>
                    Expresiones JSP
                </b><br>
                Fecha actual: <%= new Date()%> 
            </li>
            <li><b>Scriptlet JSP</b><br>
                <% Calendar cal = Calendar.getInstance();
                    out.println("La fecha actual es: " + cal.get(Calendar.DATE) + " /" + (cal.get(Calendar.MONTH) + 1) + " /" + cal.get(Calendar.YEAR));
                %>
            </li>
            <li><b>Declaración (más expresión). </b> <br>
                <%! private int accessCount = 0;%>
                Accesos a la página: 
                <%= ++accessCount%>
            </li>

        </ul>
    </body>
</html>
