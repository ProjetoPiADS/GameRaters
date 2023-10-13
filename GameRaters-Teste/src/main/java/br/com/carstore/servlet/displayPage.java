package br.com.carstore.servlet;


import dao.CarDao;
import model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/display-page")
public class displayPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Car> cars = new CarDao().findAllCars();

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        PrintWriter out = resp.getWriter();
        out.print("[");
        for (int i = 0; i < cars.size(); i++) {
            Car car = cars.get(i);
            out.print("{");
            out.print("\"name\":\"" + car.getName() + "\",");
            out.print("\"descricao\":\"" + car.getDescricao() + "\",");
            out.print("\"imgurl\":\"" + car.getImgurl() + "\"");
            out.print("}");
            if (i < cars.size() - 1) {
                out.print(",");
            }
        }
        out.print("]");




    }

}
