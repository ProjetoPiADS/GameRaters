package dao;

import model.Car;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CarDao {
    public void createCar(Car car) {

        String SQL = "INSERT INTO CAR (NAME, DESCRICAO, IMGURL) VALUES (?, ?, ?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            // Obtenha os valores dos novos campos do objeto Car
            preparedStatement.setString(1, car.getName());
            preparedStatement.setString(2, car.getDescricao()); // Campo de descrição
            preparedStatement.setString(3, car.getImgurl());    // Campo de URL da imagem
            preparedStatement.execute();

            System.out.println("Success in insert car");

            connection.close();

        } catch (Exception e) {

            System.out.println("Fail in database connection");

        }

    }


    public List<Car> findAllCars() {

        String SQL = "SELECT * FROM CAR";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Car> cars = new ArrayList<>();

            while (resultSet.next()) {
                int carID = resultSet.getInt("id");
                String carName = resultSet.getString("Name");
                String carDesc = resultSet.getString("descricao");
                String carImg= resultSet.getString("imgurl");


                Car car = new Car(carName, carID, carDesc, carImg) ;

                cars.add(car);

            }

            System.out.println("success in select * car");

            connection.close();

            return cars;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }
    public void deleteCarById(String carId) {

        String SQL = "DELETE CAR WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, carId);
            preparedStatement.execute();

            System.out.println("success on delete car with id: " + carId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public void updateCar(Car car) {

        String SQL = "UPDATE CAR SET NAME = ?, DESCRICAO = ?, IMGURL = ? WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, car.getName());
            preparedStatement.setString(2, car.getDescricao());
            preparedStatement.setString(3, car.getImgurl());
            preparedStatement.setInt(4, car.getId());

            preparedStatement.executeUpdate(); // Use executeUpdate() para atualizações

            System.out.println("success in update car");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }


    }

}
