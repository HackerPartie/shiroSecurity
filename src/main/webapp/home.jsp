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

        <p>
                Hi
                <shiro:guest>Guest</shiro:guest>
                <shiro:user>
                        <shiro:principal />
                </shiro:user>
                ! (
                <shiro:user>
                        <a href="<c:url value="/logout"/>">Log out</a>
                </shiro:user>
                <shiro:guest>
                        <a href="<c:url value="/login.jsp"></c:url>">Log in</a></shiro:guest>
                )
        </p>

        <shiro:user>
                <p>
                        Visit your <a href="<c:url value="/account"/>">account page</a>.
                </p>
        </shiro:user>
        <shiro:guest>
                <p>
                        If you want to access the user-only <a
                                href="<c:url value="/account"/>">account page</a>, you will need to
                        log-in first.
                </p>
        </shiro:guest>

    </div>

</body>
</html>