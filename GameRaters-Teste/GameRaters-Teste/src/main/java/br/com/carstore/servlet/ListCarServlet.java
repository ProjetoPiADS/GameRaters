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

    @WebServlet("/find-all-cars")
    public class ListCarServlet extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            List<Car> cars = new CarDao().findAllCars();

            req.setAttribute("cars", cars);

            req.getRequestDispatcher("dashboard.jsp").forward(req, resp);





        }

    }
