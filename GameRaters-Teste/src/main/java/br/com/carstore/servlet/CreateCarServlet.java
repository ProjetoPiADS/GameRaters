package br.com.carstore.servlet;

import dao.CarDao;
import model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-car")
public class CreateCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String carName = request.getParameter("car-name");
        String carDescription = request.getParameter("car-description");
        String carImgUrl = request.getParameter("car-imgurl");
        String carId = request.getParameter("car-id");

        Car car = new Car(carName);
        car.setDescricao(carDescription);
        car.setImgurl(carImgUrl);

        CarDao carDao = new CarDao();

        if (carId != null && !carId.isBlank()) {

            car.setId((int) Long.parseLong(carId));
            carDao.updateCar(car);
        } else {

            carDao.createCar(car);
        }

        response.sendRedirect("/find-all-cars");
    }


}
