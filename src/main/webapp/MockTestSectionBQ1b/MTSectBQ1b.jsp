<%-- 
    Document   : MTSectBQ1b
    Created on : Aug 11, 2010, 5:53:53 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>Param</td>
                <td>Param Value</td>
            </tr>
            <c:forEach var="paramthis" items="${paramValues}">
                <tr>
                    <td>${paramthis.key}</td>
                    <c:forEach var="paramvaluethis" items="${paramthis.value}">
                        <td>${paramvaluethis}</td>
                    </c:forEach>
                </tr>                
            </c:forEach>
        </table>
        <c:out value="${pageContext.request.method}"/>
        <c:out value="${pageContext.request.queryString}"/>
    </body>
</html>
