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
            // Obtém o parâmetro do comentário do formulário
            String conteudo = request.getParameter("comentario");

            // Cria uma instância de Coment com o conteúdo do formulário
            Coment coment = new Coment(conteudo);

            // Adiciona o comentário usando o DAO
            comentarioDao.adicionarComentario(coment);

            // Redireciona para a página interna (interno.jsp)
            response.sendRedirect("interno.jsp");

            // Move this line inside the try block if needed
            String comentario = request.getParameter("comentario");
            System.out.println("Comentario: " + comentario);
        } catch (Exception e) {
            // Trate exceções de maneira apropriada, por exemplo, registre ou envie para uma página de erro
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erro ao processar o comentário.");
        }
    }
}
