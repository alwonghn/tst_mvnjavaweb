<%-- 
    Document   : forward  OR redirect
    Created on : Jul 14, 2010, 3:25:55 PM
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
        <c:out value="${pageContext.request.method}"/>
    </body>
</html>

<%--
CASE 1: using JSP:FORWARD
    AWS OUTCOME-  1.   All Params passed!!(actually, it is the same request- so no passing occurs
                            paramValues are from existing request
                    2.   Method is POST  (? is it the previous request's method?)
                        3. Target.jsp is NOT shown on browser addressing box
--%>

<jsp:forward page=".\3target.jsp"/>


<%--
CASE2A: using C:REDIRECT WITHOUT C:PARAMS   
     AWS OUTCOME-  1.   NO Params passed!!
                    2.   Method is GET
                        3. Target.jsp is shown on browser addressing box
<c:redirect url=".\3target.jsp"/>
--%>

<%--
CASE2B: using C:REDIRECT WITH C:PARAMS
     AWS OUTCOME-  1.   Params are passed!!
                    2.   Method is GET
                        3. Target.jsp is shown on browser addressing box
<c:redirect url=".\3target.jsp">
    <c:param name="param1redirected" value="${param.param1}"/>
    <c:param name="param2redirected" value="${param.param2}"/>
</c:redirect>
--%>