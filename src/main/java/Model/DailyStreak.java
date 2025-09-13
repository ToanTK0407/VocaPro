package Model;

public class DailyStreak {
    private int id;
    private int userId;
    private String streakDate;
    private int wordsPracticed;
    private int sessionsCompleted;
    private boolean isActive;

    public DailyStreak() {
    }

    public DailyStreak(int id, int userId, String streakDate, int wordsPracticed, int sessionsCompleted, boolean isActive) {
        this.id = id;
        this.userId = userId;
        this.streakDate = streakDate;
        this.wordsPracticed = wordsPracticed;
        this.sessionsCompleted = sessionsCompleted;
        this.isActive = isActive;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getStreakDate() {
        return streakDate;
    }

    public void setStreakDate(String streakDate) {
        this.streakDate = streakDate;
    }

    public int getWordsPracticed() {
        return wordsPracticed;
    }

    public void setWordsPracticed(int wordsPracticed) {
        this.wordsPracticed = wordsPracticed;
    }

    public int getSessionsCompleted() {
        return sessionsCompleted;
    }

    public void setSessionsCompleted(int sessionsCompleted) {
        this.sessionsCompleted = sessionsCompleted;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }
}
