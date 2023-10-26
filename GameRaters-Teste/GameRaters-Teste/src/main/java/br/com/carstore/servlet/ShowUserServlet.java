package br.com.carstore.servlet;

import dao.userDao;
import model.User;

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

        List<String> users = new userDao().showUserName();
        List<String> imgURLs = new userDao().showURL();

        req.setAttribute("users", users);
        req.setAttribute("imgURLs", imgURLs);
    }
}
