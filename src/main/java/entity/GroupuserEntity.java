package entity;

import javax.persistence.*;

@Entity
@Table(name = "groupuser", schema = "public", catalog = "testWebApp")
public class GroupuserEntity {
    private String name;
    private String usersLogin;

    @Id
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "users_login")
    public String getUsersLogin() {
        return usersLogin;
    }

    public void setUsersLogin(String usersLogin) {
        this.usersLogin = usersLogin;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GroupuserEntity that = (GroupuserEntity) o;

        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (usersLogin != null ? !usersLogin.equals(that.usersLogin) : that.usersLogin != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (usersLogin != null ? usersLogin.hashCode() : 0);
        return result;
    }
}
