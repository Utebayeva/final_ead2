<%@ page import="com.example.bookShop.models.User" %>
<%@ page import="com.example.bookShop.models.Admin" %>
<html>
<head>
    <title>Book Shop</title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
    <h1>Book Shop</h1>
    <%
        User usr = (User) session.getAttribute("user");
        if (usr == null){
            out.println("<h2><a aria-current=\"page\" href=\"authorization.jsp\">Log in</a></h2>");
            out.println("<h2><a aria-current=\"page\" href=\"registration.jsp\">Registration</a></h2>");
        }
        else if (usr instanceof Admin) {
            out.println("<h2>Admin: " + usr.getLogin() + "</h2>");
            out.println("<h2><a aria-current=\"page\" <a href=\"/products\">Books</a></h2>");
            out.println("<h2><a aria-current=\"page\" <a href=\"/admin\">Admin</a></h2>");
            out.println("<h2><a aria-current=\"page\" href=\"/mainPage\">Logout</a></h2>");
        }
        else {
            out.println("<h2>User: " + usr.getLogin() + "</h2>");
            out.println("<h2><a aria-current=\"page\" href=\"/products\">Books</a></h2>");
            out.println("<h2><a aria-current=\"page\" href=\"/mainPage\">Logout</a></h2>");
        }
    %>
</body>
</html>
