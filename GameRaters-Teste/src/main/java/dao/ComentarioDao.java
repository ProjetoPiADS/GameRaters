package dao;


import model.Car;
import model.Coment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ComentarioDao {

    public void adicionarComentario(Coment coment) {

        String SQL = "INSERT INTO COMENTARIO (conteudo) VALUES (?)";

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

    public List<Coment> ExibirComent() {

        String SQL = "SELECT * FROM COMENTARIO";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Coment> coments = new ArrayList<>();

            while (resultSet.next()) {
                int ID = resultSet.getInt("ID");
                String IDcar = resultSet.getString("ID_CAR");
                String CM = resultSet.getString("CONTEUDO");



                Coment coment = new Coment(ID,IDcar,CM) ;

                coments.add(coment);

            }

            System.out.println("success in select * car");

            connection.close();

            return coments;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }

}
