package Dao;

import Utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Model.Category;

public class CategoryDAO {
    private static final Connection conn = DBConnection.getConnection();


    public static List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<>();
        try (PreparedStatement statement = conn.prepareStatement("SELECT * FROM Categories")){
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("category_id"));
                category.setName(rs.getString("category_name"));
                category.setDescription(rs.getString("description"));
                category.setCreatedAt(rs.getTimestamp("created_at"));
                categories.add(category);
            }
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
        return categories;
    }
}
