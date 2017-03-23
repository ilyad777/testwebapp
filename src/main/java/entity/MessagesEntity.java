package entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "messages", schema = "public", catalog = "testWebApp")
public class MessagesEntity {
    private int id;
    private String text;
    private Timestamp date;
    private String usersLogin;
    private int articlesId;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "text")
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Basic
    @Column(name = "date")
    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    @Basic
    @Column(name = "users_login")
    public String getUsersLogin() {
        return usersLogin;
    }

    public void setUsersLogin(String usersLogin) {
        this.usersLogin = usersLogin;
    }

    @Basic
    @Column(name = "articles_id")
    public int getArticlesId() {
        return articlesId;
    }

    public void setArticlesId(int articlesId) {
        this.articlesId = articlesId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MessagesEntity that = (MessagesEntity) o;

        if (id != that.id) return false;
        if (articlesId != that.articlesId) return false;
        if (text != null ? !text.equals(that.text) : that.text != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (usersLogin != null ? !usersLogin.equals(that.usersLogin) : that.usersLogin != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (text != null ? text.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (usersLogin != null ? usersLogin.hashCode() : 0);
        result = 31 * result + articlesId;
        return result;
    }
}
