<%-- 
    Document   : Utility JSP
                    1.  for instantiating FormBean and mapping
                        incoming params to FormBean variables for validation
                    2.  for onward flow control according to validation result
                    3.  for updating database
    Created on : Jul 11, 2010, 6:04:20 PM
    Author     : Wong Hoong Ngiap, Alfred.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:if test="${dataSource==null}">
    <sql:setDataSource var="dataSource" driver="org.gjt.mm.mysql.Driver" url="jdbc:mysyl://localhost:3306/onlinecatering?user=password" scope="session"/>
</c:if>


<c:if test="${param.submitted!='fromFmRegMainJsp'}">
    <c:redirect url=".\onlineregistration_form.jsp"/>
</c:if>



<jsp:useBean id="formHandler" class="JavaBeans.formBean" scope="request">
    <jsp:setProperty name="formHandler" property="*"/>
</jsp:useBean>

<c:out value="<%=formHandler.getUid()%>"/>
<c:out value="<%=formHandler.getPwd()%>"/>
<c:out value="<%=formHandler.getPwd2()%>"/>
<c:out value="<%=formHandler.getMobile()%>"/>
<c:out value="<%=formHandler.getEmail()%>"/>
<c:out value="<%=formHandler.getSalutation()%>"/>
<c:out value="<%=formHandler.getFirstName()%>"/>
<c:out value="<%=formHandler.getMiddleName()%>"/>
<c:out value="<%=formHandler.getSurName()%>"/>
<c:out value="<%=formHandler.getAddr1()%>"/>
<c:out value="<%=formHandler.getAddr2()%>"/>
<c:out value="<%=formHandler.getAddr3()%>"/>
<c:out value="<%=formHandler.getAddr4()%>"/>
<c:out value="<%=formHandler.getAddr5()%>"/>
<c:out value="<%=formHandler.getIdtype()%>"/>
<c:out value="<%=formHandler.getNricNo()%>"/>
<c:out value="<%=formHandler.getNationality()%>"/>
<c:out value="<%=formHandler.getDobDay()%>"/>
<c:out value="<%=formHandler.getDobMth()%>"/>
<c:out value="<%=formHandler.getDobYr()%>"/>


<%--
<% if (formHandler.validate()){ %>
<script type="text/javascript">alert("after validation, b4 sql insert");</script>
<!--Svr Side Validation is success - do sql insert new customer-->
<sql:update var="customers" dataSource="${dataSource}">
    INSERT INTO t_customers(c_uid,c_pwd,c_mobile,c_email,c_name_salutation,c_name_firstname,c_name_middlename_c_name_surname,c_address_numblktwr,c_address_street,c_address_floorunit,c_address_building,c_address_postcode,c_idtype,c_nricno,c_dob_day,c_dob_month,c_dob_year,c_nationality,c_first,c_last,c_type)
    VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW(),NOW(),'G')
    <sql:param value="<%=formHandler.getUid()%>"/>
    <sql:param value="<%=formHandler.getPwd()%>"/>
    <sql:param value="<%=formHandler.getMobile()%>"/>
    <sql:param value="<%=formHandler.getEmail()%>"/>
    <sql:param value="<%=formHandler.getSalutation()%>"/>
    <sql:param value="<%=formHandler.getFirstName()%>"/>
    <sql:param value="<%=formHandler.getMiddleName()%>"/>
    <sql:param value="<%=formHandler.getSurName()%>"/>
    <sql:param value="<%=formHandler.getAddr1()%>"/>
    <sql:param value="<%=formHandler.getAddr2()%>"/>
    <sql:param value="<%=formHandler.getAddr3()%>"/>
    <sql:param value="<%=formHandler.getAddr4()%>"/>
    <sql:param value="<%=formHandler.getAddr5()%>"/>
    <sql:param value="<%=formHandler.getIdtype()%>"/>
    <sql:param value="<%=formHandler.getNricNo()%>"/>
    <sql:param value="<%=formHandler.getDobDay()%>"/>
    <sql:param value="<%=formHandler.getDobMth()%>"/>
    <sql:param value="<%=formHandler.getDobYr()%>"/>
    <sql:param value="<%=formHandler.getNationality()%>"/>
</sql:update>

<!--Set session variables to implement session control-->
<c:set var="userID" value="<%=formHandler.getUid%>" scope="session"/>
<c:set var="userType" value="G" scope="session"/>

<!--Flow to success page-->
<jsp:forward page=".\success.jsp"/>

<% }else{ %>




<!--Svr Side Validation Failure - Flow back to retry page-->

<jsp:forward page=".\onlineregistration_formretry_paramtester.jsp"/>

<%}%>



--%>


