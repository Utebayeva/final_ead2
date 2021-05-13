<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log in</title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
    <h1>Log in</h1>
    <h4><a href="/index.jsp">Back</a></h4>
    <form action="/auth">
        <div>
            <label for="login">Username: </label><br>
            <input type="text" name="login" id="login" aria-describedby="login">
        </div>

        <div>
            <label for="password">Password: </label><br>
            <input type="text" name="password" id="password" aria-describedby="password">
        </div>

        <input type="submit" value="Sign in">
    </form>
</body>
</html>
