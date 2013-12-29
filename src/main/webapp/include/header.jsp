<div class="header">
    <span class="pageTitle">Shiro Example &copy; by HackerPartie</span>
    <span class="nav">
        <span class="menu"><a href="<c:url value="/index.jsp"></c:url>">index</a></span>
        <span class="menu"><a href="<c:url value="/about"></c:url>">about</a></span>
    </span>
    <span class="user_management">
        <shiro:user>
            <span class="menu"><a href="<c:url value="/logout"/>">Log out</a></span>
            <span class="menu"><a href="<c:url value="/account"></c:url>">Account</a></span>
        </shiro:user>
        <shiro:guest>
            <span class="menu"><a href="<c:url value="/login.jsp"></c:url>">Log in</a></span>
            <span class="menu"><a href="<c:url value="/register.jsp"></c:url>">register</a></span>
        </shiro:guest>
    </span>
</div>
