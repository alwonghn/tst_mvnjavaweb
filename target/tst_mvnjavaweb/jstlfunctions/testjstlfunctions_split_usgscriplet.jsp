

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*" %>

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

        <%--get the JSTL variable from the pageContext (for using in the scriplet)--%>

        <%String v_uid=(String)pageContext.getAttribute("v_uid");%>
            
            
            <%//Split Operation:  Method 1: use charAt()
            for (int i = 0;i < v_uid.length(); i++){
                out.println(v_uid.charAt(i));
                }            
            %>

            <br><br><br>
            
            <%//Split Operation:  Method 2: use .toCharArray();
            char[] result=v_uid.toCharArray();
            
            for (int i = 0;i < v_uid.length(); i++){
                out.println(result[i]);
                }
            
            %>
            
    </body>
</html>
