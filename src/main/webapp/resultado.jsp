<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<style>
    .bg {
  /* The image used */
  background-image: url("https://cdn.pixabay.com/photo/2016/11/18/17/15/balloons-1835902_960_720.jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<%
    String a = request.getAttribute("objeto").toString();
    String b = request.getAttribute("profl").toString();
%>
<div class="bg">
    <br/>    <br/>    <br/>    <br/>    <br/>
    <br/>    <br/>    <br/>    <br/>    <br/>
    <div class="masthead text-white ">
    <div class="overlay"></div>
    <div class="container slider-top-text">
        <div class="row">
            <div class="col-md-12 text-center">
                <h3 class="my-heading">Parabéns  <%= b%></h3>
                <p class="myp-slider text-center"> Você ganhou: <%= a%></p>
                <a href="form.jsp" class="btn btn-light">Novo sorteio</a>
                <a  href="index.jsp" class="btn btn-light">Ver sorteios</a>
            </div>
        </div>
    </div>
</div>
</div>
<input type="hidden" name="profl" value='<%= a%>'/>
<input type="hidden" name="objeto"  value="<%= b%>"/>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/sorteio"
                   user="root"  password=""/>

<sql:update dataSource="${snapshot}" var="result">
    INSERT INTO sorteios(objeto,ganhador) VALUES (?,?);
    <sql:param value="<%= a%>" />
    <sql:param value="<%= b%>" />
</sql:update>
