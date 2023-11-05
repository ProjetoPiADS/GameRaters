package model;

public class Usuario {
    private int Id;
    private String name;
    private String Email;
    private String Nick;
    private String Senha;

    public Usuario(int id, String name, String email, String nick, String senha) {
        this.Id = id;
        this.name = name;
        this.Email = email;
        this.Nick = nick;
        this.Senha = senha;
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
}