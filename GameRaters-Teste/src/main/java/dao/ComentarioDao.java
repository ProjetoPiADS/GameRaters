package dao;


import model.Coment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ComentarioDao {

    public void adicionarComentario(Coment coment) {

        String SQL = "INSERT INTO COMENTARIO (CONTEUDO) VALUES (?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            // Obtenha os valores dos novos campos do objeto Car
            preparedStatement.setString(1, coment.getConteudo());

            preparedStatement.execute();

            System.out.println("Success in insert comentario");

            connection.close();

        } catch (Exception e) {

            System.out.println("Fail in database connection");

        }

    }

}
