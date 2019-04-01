<%-- 
    Document   : testjstlfunctions_split
    Created on : Jul 21, 2010, 10:38:46 AM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>Param</td>
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

            <c:set var="v_uid" value="${param.userid}"/>
            After Splitting:
            <c:forEach var="letterthis" items="${fn:split(v_uid, '')}">
                <c:out value="${letterthis}" />
            </c:forEach>
    </body>
</html>
