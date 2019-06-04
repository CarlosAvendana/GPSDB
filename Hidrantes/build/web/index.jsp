<%-- 
    Document   : index
    Created on : Jun 2, 2019, 4:00:39 PM
    Author     : paoma
--%>

<%@page import="data.Dao"%>
<%@page import="data.RealDataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Dao rdb = new Dao(); %>
        <% rdb.BomberoAdd(); %>
        <h1>Hello World!</h1>
    </body>
</html>
