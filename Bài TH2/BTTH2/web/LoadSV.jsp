<%-- 
    Document   : LoadSV
    Created on : 30 thg 5, 2024, 00:57:34
    Author     : DUC THANG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
    <body>

    <%
        String formtitle="UPDATE THONG TIN SINH VIEN";
    %>
        <h4><%= formtitle%></h4>
        <FORM method="post" action='Update'>
            <input type='text' hidden="" name='ID' value='${LoadSV.id}'><br> 
            Mã SV    <input type='text' name='mSV' value='${LoadSV.masv}'><br> 
            Họ đệm SV: <input type='text' name='hoDem' value='${LoadSV.hodem}'><br> 
            Tên SV:    <input type='text' name='tenSV' value='${LoadSV.tensv}'><br> 
            Số điện thoại:<input type='text' name='telSV' value='${LoadSV.telsv}'><br>
            Email:<input type='text' name='emailSV' value='${LoadSV.emailsv}'><br>
            <input type="submit" value='Update SV' name='btnSavesv'/>
        </FORM>
    </body>
</html>