<%@ page import="snow.model.Advertising" %>
<%@ page import="snow.dao.AdvertisingDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    AdvertisingDAO advertisingDAO = new AdvertisingDAO();

%>
<form action="/search" method="post">
<section class="content-left">
    <section class="game-cung-theloai">
        <header class="title-game-cung-theloai">
            <section class="tentheloai"><a href=""><%= request.getParameter("search")%>
            </a></section>


        </header>
        <section class="list-game"></section>
        <button type="button" class="box-game-xemthem">Coming soon</button>
    </section>

</section>
</form>

<aside class="content-right">
    <section class="quangcao">
        <% for (Advertising item : advertisingDAO.getListAds(2)) {

        %>
        <a href="<%= item.getAdsURL() %> " target="<%=item.getAdsTarget()%>"><img
                src="<%= request.getContextPath() %>/template/images/quangcao/<%=item.getAdsFile()%>"
                alt="<%=item.getAdsTitle()%>"></a>

        <% } %>

    </section>

</aside>