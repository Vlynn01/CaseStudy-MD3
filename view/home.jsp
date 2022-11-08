<%@ page import="snow.dao.GameDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="snow.model.Game" %>
<%@ page import="snow.dao.AdvertisingDAO" %>
<%@ page import="snow.dao.CategoryDAO" %>
<%@ page import="snow.model.Advertising" %>
<%@ page import="snow.tool.Helper" %>
<%@ page import="snow.model.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    GameDAO gameDAO = new GameDAO();
    AdvertisingDAO advertisingDAO = new AdvertisingDAO();
    CategoryDAO categoryDAO = new CategoryDAO();

    ArrayList<Game> listGameHot = gameDAO.getListGameHot();
    ArrayList<Game> listGameChoiNhieuNhat = gameDAO.getListGameChoiNhieuNhat();
    ArrayList<Game> listGameYeuThichNhat = gameDAO.getListGameYeuThichNhat();
%>


<section class="content-left">
    <section class="game-hot">
        <section class="slider">
            <div id="wowslider-container1">
                <div class="ws_images">
                    <ul>
                        <% for (int i = 0; i < 5; i++) { %>
                        <li><a href="playgame.jsp?id=<%= listGameHot.get(i).getGameID() %>" target="_self"><img
                                src="<%= request.getContextPath() %>/template/games/img/<%= listGameHot.get(i).getGameImage() %>"
                                alt="<%= listGameHot.get(i).getGameName() %>"
                                title="<%= listGameHot.get(i).getGameName() %> "/>
                        </a>
                        </li>
                        <% }%>
                    </ul>
                </div>
                <div class="ws_bullets">
                    <div>
                        <% for (int i = 0; i < 5; i++) { %>
                        <a href="playgame.jsp?id=<%= listGameHot.get(i).getGameID() %>" target="_self"
                           title="<%= listGameHot.get(i).getGameName() %>"><%= (i + 1) %>
                        </a>
                        <% }%>
                    </div>
                </div>
            </div>
        </section>
        <aside class="sidebar">
            <header class="title-gamehot">Game hay</header>
            <section class="content-gamehot">
                <%
                    int count_1 = 0;
                    for (int i = 5; i < 11; i++) {
                        count_1++;
                        String className = (count_1 % 3 == 0) ? "box-gamehot-last" : "box-gamehot";
                %>

                <article class="<%=className %>">
                    <a href="playgame.jsp?id=<%= listGameHot.get(i).getGameID() %>" target="_self"><img
                            src="<%= request.getContextPath() %>/template/games/img/<%= listGameHot.get(i).getGameImage() %> "
                            alt="<%= listGameHot.get(i).getGameName() %>"></a>
                    <h3><a href="#"><%= listGameHot.get(i).getGameName()%></a></h3>
                </article>
                <% }%>
            </section>
        </aside>
    </section>
    <% for (Category itemMaster : categoryDAO.getListCategoryByAmount(5)) {

    %>
    <section class="theloai-game">
        <header><a href="theloaigame.jsp?id=<%= itemMaster.getCategoryID()%>"><%= itemMaster.getCategoryName()%>
        </a></header>
        <p class="xthem"><a href="theloaigame.jsp?id=<%= itemMaster.getCategoryID()%>">
            <input name="xemthem"
                   type="button"
                   value="Xem Thêm &gt;&gt;"></a>
        </p>
        <%
            for (Game item : gameDAO.getListGameDetail(itemMaster.getCategoryID())) {

        %>
        <article class="game-theloai-game">
            <a href="playgame.jsp?id=<%= item.getGameID() %>">
                <img
                        src="<%= request.getContextPath() %>/template/games/img/<%= item.getGameImage()%>"
                        alt="<%= item.getGameName()%>"></a>
            <h3><a href="#"><%= item.getGameName()%>
            </a></h3>
        </article>
        <%}%>

        <div class="overflow"></div>
    </section>

    <% }%>
</section>

<%--ContentR--%>
<aside class="content-right">
    <section class="quangcao">
        <% for (Advertising item : advertisingDAO.getListAds(2)) {

        %>
        <a href="<%= item.getAdsURL() %> " target="<%=item.getAdsTarget()%>"><img
                src="<%= request.getContextPath() %>/template/images/quangcao/<%=item.getAdsFile()%>"
                alt="<%=item.getAdsTitle()%>"></a>

        <% } %>

    </section>
    <section class="game-choinhieunhat">
        <header class="title-game-choinhieunhat">Game chơi nhiều nhất</header>
        <section class="content-game-choinhieunhat">
            <%
                int count_2 = 0;
                int size_2 = listGameChoiNhieuNhat.size();
                for (Game item : listGameChoiNhieuNhat) {
                    count_2++;
                    String className = (count_2 % size_2 == 0) ? "box-game-choinhieunhat-last" : "box-game-choinhieunhat";
            %>
            <article class="<%= className %>">
                <a href="playgame.jsp?id=<%= item.getGameID() %>"><img
                        src="<%= request.getContextPath() %>/template/games/img/<%= item.getGameImage() %>"
                        alt="<%= item.getGameName() %>"></a>
                <section>
                    <a href="playgame.jsp?id=<%= item.getGameID() %>"><h5><%= Helper.cutString(item.getGameName(), 10)%>
                    </h5></a>
                    <p>Lượt chơi: <%= Helper.fomatNumber(item.getGameLuotChoi())%>
                    </p>
                </section>
            </article>
            <% }%>
        </section>
    </section>

    <section class="game-choinhieunhat">
        <header class="title-game-choinhieunhat">Game yêu thích nhiều nhất</header>
        <section class="content-game-choinhieunhat">
            <%
                int count_3 = 0;
                int size_3 = listGameYeuThichNhat.size();
                for (Game item : listGameYeuThichNhat) {
                    count_3++;
                    String className = (count_3 % size_3 == 0) ? "box-game-choinhieunhat-last" : "box-game-choinhieunhat";
            %>
            <article class="<%= className %>">
                <a href="playgame.jsp?id=<%= item.getGameID() %>"><img
                        src="<%= request.getContextPath() %>/template/games/img/<%= item.getGameImage() %>"
                        alt="<%= item.getGameName() %>"></a>
                <section>
                    <a href="playgame.jsp?id=<%= item.getGameID() %>"><h5><%= Helper.cutString(item.getGameName(), 10)%>
                    </h5></a>
                    <p>Lượt yêu thích: <%= Helper.fomatNumber(item.getGameLuotChoi())%>
                    </p>
                </section>
            </article>
            <% }%>
        </section>
    </section>
</aside>

