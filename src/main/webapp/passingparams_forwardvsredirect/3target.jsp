<%-- 
    Document   : target
    Created on : Jul 14, 2010, 3:37:26 PM
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
        THIS page is TARGET.jsp page
        <table border="1">
            <tr>
                <td>Params</td>
                <td>Param Values</td>
            </tr>
            <c:forEach var="itemthis" items="${paramValues}">
                <tr>
                    <td>
                        <c:out value="${itemthis.key}"/>
                    </td>
                    <c:forEach var="itemvaluethis" items="${itemthis.value}">
                        <td>
                            <c:out value="${itemvaluethis}"/>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        <br>Request Method:<c:out value="${pageContext.request.method}"/>
        <%--<br>Query String: <c:out value="${pageContext.request.querystring}"/>--%>
    </body>
</html>
