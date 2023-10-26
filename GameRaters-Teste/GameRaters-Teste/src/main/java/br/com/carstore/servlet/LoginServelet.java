package br.com.carstore.servlet;
import dao.UsuarioDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServelet")
public class LoginServelet  extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Email = request.getParameter("Email");
        String senha = request.getParameter("senha");
        UsuarioDao Usdao = new UsuarioDao();

        if(Usdao.verificarCredenciais(Email,senha)){
            response.sendRedirect("index.jsp");

        }else
            response.sendRedirect("Login.jsp");
    }
}