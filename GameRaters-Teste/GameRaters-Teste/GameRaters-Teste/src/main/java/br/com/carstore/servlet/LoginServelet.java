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
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        UsuarioDao usuarioDao = new UsuarioDao();

        if (usuarioDao.verificarCredenciais(email, senha)) {
            // Credenciais válidas, redireciona para a página principal
            response.sendRedirect("index.jsp");
        } else {
            // Credenciais inválidas, redireciona para a página de login com mensagem de erro
            response.sendRedirect("Login.jsp?erro=1");
        }
    }
}