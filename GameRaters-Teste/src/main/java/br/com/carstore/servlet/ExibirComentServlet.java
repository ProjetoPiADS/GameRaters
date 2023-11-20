package br.com.carstore.servlet;

import dao.ComentarioDao;
import model.Coment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/exibirComentarios")
public class ExibirComentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ComentarioDao comentDAO = new ComentarioDao();
        List<Coment> comentarios = comentDAO.ExibirComent();

        // Configurar o tipo de conteúdo da repost
        response.setContentType("text/html;charset=UTF-8");

        // Escrever os comentários na resposta
        PrintWriter out = response.getWriter();
        ((PrintWriter) out).println("<html>");
        out.println("<head><title>Comentários</title></head>");
        out.println("<body>");

        if (comentarios.isEmpty()) {
            out.println("<p>Nenhum comentário encontrado.</p>");
        } else {
            out.println("<ul>");
            for (Coment coment : comentarios) {
                out.println(coment.getConteudo() );
            }
            out.println("</ul>");
        }

        out.println("</body>");
        out.println("</html>");
    }
}