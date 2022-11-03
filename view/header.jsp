<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Start Header -->
<header class="header-top">
    <section class="container">
        <section class="logo">
            <img src="<%= request.getContextPath() %>/template/images/logo.gif" alt="Logo">
        </section>
        <form action="#" class="searchform cf" method="post">
            <input type="text" placeholder="Bạn muốn chơi game gì?">
            <button type="submit" name="search">Search</button>
        </form>
        <button type="submit" id="button-login"><a href="login.html">Đăng nhập</a></button>
        <button type="submit" id="button-register"><a href="register.html">Đăng ký</a></button>
    </section>
</header>
<!-- End Header -->


<!-- Start Menu -->
<nav class="menu">
    <section class="container">
        <ul>
            <li><a href="index.html">Trang chủ</a></li>
            <li><a href="#">Bắn súng</a></li>
            <li><a href="#">Chiến thuật</a></li>
            <li><a href="#">Hành động</a></li>
            <li><a href="#">Bạn gái</a></li>
            <li><a href="#">Phiêu lưu</a></li>
            <li><a href="#">Thể thao</a></li>
            <li><a href="#">Hoạt hình</a></li>
            <li><a href="#">Kinh điển</a></li>
            <li><a href="#">Thể loại khác</a></li>
        </ul>
    </section>
</nav>

<!-- End Menu -->
