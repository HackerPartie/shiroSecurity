<%@ include file="include.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet"
          href="<c:url value="include/style.css"/>" />
    <title>Auth</title>
</head>
<body>

    <%@include file="include/header.jsp" %>

    <div class="container">

        <h3 class="panel-title">Please sign in</h3>

        <shiro:guest>
            <p>Guest Text</p>
        </shiro:guest>

        <form name="loginform" action="" method="POST" accept-charset="UTF-8">

            <input class="form-control" placeholder="Username or Email" name="username" type="text">
            <input class="form-control" placeholder="Password" name="password" type="password" value="">
            <div class="checkbox">
                <input name="rememberMe" type="checkbox" value="true"> Remember Me
            </div>
            <input class="btn btn-lg btn-success btn-block" type="submit" value="Login">

        </form>

    </div>

 </body>
 </html>
