package br.com.gameraters.servlet;

import br.com.gameraters.dao.userDao;
import br.com.gameraters.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/show-user-name")
public class ShowUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

        List<User> users = new userDao().showUserName();

        req.setAttribute("users", users);
    }
}
