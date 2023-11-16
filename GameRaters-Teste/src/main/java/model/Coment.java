package model;

public class Coment {
    private int idComentario;
    private String id;
    private String conteudo;

    public Coment(int idComentario, String id, String conteudo) {
        this.idComentario = idComentario;
        this.id = id;
        this.conteudo = conteudo;
    }

    public Coment(String conteudo) {

    }



    public int getIdComentario() {
        return idComentario;
    }

    public void setIdComentario(int idComentario) {
        this.idComentario = idComentario;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}