package dao;
import model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class userDao {
    public List<User> showUserName() {
        String SQL = "SELECT NOME FROM USUARIO";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<User> users = new ArrayList<>();

            while (resultSet.next()) {

                String userName = resultSet.getString("NOME");

                User user = new User(userName);
                users.add(user);

            }
            System.out.println("success in select NOME, IMG from user");

            connection.close();

            return users;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }

    public List<String> showURL() {

        String SQL = "SELECT IMG FROM USUARIO";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<String> users = new ArrayList<>();

            while (resultSet.next()) {

                String imgURL = resultSet.getString("IMG");

                users.add(imgURL);

            }
            System.out.println("success in select NOME, IMG from user");

            connection.close();

            return users;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }
}
