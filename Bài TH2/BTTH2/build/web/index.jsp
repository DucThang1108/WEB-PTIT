<%-- 
    Document   : index
    Created on : 29 thg 5, 2024, 23:43:25
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
        String formtitle="QUẢN LÝ THÔNG TIN SINH VIÊN";
    %>
        <h4><%= formtitle%></h4>
        <FORM method="post" action='Add'>

            Mã SV    <input type='text' name='mSV' value=''><br> 
            Họ đệm SV: <input type='text' name='hoDem' value=''><br> 
            Tên SV:    <input type='text' name='tenSV' value=''><br> 
            Số điện thoại:<input type='text' name='telSV' value=''><br>
            Email:<input type='text' name='emailSV' value=''><br>
            <input type="submit" value='Lưu SV mới' name='btnSavesv'/>
        </FORM>
    </body>
</html>