package br.com.carstore.servlet;

import dao.CarDao;
import dao.ComentarioDao;
import model.Car;
import model.Coment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/comentServlet")
public class ComentarioServlet extends HttpServlet {

    private ComentarioDao comentarioDao = new ComentarioDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String conteudo = request.getParameter("comentario");

            Coment coment = new Coment(conteudo);

            comentarioDao.adicionarComentario(coment);

            response.sendRedirect("jogos.jsp");

            String comentario = request.getParameter("comentario");


            System.out.println("comentario: " + comentario );
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erro ao processar o comentário.");
        }
    }
}
