<%-- 
    Document   : SPWAD_3rd Run Assessment 1: form_onlineregistration.jsp
    Created on : Jul 8, 2010, 11:58:42 AM
    Author     : Wong Hoong Ngiap, Alfred
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href=".\formspages.css" type="text/css" media="screen">

        <%--clientside check before ajax--%>
        <script src="validationAjaxClientside.js" language="javascript" type="text/javascript"></script>
        
        <%--ajax for checking userid availability--%>
        <script type="text/javascript">
            function loadXMLDoc(){
            var v_uid=document.getElementById("i_uid").value;
            if (window.XMLHttpRequest)
              {// code for IE7+, Firefox, Chrome, Opera, Safari
              xmlhttp=new XMLHttpRequest();
              }
            else
              {// code for IE6, IE5
              xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
              }

            xmlhttp.onreadystatechange=function()
              {
              if (xmlhttp.readyState==4 && xmlhttp.status==200)
                {
                document.getElementById("o_uidCheckResult").innerHTML=xmlhttp.responseText;
                //document.frmRegMain.i_uid.focus();
                }
              }
            xmlhttp.open("POST","./onlineregistration_checkuid.jsp",true);
            xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xmlhttp.send("ajparam_uid="+v_uid);
            }
        </script>

        <script src="validationclientside.js" language="javascript" type="text/javascript"></script>

        <script type="text/javascript" src="singlefieldvalidations.js" language="javascript"></script>

    </head>
    <body>
        <center>
            <table width="100%">
                <tr>
                    <div id="title">NEW CUSTOMER REGISTRATION</div>
                    
                </tr>
                <tr>
                <div id="title2">&curren;&nbsp;&nbsp;only registered customers are allowed to make a purchase.&nbsp;&nbsp;&nbsp;&nbsp;&curren;&nbsp;&nbsp members receive 5% discount off purchases.</div>
                </tr>
                <tr>
                    &nbsp;
                </tr>
            </table>
        </center>
        
        
        <form name="fmRegMain" method="post" action=".\onlineregistration_process_tester.jsp" onsubmit="return validateAll(this);" >
        <center>
            <input type="hidden" name="submitted" value="fromFmRegMainJsp">

            <div id="data">

                <table width="100%" class="transparent">

                    <%--Row 1a--%>
                    <tr>
                        <td rowspan="2">
                            Your<br>
                            Preferred<br>
                            User/Login ID* :                            
                        </td>
                        <td class="field" rowspan="2" >
                            <input name="uid" id="i_uid" type="text" class="text" maxlength="10" size="8" value="Jefrey">
                            <input type="button" class="btn" value="Check" onclick="return validateUid(this.form);">
                            <br><div id="o_uidCheckResult" class="left"></div>
                        </td>
                        <td>
                            Password* :
                        </td>
                        <td class="field">                            
                            <div align="left">
                                <div class="left" style="width: 50%" ><input name="pwd" id="i_pwd" type="password" align="left" class="text" class="left"  maxlength="8" style="width:50px" value="alfred"></div>
                                <div class="left" style="width: 50%" id="o_pwd"></div>
                            </div>
                        </td>
                    </tr>

                    <%--Row 1b--%>
                    <tr>
                        <td>
                            Type Again* :
                        </td>
                        <td class="field" >
                            <div align="left">
                                <div class="left" style="width:50%"><input name="pwd2" id="i_pwd2" type="password" align="left" class="text" maxlength="8" style="width:50px" value="alfred"></div>
                                <div class="left" style="width:50%" id="o_comparePwdResult" ></div>
                            </div>
                        </td>
                    </tr>

                    <tr><td colspan="4"></td></tr>

                    <%--Row 2--%>
                    <tr>
                        <td>
                            Mobile No.*:
                        </td>
                        <td class="field" >
                            <div align="left">
                                <div class="left" style="width:33%" ><input name="mobile" id="i_mobile" type="text" class="text" size="8" maxlength="8" style="width:90%" value="90011884"></div>
                                <div class="left" style="width:33%">Local only</div>
                                <div class="left" style="width:33%" id="o_mobile"></div>
                            </div>                            
                        </td>
                        <td>
                            Email* :
                        </td>
                        <td class="field" >
                            <div align="left">
                                <div class="left" style="width:60%" ><input name="email" id="i_email" type="text" class="text" size="18" value="al_wong@yahoo.com"></div>
                                <div class="left" style="width:40%" id="o_email" ></div>
                            </div>                         
                        </td>
                    </tr>

                    <%--Row 3--%>
                    <tr>
                        <td>Name :</td>
                        <td colspan="3">
                            <%--Name Information arranged in a table--%>
                            <TABLE width="100%">
                                <TR>
                                    <TD width="12%" class="nobordercaption">Salutation*</TD>
                                    <TD width="28%" class="nobordercaption">First Name*</TD>
                                    <TD width="28%" class="nobordercaption">Middle Name</TD>
                                    <TD width="28%" class="nobordercaption">SurName*</TD>
                                </TR>
                                <TR>
                                    <TD class="noborder">
                                        <select name="salutation" id="i_salutation" class="salutationtype">
                                            <option value=""></option>
                                            <option value="Mr" selected>Mr.</option>
                                            <option value="Miss">Miss</option>
                                            <option value="Mdm">Mdm.</option>
                                            <option value="Dr">Dr.</option>
                                            <option value="Mrs">Mrs.</option>
                                            <option value="Ms">Ms.</option>
                                        </select>
                                    </TD>
                                    <TD class="noborder">
                                        <div align="left">                                            
                                            <div class="left"><input name="firstName" id="i_firstName" type="text" class="text" maxlength="25" size="15" title="First Name" value="Alfred"></div>
                                        </div>
                                    </TD>
                                    <TD class="noborder">
                                        <div align="left">                                            
                                            <div class="left"><input name="middleName" id="i_middleName" type="text" class="text" maxlength="25" size="15" title="Middle Name"></div>
                                        </div>
                                    </TD>
                                    <TD class="noborder">
                                        <div align="left">                                            
                                            <div class="left"><input name="surName" id="i_surName" type="text" class="text" maxlength="25" size="15" title="Surname" value="Wong"></div>
                                        </div>                                        
                                    </TD>
                                </TR>
                            </TABLE>
                        </td>
                    </tr>
                    <%--Row 4--%>
                    <tr>
                        <td>
                            <div align="right">
                                <div align="right">Delivery Address :</div>
                                <div align="right" id="o_address"></div>
                            </div>                            
                        </td>
                        <td colspan="3">
                            <%--Address Information arranged in a table--%>
                            <TABLE width="100%">
                                <TR>
                                    <TD width="13%" class="nobordercaption">House No.*<br>/Blk*/Tower*</TD>
                                    <TD width="35%" class="nobordercaption">Street Name*</TD>
                                    <TD width="10%" class="nobordercaption">Floor-Unit No.</TD>
                                    <TD width="20%" class="nobordercaption">Building Name</TD>
                                    <TD width="10%" class="nobordercaption">Postal Code*</TD>
                                </TR>
                                <TR>
                                    <TD class="noborder">
                                        <div align="left">                                            
                                            <div class="left"><INPUT name="addr1" id="i_addr1" type="text" class="text" maxlength="6" size="4" value="29"></div>
                                        </div>                                        
                                    </TD>
                                    <TD class="noborder">
                                        <div align="left">                                            
                                            <div class="left"><INPUT name="addr2" id="i_addr2" type="text" class="text" maxlength="30" size="25" value="Siglap Gardens"></div>
                                        </div>
                                    </TD>
                                    <TD class="noborder">
                                        <div align="left">
                                            <div class="left">#</div>
                                            <div class="left"><INPUT name="addr3" id="i_addr3" type="text" class="text" maxlength="4" size="2" ></div>
                                        </div>                                        
                                    </TD>
                                    <TD class="noborder">
                                        <div align="left">                                            
                                            <div class="left"><INPUT name="addr4" id="i_addr4" type="text" class="text" maxlength="15" size="10" ></div>
                                        </div>                                        
                                    </TD>
                                    <TD class="noborder">
                                        <div align="left">                                            
                                            <div class="left"><INPUT name="addr5" id="i_addr5" type="text" class="text" maxlength="6" size="4" value="456128"></div>
                                        </div>                                        
                                    </TD>
                                </TR>
                            </TABLE>
                        </td>
                    </tr>

                    <%--Row 5--%>
                    <tr>
                        <td>NRIC/FIN Type* :</td>
                        <td class="field" >
                            <select name="idtype" id="i_idtype" class="nrictype" >
                                <option value=""></option>
                                <option value="2" selected>Singaporean</option>
                                <option value="2">Permanent Resident</option>
                                <option value="5">Passport</option>
                                <option value="530">Foreigner Work Permit (FIN)</option>
                                <option value="532">Foreigner Dependent Pass (FIN)</option>
                                <option value="534">Foreigner Employment Pass (FIN)</option>
                            </select>
                        </td>
                        <td>
                            NRIC/Passport<br>/FIN* :
                        </td>
                        <td class="field">
                            <div class="left">
                                <input name="nricNo" id="i_nricNo" type="text" class="text" maxlength="10" size="20" value="S1468050J">
                            </div>
                        </td>
                    </tr>

                    <%--Row 7--%>
                    <tr>
                        <td>Nationality*</td>
                        <td class="field">
                            <select name="nationality" id="i_nationality" class="nrictype" style="width:180px" >
                                <option value=""></option>
                                <option value="24" selected>Singaporean</option>
                                <option value="1">American</option>
                                <option value="2">Australian</option>
                                <option value="3">Bangladeshi</option>
                                <option value="4">British</option>
                                <option value="5">Bruneian</option>
                                <option value="6">Canadian</option>
                                <option value="7">Chinese</option>
                                <option value="8">European</option>
                                <option value="9">Filipino</option>
                                <option value="10">French</option>
                                <option value="11">Hongkonger</option>
                                <option value="12">Indian</option>
                                <option value="13">Indonesian</option>
                                <option value="14">Japanese</option>
                                <option value="15">Kampuchean</option>
                                <option value="16">Korean</option>
                                <option value="17">Laotian</option>
                                <option value="18">Malaysian</option>
                                <option value="19">Myanmese</option>
                                <option value="20">New Zealander</option>
                                <option value="21">North American</option>
                                <option value=22">Others</option>
                                <option value="23">Pakistani</option>
                                <option value="25">South American</option>
                                <option value="26">Sri Lankan</option>
                                <option value="27">Thai</option>
                                <option value="28">Taiwanese</option>
                                <option value="29">Vietnamese</option>
                            </select>
                        </td>
                        <td>Date of Birth:</td>
                        <td class="field">
                            <div class="left">
                                <select name="dobDay" id="i_dobDay" class="nrictype" style="width:48px" >
                                    <option value=""></option>
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06" selected>06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                                <br>
                                Date
                            </div>
                            <div class="leftdash">-</div>
                            <div class="left">
                                <select name="dobMth" id="i_dobMth" class="nrictype" style="width:57px" >
                                    <option value=""></option>
                                    <option value="01">Jan</option>
                                    <option value="02">Feb</option>
                                    <option value="03">Mar</option>
                                    <option value="04">Apr</option>
                                    <option value="05">May</option>
                                    <option value="06">Jun</option>
                                    <option value="07">Jul</option>
                                    <option value="08">Aug</option>
                                    <option value="09">Sep</option>
                                    <option value="10" selected>Oct</option>
                                    <option value="11">Nov</option>
                                    <option value="12">Dec</option>
                                </select>
                                <br>
                                Month
                            </div>
                            <div class="leftdash">-</div>
                            <div class="left">
                                <select name="dobYr" id="i_dobYr" class="nrictype" style="width:60px" >
                                    <option value=""></option>
                                    <option value="1910">1910</option>
                                    <option value="1911">1911</option>
                                    <option value="1912">1912</option>
                                    <option value="1913">1913</option>
                                    <option value="1914">1914</option>
                                    <option value="1915">1915</option>
                                    <option value="1916">1916</option>
                                    <option value="1917">1917</option>
                                    <option value="1918">1918</option>
                                    <option value="1919">1919</option>
                                    <option value="1920">1920</option>
                                    <option value="1921">1921</option>
                                    <option value="1922">1922</option>
                                    <option value="1923">1923</option>
                                    <option value="1924">1924</option>
                                    <option value="1925">1925</option>
                                    <option value="1926">1926</option>
                                    <option value="1927">1927</option>
                                    <option value="1928">1928</option>
                                    <option value="1929">1929</option>
                                    <option value="1930">1930</option>
                                    <option value="1931">1931</option>
                                    <option value="1932">1932</option>
                                    <option value="1933">1933</option>
                                    <option value="1934">1934</option>
                                    <option value="1935">1935</option>
                                    <option value="1936">1936</option>
                                    <option value="1937">1937</option>
                                    <option value="1938">1938</option>
                                    <option value="1939">1939</option>
                                    <option value="1940">1940</option>
                                    <option value="1941">1941</option>
                                    <option value="1942">1942</option>
                                    <option value="1943">1943</option>
                                    <option value="1944">1944</option>
                                    <option value="1945">1945</option>
                                    <option value="1946">1946</option>
                                    <option value="1947">1947</option>
                                    <option value="1948">1948</option>
                                    <option value="1949">1949</option>
                                    <option value="1950">1950</option>
                                    <option value="1951">1951</option>
                                    <option value="1952">1952</option>
                                    <option value="1953">1953</option>
                                    <option value="1954">1954</option>
                                    <option value="1955">1955</option>
                                    <option value="1956">1956</option>
                                    <option value="1957">1957</option>
                                    <option value="1958">1958</option>
                                    <option value="1959">1959</option>
                                    <option value="1960">1960</option>
                                    <option value="1961" selected>1961</option>
                                    <option value="1962">1962</option>
                                    <option value="1963">1963</option>
                                    <option value="1964">1964</option>
                                    <option value="1965">1965</option>
                                    <option value="1966">1966</option>
                                    <option value="1967">1967</option>
                                    <option value="1968">1968</option>
                                    <option value="1969">1969</option>
                                    <option value="1970">1970</option>
                                    <option value="1971">1971</option>
                                    <option value="1972">1972</option>
                                    <option value="1973">1973</option>
                                    <option value="1974">1974</option>
                                    <option value="1975">1975</option>
                                    <option value="1976">1976</option>
                                    <option value="1977">1977</option>
                                    <option value="1978">1978</option>
                                    <option value="1979">1979</option>
                                    <option value="1980">1980</option>
                                    <option value="1981">1981</option>
                                    <option value="1982">1982</option>
                                    <option value="1983">1983</option>
                                    <option value="1984">1984</option>
                                    <option value="1985">1985</option>
                                    <option value="1986">1986</option>
                                    <option value="1987">1987</option>
                                    <option value="1988">1988</option>
                                    <option value="1989">1989</option>
                                    <option value="1990">1990</option>
                                    <option value="1991">1991</option>
                                    <option value="1992">1992</option>
                                    <option value="1993">1993</option>
                                    <option value="1994">1994</option>
                                    <option value="1995">1995</option>
                                    <option value="1996">1996</option>
                                    <option value="1997">1997</option>
                                    <option value="1998">1998</option>
                                    <option value="1999">1999</option>
                                    <option value="2000">2000</option>
                                    <option value="2001">2001</option>
                                    <option value="2002">2002</option>
                                    <option value="2003">2003</option>
                                    <option value="2004">2004</option>
                                    <option value="2005">2005</option>
                                    <option value="2006">2006</option>
                                    <option value="2007">2007</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                </select>
                                <br>
                                Year*
                            </div>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="field" colspan="4">
                            <div align="center" >
                                <input name="Submit" type="submit" class="btn" value="REGISTER NOW" align="center">
                                <input name="Reset" type="reset" class="btn" value="RESET FORM" align="center" >
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </center>
        </form>
    </body>
</html>
