<%-- 
    Document   : T2b
    Created on : Aug 12, 2010, 9:57:30 AM
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
                    <td>
                        <c:out value="${paramthis.key}"/>
                    </td>
                    <c:forEach var="paramvaluethis" items="${paramthis.value}">
                            <td>
                                <c:out value="${paramvaluethis}"/>
                            </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        <br>FORM METHOD:<c:out value="${pageContext.request.method}"/>

        <br><br><br>
        <p style="color:yellow">
    <li>AWS:  When u: (a)construct part of QS in the form action (b) make form method as GET (c)submit form (d) look at QS in browser of target page>>>
        >>>>>>> resultant QS:  only contains params from inputs on form. The partly constructed QS by u (i.e.variable u added to the QS) is overwritten
        <br><br>
    <li> AWS:  When u: (a)construct part of QS in the form action (b) make form method as POST (c)submit form (d) look at QS in browser of target page>>>
        >>>>>>> resultant QS:  only contains params from inputs on form. The partly constructed QS by u (i.e.variable u added to the QS) is shown ONLY (because the
        form params are not shown because the form method is post
    </body>
</html>
