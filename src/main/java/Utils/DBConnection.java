package Utils;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class DBConnection {
    private static String url = "jdbc:sqlserver://localhost:1433;databaseName=" +
            "English_Vocabulary_Builder;encrypt=true;trustServerCertificate=true;";
    private static final String user = "sa";
    private static final String password = "04072005Toan";
    public static Connection Connection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url,user, password);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
