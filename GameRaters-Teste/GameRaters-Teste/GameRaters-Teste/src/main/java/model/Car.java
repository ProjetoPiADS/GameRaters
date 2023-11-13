package model;

public class Car {

    private String name;
    private int id;
    private String descricao;
    private String imgurl;

    public Car(String name, int id, String descricao, String imgurl) {
        this.name = name;
        this.id = id;
        this.descricao = descricao;
        this.imgurl = imgurl;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Car(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
