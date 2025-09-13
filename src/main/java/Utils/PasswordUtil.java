package Utils;
import org.mindrot.jbcrypt.BCrypt;
public class PasswordUtil {
    private static final int costFactor = 12;
    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(costFactor));
    }

    public static boolean checkPassword(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }
}
