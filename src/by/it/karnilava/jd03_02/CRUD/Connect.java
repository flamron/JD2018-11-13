package by.it.karnilava.jd03_02.CRUD;

import java.sql.*;

public class Connect {

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private static volatile Connection connection;

    public static Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            synchronized (Connect.class) {
                if (connection == null || connection.isClosed()) {
                    connection = DriverManager.getConnection(ConnectionSettings.URL, ConnectionSettings.USER, ConnectionSettings.PASSWORD);
                }
            }
        }
        return connection;
    }


}
