<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%
    String a = request.getAttribute("objeto").toString();
    String b = request.getAttribute("profl").toString(); 
%>
premio:
<input type="text" name="profl" value='<%= a%>'/>
<br/>ganhador:
<input type="text" name="objeto"  value="<%= b%>"/>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/sorteio"
                   user="root"  password=""/>

<sql:update dataSource="${snapshot}" var="result">
    INSERT INTO sorteios(objeto,ganhador) VALUES (?,?);
    <sql:param value="<%= a%>" />
    <sql:param value="<%= b%>" />
</sql:update>
