<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.bookShop.models.Order" %>
<%@ page import="com.example.bookShop.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        <%
        User user = (User) session.getAttribute("user");
        out.println(user.getLogin());
        %>'s Orders
    </title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
    <h1>
        <%
            user = (User) session.getAttribute("user");
            out.println(user.getLogin());
        %>'s Orders
    </h1>
    <table border="1">
        <tr>
            <th>Order id</th>
            <th>Book id</th>
            <th>Book name</th>
        </tr>
        <%
            ArrayList<Order> orders = (ArrayList<Order>) session.getAttribute("users_orders");
            for (Order order: orders) {
                out.println("<tr>");
                out.println("<td>" + order.getOrderId() + "</td>");
                out.println("<td>" + order.getProductId() + "</td>");
                out.println("<td>" + order.getProductName() + "</td>");
                out.println("</tr>");
            }
        %>
    </table>

    <br>
    <h4><a href="/profile.jsp">Profile</a></h4>
    <h4><a href="/products">Books</a></h4>
</body>
</html>
