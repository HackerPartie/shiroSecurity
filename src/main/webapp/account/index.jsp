<%@ include file="../include.jsp"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet"
          href="<c:url value="../include/style.css"/>" />
    <title>Account</title>
</head>
<body>

    <%@include file="../include/header.jsp" %>

    <div class="container">
        <shiro:user>
            <shiro:principal />
        </shiro:user>, manage your account!!

        <h3>Roles</h3>

        <p>To show some taglibs, here are the roles you have and don't
            have. Log out and log back in under different user accounts to see
            different roles.</p>

        <h4>Roles you have</h4>

        <p>
            <shiro:hasRole name="admin">Administrator<br />
            </shiro:hasRole>
            <shiro:hasRole name="user">User<br />
            </shiro:hasRole>

        </p>

        <h4>Roles you DON'T have</h4>

        <p>
            <shiro:lacksRole name="admin">Administrator<br />
            </shiro:lacksRole>
            <shiro:lacksRole name="user">User<br />
            </shiro:lacksRole>

        </p>

    </div>

</body>
</html>
