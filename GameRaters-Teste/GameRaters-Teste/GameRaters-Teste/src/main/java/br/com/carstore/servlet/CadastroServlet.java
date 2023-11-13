package br.com.carstore.servlet;

import dao.UsuarioDao;
import model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CadastroServlet")
public class CadastroServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String nick = request.getParameter("nick");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        UsuarioDao usuarioDao = new UsuarioDao();


        Usuario novoUsuario = new Usuario(0, nome, email, nick, senha);


        if (usuarioDao.inserirUsuario(novoUsuario)) {

            response.sendRedirect("Login.jsp");
        } else {

            response.sendRedirect("../Cadastro/Cadastro.jsp");
        }
    }
}