package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import model.Usuario;

public class UsuarioDao {

    private Connection connection;

    public UsuarioDao() {
        try {
            connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean inserirUsuario(Usuario usuario) {
        String sql = "INSERT INTO usuario (nome, email, nick, senha) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, usuario.getName());
            preparedStatement.setString(2, usuario.getEmail());
            preparedStatement.setString(3, usuario.getNick());
            preparedStatement.setString(4, usuario.getSenha());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Erro ao inserir usuário no banco de dados: " + e.getMessage());
        }
        return false;
    }

    public Usuario obterUsuarioPorCredenciais(String email, String senha) {
        String sql = "SELECT * FROM usuario WHERE email = ? AND senha = ? LIMIT 1";

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, senha);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    Usuario usuario = new Usuario();
                    usuario.setId(resultSet.getInt("id"));
                    usuario.setName(resultSet.getString("nome"));
                    usuario.setEmail(resultSet.getString("email"));
                    usuario.setNick(resultSet.getString("nick"));
                    usuario.setSenha(resultSet.getString("senha"));

                    return usuario;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Erro ao obter usuário por credenciais: " + e.getMessage());
        }

        return null;
    }

    public List<Usuario> showUserName() {
        String SQL = "SELECT NOME FROM USUARIO";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Usuario> users = new ArrayList<>();

            while (resultSet.next()) {

                String userName = resultSet.getString("NOME");

                Usuario user = new Usuario(0,userName, null, null, null);
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
}