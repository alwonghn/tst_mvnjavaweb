<%-- 
    Document   : testssv_ssvjsp
    Created on : Jul 20, 2010, 5:17:48 PM
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
            <c:if test="${fn:length(v_uid) gt 8}">
                <c:out value="uid greater than 8 characters"/>
            </c:if>
    </body>
</html>
