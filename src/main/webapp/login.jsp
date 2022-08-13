<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log in</title>
    <link rel="icon" href="https://png.pngtree.com/png-vector/20191029/ourmid/pngtree-bakery-icon-for-your-project-png-image_1897748.jpg">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/login.css">
    <script src="js/login.js"></script>
</head>
<body>

<%--Get bean để kiểm tra người dùng đã đăng nhập hay chưa--%>
<jsp:useBean id="account" class="com.example.test.Account" scope="session"/>

<%--Nếu đã đăng nhập thì không thể truy cập trang login nữa--%>
<% if (account.isLogged()) {
    response.sendRedirect("./");
} %>

<%--div container chứa toàn bộ nội dung trang--%>
<div class="container">
    <div class="body d-md-flex align-items-center justify-content-between">

        <%--Nội dung trang được phân nhỏ thành 2 file jsp như dưới đây--%>
        <jsp:include page="login-content-left.jsp"/>
        <jsp:include page="login-content-right.jsp"/>
    </div>
</div>
</body>
</html>