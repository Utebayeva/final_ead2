<%@ page import="com.example.bookShop.models.Product" %>
<%@ page import="com.example.bookShop.models.User" %>
<%@ page import="com.example.bookShop.models.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
    <h1>Book added</h1>
    <%
        Product product = (Product) session.getAttribute("CreatedProduct");
        User usr = (User) session.getAttribute("user");

        if(product != null && usr != null && usr instanceof Admin){
            out.println("<h2> Book name: " + product.getProduct_name() + "</h2>");
            out.println("<h2> Description: " + product.getProduct_desc() + "</h2>");
            out.println("<h2> Price: " + product.getProduct_price() + "</h2>");
            out.println("<h2> Quantity: " + product.getProduct_quantity() + "</h2>");
        }
    %>

    <br>
    <h4><a href="/products">Books</a></h4>
    <h4><a href="/admin">Admin</a></h4>
    <h4><a href="/mainPage">Logout</a></h4>

</body>
</html>
