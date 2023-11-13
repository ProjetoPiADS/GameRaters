package dao;

import java.sql.*;

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
}