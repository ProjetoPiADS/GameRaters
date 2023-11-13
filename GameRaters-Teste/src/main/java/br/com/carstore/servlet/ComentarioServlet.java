package br.com.carstore.servlet;

import dao.ComentarioDao;
import model.Coment;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/AdicionarComentarioServlet")
public class ComentarioServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            // Obtenha os parâmetros do formulário AJAX
            int idUsuario = Integer.parseInt(request.getParameter("Usuario")); // Substitua pelo método correto para obter o ID do usuário logado
            int idCar = Integer.parseInt(request.getParameter("Car")); // Substitua pelo método correto para obter o ID do carro/jogo
            String conteudo = request.getParameter("comentario");

            // Crie o objeto Comentario
            Coment comentario = new Coment(0, idUsuario, idCar, conteudo); // O ID é 0 porque geralmente é autoincrementado no banco

            // Adicione o comentário ao banco de dados
            ComentarioDao comentarioDAO = new ComentarioDao();
            comentarioDAO.adicionarComentario(comentario);

            // Obtenha os comentários atualizados
            List<Coment> comentariosAtualizados = comentarioDAO.obterComentariosPorCar(idCar);

            // Construa uma representação JSON manualmente
            StringBuilder jsonComentarios = new StringBuilder("[");
            for (Coment c : comentariosAtualizados) {
                jsonComentarios.append("{")
                        .append("\"idUsuario\":").append(c.getUsuario()).append(",")
                        .append("\"idCar\":").append(c.getCar()).append(",")
                        .append("\"conteudo\":\"").append(c.getComentario()).append("\"")
                        .append("},");
            }
            if (jsonComentarios.length() > 1) {
                jsonComentarios.setLength(jsonComentarios.length() - 1); // Remova a vírgula extra
            }
            jsonComentarios.append("]");

            // Escreva a resposta JSON de volta ao cliente
            System.out.println("Servlet chamado com sucesso.");

            // Escreva a resposta JSON de volta ao cliente
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonComentarios.toString());
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Erro ao processar a requisição.");
        }

    }
}