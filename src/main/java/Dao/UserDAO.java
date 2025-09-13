package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.User;
import Utils.DBConnection;
import Utils.PasswordUtil;

public class UserDAO {
    private final Connection connection = DBConnection.getConnection();

    public User getUserInformation(String email, String password) {
        try (
                PreparedStatement statement = connection.prepareStatement("SELECT * FROM Users WHERE email = ? ")
        ) {
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                String hashedPassword = rs.getString("password_hash");
                if (PasswordUtil.checkPassword(password, hashedPassword)) {
                    return retrieveInformationAdmin(rs);
                } else {
                    return null;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public User retrieveInformationAdmin(ResultSet rs) throws SQLException {
        return new User(rs.getInt("user_id"), rs.getString("username"), rs.getString("email"),
                rs.getString("password_hash"), rs.getString("role"), rs.getString("level"),
                rs.getString("target"), rs.getString("created_at"), rs.getString("last_login"), rs.getBoolean("is_active"));
    }
}
