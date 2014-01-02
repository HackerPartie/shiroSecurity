<%@ include file="../include.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: jens
  Date: 12/29/13
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet"
          href="<c:url value="../include/style.css"/>" />
    <title></title>
</head>
<body>

        <%@include file="../include/header.jsp" %>

        <div class="container">

            <h4>About</h4>

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

        </div>