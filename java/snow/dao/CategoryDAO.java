package snow.dao;

import snow.connect.DBConnect;
import snow.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class CategoryDAO {
    public ArrayList<Category> getListCategory() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String query = "SELECT * FROM `theloaigame` WHERE `visiable` = 1 ORDER BY `ordering` ASC";
        PreparedStatement ps = connection.prepareStatement(query);
        ResultSet result = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();

        while (result.next()) {
            Category category = new Category();
            category.setCategoryID(result.getInt("id_theloai"));
            category.setCategoryName(result.getString("tentheloai"));
            boolean visiableMenu = (result.getByte("visiable_menu") != 0);
            category.setVisiableMenu(visiableMenu);
            list.add(category);
        }
        DBConnect.closeConnection(connection);
        return list;
    }

    public ArrayList<Category> getListCategoryByAmount(int amount) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String query = "SELECT * FROM `theloaigame`" + " WHERE `visiable` = 1 ORDER BY `ordering` ASC LIMIT 0, " + amount;
        PreparedStatement ps = connection.prepareStatement(query);
        ResultSet result = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();

        while (result.next()) {
            Category category = new Category();
            category.setCategoryID(result.getInt("id_theloai"));
            category.setCategoryName(result.getString("tentheloai"));
            boolean visiableMenu = (result.getByte("visiable_menu") != 0) ? true : false;
            category.setVisiableMenu(visiableMenu);
            list.add(category);
        }
        DBConnect.closeConnection(connection);
        return list;
    }

    public String getNameCategory(int id_theloai) throws SQLException {
        String name = "";
        Connection connection = DBConnect.getConnection();
        String query = "SELECT tentheloai FROM `theloaigame`"
                + " WHERE `visiable` = 1 AND `id_theloai`= '" + id_theloai + "' ";
        PreparedStatement ps = connection.prepareStatement(query);
        ResultSet result = ps.executeQuery();
        if (result.next()) {
            name = result.getString("tentheloai");
        }
        DBConnect.closeConnection(connection);
        return name;
    }

    public static void main(String[] args) throws SQLException {
        CategoryDAO categoryDAO = new CategoryDAO();
        for (Category category : categoryDAO.getListCategory()) {
            System.out.println(category.getCategoryID() + " " + category.getCategoryName());
        }
        System.out.println(categoryDAO.getNameCategory(1));
    }
}

