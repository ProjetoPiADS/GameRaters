package dao;

import model.Coment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class ComentarioDao {

    private Connection connection;

    public ComentarioDao() {
        try {
            connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean adicionarComentario(Coment comentario) {
        String sql = "INSERT INTO comentarios (usuario, car, comentario) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, comentario.getUsuario());
            preparedStatement.setInt(2, comentario.getCar());
            preparedStatement.setString(3, comentario.getComentario());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Coment> obterComentariosPorCar(int idCar) {
        List<Coment> comentarios = new ArrayList<>();
        String sql = "SELECT * FROM comentarios WHERE id_car = ?";

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, idCar);

            try (var resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int idComentario = resultSet.getInt("id");
                    int idUsuario = resultSet.getInt("id_usuario");
                    String conteudo = resultSet.getString("conteudo");

                    Coment comentario = new Coment(idComentario, idUsuario, idCar, conteudo);
                    comentarios.add(comentario);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return comentarios;
    }
}
