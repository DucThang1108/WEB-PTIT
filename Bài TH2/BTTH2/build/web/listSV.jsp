<%-- 
    Document   : listSV
    Created on : 29 thg 5, 2024, 23:50:46
    Author     : DUC THANG
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/css/Q1ly.css">
    <title>Quản Lý Cửa Hàng</title>
</head>
<body>
        <div class="cartegory-right">
            <div class="cartegory-right-item">
                <div>Danh sách sv</div>
            </div>
            <div class="cartegory-right-table">
                <table>
                    <thead>
                      <tr>
                        <th>Mã SV</th>
                        <th>Họ Đệm</th>
                        <th>Tên SV</th>
                        <th>SĐT</th>
                        <th>Email</th>
                        <th>Acction</th>
                      </tr>
                    </thead>
                    <tbody>
                      
                      <c:forEach items="${SV}" var="o">         
                            <tr>
                        <td style="border: 1px solid">${o.masv}</td>
                        <td style="border: 1px solid">${o.hodem}</td>
                        <td style="border: 1px solid">${o.tensv}</td>
                        <td style="border: 1px solid">${o.telsv}</td>
                        <td style="border: 1px solid">${o.emailsv}</td>
                        <td><button class="btn"><a href="LoadSV?id=${o.id}">Sửa SV</a></button></td>
                        <td><button class="btn"><a href="Delete?id=${o.id}">Xoá SV</a></button></td>
                    
                
                      </tr>
                        </c:forEach>
                        
                      
                    </tbody>
                  </table>
            </div>
        </div>
</body>
</html>