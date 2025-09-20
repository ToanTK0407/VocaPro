package Dao;

import Model.Word;
import Utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WordDAO {

    public static List<Word> getAllWords() {
        List<Word> words = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement("SELECT * FROM Words");
             ResultSet rs = statement.executeQuery();) {

            while (rs.next()) {
                Word word = retrieveWord(rs);
                words.add(word);
            }
            return words;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return words;
    }

    public static Word retrieveWord(ResultSet rs) throws SQLException {
        Word word = new Word();
        word.setId(rs.getInt("word_id"));
        word.setWord(rs.getString("word"));
        word.setMeaning(rs.getString("meaning"));
        word.setIpaPronunciation(rs.getString("ipa_pronunciation"));
        word.setExampleSentence(rs.getString("example_sentence"));
        word.setCategoryId(rs.getInt("category_id"));
        word.setImageURL(rs.getString("image_url"));
        word.setDifficultyLevel(rs.getInt("difficulty_level"));
        word.setSuccessRate(rs.getDouble("success_rate"));
        word.setCreatedAt(rs.getTimestamp("created_at"));
        word.setUpdatedAt(rs.getTimestamp("updated_at"));
        word.setCreatedBy(rs.getInt("created_by"));
        return word;
    }
}
