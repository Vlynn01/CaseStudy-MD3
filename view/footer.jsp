<%@ page import="snow.dao.CategoryDAO" %>
<%@ page import="snow.model.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    CategoryDAO categoryDAO = new CategoryDAO();

%>


<section class="sitemap">


    <%
        int count = 0;
        for (Category item : categoryDAO.getListCategory()) {
            String className = (count % 5 == 0) ? "box-sitemap-last" : "box-sitemap";
    %>

    <div class="<%= className %>"><a href="theloaigame.jsp?id=<%= item.getCategoryID() %>"><%= item.getCategoryName() %>
    </a></div>
    <%
        }
    %>
</section>

<footer class="footer">
    <a href="#"><img src="<%= request.getContextPath() %>/template/images/facebook.png"/></a>
    <a href="#"><img src="<%= request.getContextPath() %>/template/images/gmail.png"/></a>
    <a href="#"><img src="<%= request.getContextPath() %>/template/images/contact.png"/></a>
    <a href="#"><img src="<%= request.getContextPath() %>/template/images/map.png"/></a>
    <div>
        <p>Chơi game lành mạnh, vui vẻ, sắp xếp thời gian hợp lý, tận hưởng cuộc sống lành mạnh, học tập tốt và lao động
            tốt.
            </br>
            Chịu trách nhiệm nội dung: Văn Luận. ©2022 Công ty TNHH CodeGym, Địa chỉ:
            23, Lô TT01, Moncity,
            tp.HN . Điện thoại: 0936983697.</p>
    </div>

</footer>