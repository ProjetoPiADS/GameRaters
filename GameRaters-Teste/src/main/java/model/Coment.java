package model;

public class Coment {
    private int id;

    private String conteudo;

    public Coment(int idComentario, String conteudo) {
        this.id = idComentario;
        this.conteudo = conteudo;
    }

    public Coment(String conteudo) {

    }

    public int getIdComentario() {
        return id;
    }

    public void setIdComentario(int idComentario) {
        this.id = idComentario;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }


}