<%@ include file="include.jsp"%>

<html>
<head>
    <link type="text/css" rel="stylesheet"
          href="<c:url value="include/style.css"/>" />
    <title>Auth</title>
</head>
<body>

    <%@include file="include/header.jsp" %>

    <div class="container">

        <form action="reg" method="post">

            <input type="text" name="username"> username<br>
            <input type="text" name="email"> email<br>
            <input type="text" name="name"> name<br>
            <input type="password" name="password"> password<br>
            <input type="submit" value="click">

        </form>

    </div>

</body>
</html>