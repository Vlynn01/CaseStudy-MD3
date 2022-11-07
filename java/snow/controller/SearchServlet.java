package snow.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import snow.dao.GameDAO;
import snow.model.Game;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SearchServlet extends HttpServlet {

    GameDAO gameDAO = new GameDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String keyword = req.getParameter("keyword");
        int position = Integer.parseInt(req.getParameter("keyword"));
        int item = Integer.parseInt(req.getParameter("keyword"));

        String xhtml = "";
        try {
            int count = 0;
            count++;
            String className = (count % 4 == 0) ? "box-game-last" : "box-game";
            for (Game game : gameDAO.getListGameSearch(keyword, position, item)) {
                xhtml += "                    <article class=\"" + className + "\">"
                        + "                        <a href=\"playgame.jsp?id=" + game.getGameID() + "\">"
                        + "                 <img src=\"" + req.getContextPath() + "/template/games/img/" + game.getGameImage() + "\" "
                        + "                 alt=\"" + game.getGameName() + "\"></a>"
                        + "                        <section>"
                        + "                            <a href=\"playgame.jsp?id=" + game.getGameID() + "\"><h5>Đua xe địa hình</h5></a>"
                        + "                            <p>Lượt chơi: " + game.getGameLuotChoi() + "</p>"
                        + "                        </section>"
                        + "                    </article>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoadGameServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        resp.getWriter().print(xhtml);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
