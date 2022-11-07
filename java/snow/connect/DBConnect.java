package snow.connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    public static Connection getConnection() {
        Connection connection = null;
        try {
            //Step 1: Đăng ký Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //Step 2: Open Connection
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/game", "root", "12345678");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void closeConnection(Connection connection) {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println(getConnection());
    }
}
