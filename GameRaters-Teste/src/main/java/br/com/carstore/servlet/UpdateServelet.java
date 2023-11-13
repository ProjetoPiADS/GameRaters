package br.com.carstore.servlet;

import dao.CarDao;
import model.Car;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateServelet {
    @WebServlet("/create-car")
    public class UpdadetServelet extends HttpServlet {

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

            String carId = req.getParameter("id");
            String carName = req.getParameter("car-name");
            String carDescription = req.getParameter("car-description");
            String carImgUrl = req.getParameter("car-imgurl");

            Car car = new Car(carName);
            CarDao carDao = new CarDao();

            new CarDao().createCar(car);

            if (carId.isBlank()) {

                carDao.createCar(car);

            } else {

                carDao.updateCar(car);
            }


            resp.sendRedirect("/find-all-cars");
        }
    }
}
