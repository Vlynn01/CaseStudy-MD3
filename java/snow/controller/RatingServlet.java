package snow.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import snow.dao.GameDAO;
import snow.tool.Helper;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RatingServlet extends HttpServlet {
    GameDAO gameDAO = new GameDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int count = Integer.parseInt(req.getParameter("count"));
        int id_game = Integer.parseInt(req.getParameter("id_game"));
        boolean increment = (count % 2 == 1);
        try {
            gameDAO.updateLuotYeuThich(id_game, increment);
            resp.getWriter().print(Helper.fomatNumber(gameDAO.getLuotYeuThich(id_game)));
        } catch (SQLException ex) {
            Logger.getLogger(RatingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        resp.getWriter().print("Hello");
    }
}
