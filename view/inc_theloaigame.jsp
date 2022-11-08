<%@ page import="snow.dao.GameDAO" %>
<%@ page import="snow.dao.AdvertisingDAO" %>
<%@ page import="snow.model.Game" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="snow.model.Advertising" %>
<%@ page import="snow.tool.Helper" %>
<%@ page import="snow.tool.Pagination" %>
<%@ page import="snow.dao.CategoryDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    //Điều hướng Redirect 404
    int id_theloai = 1;
    int paramPage = 1;

    if (request.getParameter("id") != null) {
        try {
            id_theloai = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    if (request.getParameter("page") != null) {
        try {
            paramPage = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }
    GameDAO gameDAO = new GameDAO();
    AdvertisingDAO advertisingDAO = new AdvertisingDAO();
    CategoryDAO categoryDAO = new CategoryDAO();

    String nameCategory = categoryDAO.getNameCategory(id_theloai);


    //List Gamehot & Game yêu thích
    ArrayList<Game> listGameHot = gameDAO.getListGameHotByCategory(id_theloai);
    ArrayList<Game> listGameYeuThichNhat = gameDAO.getListGameYeuThichNhatCategory(id_theloai);


    //Phần phân trang
    int amountItem = gameDAO.countGameByCategory(id_theloai);
    Pagination pagination = new Pagination(amountItem, 16, 5, paramPage);
    String link = "theloaigame.jsp?id=" + id_theloai;
    String showPagination = pagination.showPagination(link);

    //List Game theo page
    ArrayList<Game> listGame = gameDAO.getListGameByCategoryAndPage(id_theloai, pagination.getCurrentPage(), pagination.getTotalItemsPerPage());


%>


<section class="content-left">
    <section class="game-hot">
        <section class="slider">
            <div id="wowslider-container1">
                <div class="ws_images">
                    <ul>
                        <% for (int i = 0; i < 5; i++) { %>
                        <li><a href="playgame.jsp?id=<%= listGameHot.get(i).getGameID() %>" target="_self">
                            <img
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
                        <a href="#" title="game_1">1</a>
                        <a href="#" title="game_2">2</a>
                        <a href="#" title="game_3">3</a>
                        <a href="#" title="game_4">4</a>
                        <a href="#" title="game_5">5</a>
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
                    <h3><a href="#"><%= listGameHot.get(i).getGameName() %>></a></h3>
                </article>
                    <% }%>
        </aside>
    </section>

    <section class="game-cung-theloai">

        <header class="title-game-cung-theloai">
            <section class="tentheloai"><a><%= nameCategory%>
            </a></section>
        </header>

        <section class="list-game">
            <%
                int count_3 = 0;
                for (Game item : listGame) {
                    count_3++;
                    String className = (count_3 % 4 == 0) ? "box-game-last" : "box-game";
            %>
            <article class="<%= className %>">
                <a href="playgame.jsp?id=<%= item.getGameID()%>">
                    <img src="<%= request.getContextPath()%>/template/games/img/<%= item.getGameImage()%>"
                         alt="<%=item.getGameName()%>"></a>
                <section>
                    <a href="playgame.jsp?id=<%= item.getGameID()%>">
                        <h5><%= Helper.cutString(item.getGameName(), 20)%>
                        </h5>
                    </a>
                    <p> Lượt chơi: <%= Helper.fomatNumber(item.getGameLuotChoi())%>
                    </p>
                </section>


            </article>
            <%}%>

            <div style="text-align: center;">
                <%= showPagination%>
            </div>
        </section>
    </section>
</section>

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
        <header class="title-game-choinhieunhat">Game yêu thích nhiều nhất</header>
        <section class="content-game-choinhieunhat">
            <%
                int count_2 = 0;
                int size_2 = listGameYeuThichNhat.size();
                for (Game item : listGameYeuThichNhat) {
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
                    <p>Lượt thích: <%= Helper.fomatNumber(item.getGameLuotChoi())%>
                    </p>
                </section>
            </article>
            <% }%>
        </section>
    </section>
</aside>
