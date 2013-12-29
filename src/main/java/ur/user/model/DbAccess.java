package ur.user.model;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class DbAccess {
    private Connection connect = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public void insertUser(String username, String email, String name, String password) throws Exception {
        this.connectDataBase();
        preparedStatement = connect.prepareStatement("insert into users value (?,?,?,?)");
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, email);
        preparedStatement.setString(3, name);
        preparedStatement.setString(4, password);
        preparedStatement.executeUpdate();
        connect.close();

    }

    public void assignRole(String username) throws Exception {
        this.connectDataBase();
        preparedStatement = connect.prepareStatement("insert into user_roles value(?,?)");
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, "user");
        preparedStatement.executeUpdate();
        connect.close();

    }

    private void connectDataBase() throws Exception {
        try {
            String driver = null;
            try {
                driver = prop().getProperty("jdbc.driver");
            } catch (Exception e) {
                System.err.println("driver e. " + e);
            }
            String dbUrl = prop().getProperty("jdbc.url");
            String user = prop().getProperty("jdbc.user");
            String password = prop().getProperty("jdbc.password");

            Class.forName(driver);
            connect = DriverManager.getConnection(dbUrl, user, password);
            System.out.println("connect: " + connect);
            //return connect;
        } catch (Exception e) {
            System.err.println("connectDataBase e: " + e.toString());
            System.err.println("Unable to connect to DB");
        }
    }

    private Properties prop () {
        Properties properties = new Properties();
        try {
            properties.load(new FileInputStream("/home/jens/workspace/examples/javaKurs/ur-der-user/config/database.properties"));
        } catch (IOException e) {
            System.err.println("prop() e: " + e);
        }
        return properties;
    }
}
