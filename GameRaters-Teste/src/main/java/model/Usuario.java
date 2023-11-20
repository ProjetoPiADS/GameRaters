package model;

public class Usuario {
    private int Id;
    private String name;
    private String Email;
    private String Nick;
    private String Senha;
    private String url;

    public Usuario(int id, String name, String email, String nick, String senha, String url) {
        this.Id = id;
        this.name = name;
        this.Email = email;
        this.Nick = nick;
        this.Senha = senha;
        this.url = url;
    }

    public Usuario() {

    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getNick() {
        return Nick;
    }

    public void setNick(String nick) {
        Nick = nick;
    }

    public String getSenha() {
        return Senha;
    }

    public void setSenha(String senha) {
        Senha = senha;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}