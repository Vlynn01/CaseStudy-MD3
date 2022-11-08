<%@ page import="snow.model.Category" %>
<%@ page import="snow.dao.CategoryDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Start Header -->
<header class="header-top">
    <section class="container">
        <section class="logo">
            <img src="<%= request.getContextPath() %>/template/images/LogoGame.gif" alt="Logo">
        </section>
        <form action="<%= request.getContextPath()%>/view/search.jsp" class="searchform cf" method="get">
            <input type="text" name="search" placeholder="Bạn muốn chơi game gì?">
            <button type="submit">Search</button>
        </form>
        <button type="submit" id="button-login"><a href="login.jsp">Đăng nhập</a></button>
        <button type="submit" id="button-register"><a href="register.jsp">Đăng ký</a></button>
    </section>
</header>
<!-- End Header -->


<!-- Start Menu -->
<%
    CategoryDAO categoryDAO = new CategoryDAO();

%>
<nav class="menu">
    <section class="container">
        <ul>
            <li><a href="index.jsp">Trang chủ</a></li>
            <% for (Category item : categoryDAO.getListCategory()) {
                if (item.isVisiableMenu()) {

            %>
            <li><a href="theloaigame.jsp?id=<%= item.getCategoryID() %>"><%= item.getCategoryName() %>
            </a></li>
            <%
                    }
                }
            %>
            <li><a href="index.jsp">Thể loại khác</a></li>
        </ul>
    </section>
</nav>

<!-- End Menu -->
