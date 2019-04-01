<%-- 
    Document   : MTSectBQ2a
    Created on : Aug 11, 2010, 6:46:22 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   <c:if test="${pageContext.request.method=='POST' and !empty param.item}">
    
    <c:choose>
        <c:when test="${!empty mylist && !empty param.add}">
            <c:set var="mylist" value="${mylist},${param.item}" scope="session"/>
        </c:when>
        <c:otherwise>
            <c:set var="mylist" value="${param.item}" scope="session"/>
        </c:otherwise>
    </c:choose>
</c:if>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Items in the list:</h3>
        <c:forEach var="myItem" items="${mylist}" varStatus="myStat">
            <c:out value="${myStat.count}${myItem}"/>
        </c:forEach>
        <form method="post" action="MTSectBQ2a.jsp" >
            Item: <input type="text" name="item" size="20">
            <br><input type="submit" name="add" value="ADD">
        </form>

    </body>
</html>
