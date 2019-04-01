<%-- 
    Document   : target
    Created on : Jul 14, 2010, 3:26:26 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action=".\2forwardORredirect.jsp" method="post">
            <label for="param1">Param1 :<input type="text" name="param1" size="20"></label><br>
            <label for="param2">Param2 :<input type="text" name="param2" size="20"></label><br><br>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </body>
</html>
