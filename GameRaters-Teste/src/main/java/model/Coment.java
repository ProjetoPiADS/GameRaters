package model;

public class Coment {
    private String Contedudo;
    private Car car;
    private Usuario usuario;

    public Coment(String comentario, Car car, Usuario usuario) {
        Contedudo = comentario;
        this.car = car;
        this.usuario = usuario;
    }

    public Coment(int idComentario, int idUsuario, int idCar, String conteudo) {
    }

    public String getComentario() {
        return Contedudo;
    }

    public void setComentario(String comentario) {
        Contedudo = comentario;
    }

    public int getCar() {
        return car.getId();
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public int getUsuario() {
        return usuario.getId();
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
