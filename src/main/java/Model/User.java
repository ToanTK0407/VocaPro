package Model;

public class User {
    private int id;
    private String username;
    private String password;
    private String email;
    private String role;
    private String level;
    private String target;
    private String created_at;
    private String last_login;
    private boolean is_active;

    public User (){
    }

    public User(int id, String username, String password, String email, String role, String level, String target, String created_at, String last_login, boolean is_active) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.role = role;
        this.level = level;
        this.target = target;
        this.created_at = created_at;
        this.last_login = last_login;
        this.is_active = is_active;
    }

    public User(String username, String email, String role, String level, String target) {
        this.username = username;
        this.email = email;
        this.role = role;
        this.level = level;
        this.target = target;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getLast_login() {
        return last_login;
    }

    public void setLast_login(String last_login) {
        this.last_login = last_login;
    }

    public boolean isIs_active() {
        return is_active;
    }

    public void setIs_active(boolean is_active) {
        this.is_active = is_active;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
