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
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/exibir-coment")
    public class ExibirComentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Coment> coments = new ComentarioDao().ExibirComent();

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        PrintWriter out = resp.getWriter();
        out.print("[");
        for (int i = 0; i < coments.size(); i++) {
            Coment coment = coments.get(i);
            out.print("{");
            out.print("\"Comentario\":\"" + coment.getIdComentario() + "\",");
            out.print("\"jogo\":\"" + coment.getId() + "\",");
            out.print("\"conteudo\":\"" + coment.getConteudo() + "\"");
            out.print("}");
            if (i < coments.size() - 1) {
                out.print(",");
            }
        }
        out.print("]");




    }

}
