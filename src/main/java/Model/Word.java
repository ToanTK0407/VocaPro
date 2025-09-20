package Model;

import java.sql.Time;
import java.sql.Timestamp;

public class Word {
    private int id;
    private String word;
    private String meaning;
    private String ipaPronunciation;
    private String exampleSentence;
    private int categoryId;
    private String imageURL;
    private int difficultyLevel;
    private double successRate;
    private Timestamp createdAt;
    private Timestamp  updatedAt;
    private int createdBy;

    public Word() {
    }

    public Word(int id, String word, String meaning, String ipaPronunciation, String exampleSentence, int categoryId, String imageURL, int difficultyLevel, double successRate, Timestamp createdAt, Timestamp updatedAt, int createdBy) {
        this.id = id;
        this.word = word;
        this.meaning = meaning;
        this.ipaPronunciation = ipaPronunciation;
        this.exampleSentence = exampleSentence;
        this.categoryId = categoryId;
        this.imageURL = imageURL;
        this.difficultyLevel = difficultyLevel;
        this.successRate = successRate;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.createdBy = createdBy;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public String getMeaning() {
        return meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public String getIpaPronunciation() {
        return ipaPronunciation;
    }

    public void setIpaPronunciation(String ipaPronunciation) {
        this.ipaPronunciation = ipaPronunciation;
    }

    public String getExampleSentence() {
        return exampleSentence;
    }

    public void setExampleSentence(String exampleSentence) {
        this.exampleSentence = exampleSentence;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public int getDifficultyLevel() {
        return difficultyLevel;
    }

    public void setDifficultyLevel(int difficultyLevel) {
        this.difficultyLevel = difficultyLevel;
    }

    public double getSuccessRate() {
        return successRate;
    }

    public void setSuccessRate(double successRate) {
        this.successRate = successRate;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    public int getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(int createdBy) {
        this.createdBy = createdBy;
    }
}
