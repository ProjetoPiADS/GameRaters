package dao;

import java.sql.*;

public class UsuarioDao {

    private Connection connection;

    public UsuarioDao() {
        try {

            connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean verificarCredenciais(String email, String senha) {
        String sql = "SELECT * FROM usuarios WHERE email = ? AND senha = ?";
        try (
                PreparedStatement preparedStatement = connection.prepareStatement(sql)
        ) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, senha);
            ResultSet resultSet = preparedStatement.executeQuery();

            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
