package br.com.carstore.servlet;

import dao.UsuarioDao;
import model.Usuario;

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

        List<Usuario> users = new UsuarioDao().showUserName();

        req.setAttribute("users", users);

        req.getRequestDispatcher("profile.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getParameter("url");
        String nome = req.getParameter("nome");
        String nick = req.getParameter("nick");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        int id = Integer.parseInt(req.getParameter("id"));

        UsuarioDao usuariodao = new UsuarioDao();
        Usuario user = new Usuario(id, nome, email, nick, senha, url);

        usuariodao.updateProfile(user);

        resp.sendRedirect("/show-user-name");
    }
}
