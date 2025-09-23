<%--
  Created by IntelliJ IDEA.
  User: KHAI TOAN
  Date: 9/13/2025
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?v=<%= System.currentTimeMillis()%>">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=<%= System.currentTimeMillis()%>">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
</head>
<body>
<c:choose>
    <c:when test="${not empty sessionScope.user}">
        <%@ include file="/WEB-INF/views/header/header_login.jsp" %>
    </c:when>
    <c:otherwise>
        <%@ include file="/WEB-INF/views/header/header_unlogin.html" %>
    </c:otherwise>
</c:choose>
<%@ include file="/WEB-INF/views/header/header_category.jsp" %>
<main class="vocabulary-main">
    <div class="vocabulary-container">
        <!-- RIGHT SIDE - Function Panel -->
        <div class="function-panel">
            <!-- Study Modes -->
            <div class="function-card">
                <h3><i class="fas fa-graduation-cap"></i> Study Mode</h3>
                <div class="function-buttons">
                    <button class="function-btn flashcard-btn">
                        <i class="fas fa-clone"></i>
                        <span>Flashcard</span>
                    </button>
                    <button class="function-btn quiz-btn">
                        <i class="fas fa-question-circle"></i>
                        <span>Matching</span>
                    </button>
                    <button class="function-btn practice-btn">
                        <i class="fas fa-pen"></i>
                        <span>Fill the blank</span>
                    </button>
                    <button class="function-btn test-btn">
                        <i class="fas fa-clipboard-check"></i>
                        <span>Exam</span>
                    </button>
                </div>
            </div>
            <div class="function-card">
                <h3><i class="fas fa-list"></i> Quick Operation</h3>
                <div class="function-buttons">
                    <button
                            class="function-btn"
                            style="background: linear-gradient(135deg, #ff6b6b, #ee5a52)"
                    >
                        <i class="fas fa-plus"></i>
                        <span>Add Word</span>
                    </button>
                    <button
                            class="function-btn"
                            style="background: linear-gradient(135deg, #4ecdc4, #44a08d)"
                    >
                        <i class="fas fa-random"></i>
                        <span>Random Word</span>
                    </button>
                    <button
                            class="function-btn"
                            style="background: linear-gradient(135deg, #45b7d1, #96c93d)"
                    >
                        <i class="fas fa-download"></i>
                        <span>Export List</span>
                    </button>
                    <button
                            class="function-btn"
                            style="background: linear-gradient(135deg, #f39c12, #f1c40f)"
                    >
                        <i class="fas fa-cog"></i>
                        <span>Settings</span>
                    </button>
                </div>
            </div>
        </div>


    </div>
    <%--MULTIPLE CHOICE FUNCTION--%>
    <div class="multiple-choice-container" style="display: none; min-width: 800px">
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center">
                <!-- Left Navigation Panel -->

                <div class="col-10">
                    <div class="mc-question-panel">
                        <div class="question-header text-center mb-4">
                            <h3 class="question-title">
                                <i class="fas fa-question-circle text-primary"></i>
                                What is the meaning of:
                            </h3>
                            <div class="mc-word-display">
                                <span class="word-text">Innovation</span>
                                <button
                                        class="btn btn-outline-primary btn-sm ms-2 audio-btn-quiz"
                                >
                                    <i class="fas fa-volume-up"></i>
                                </button>
                            </div>
                            <div class="word-phonetic text-muted">/ˌɪn.əˈveɪ.ʃən/</div>
                        </div>

                        <div class="mc-options-grid">
                            <div class="row g-3">
                                <div class="col-6">
                                    <button
                                            class="btn btn-outline-secondary w-100 mc-option-btn"
                                            data-answer="correct"
                                    >
                                        <span class="option-letter">A</span>
                                        <span class="option-text">Sự đổi mới, sáng tạo</span>
                                    </button>
                                </div>
                                <div class="col-6">
                                    <button
                                            class="btn btn-outline-secondary w-100 mc-option-btn"
                                            data-answer="wrong"
                                    >
                                        <span class="option-letter">B</span>
                                        <span class="option-text">Công nghệ</span>
                                    </button>
                                </div>
                                <div class="col-6">
                                    <button
                                            class="btn btn-outline-secondary w-100 mc-option-btn"
                                            data-answer="wrong"
                                    >
                                        <span class="option-letter">C</span>
                                        <span class="option-text">Môi trường</span>
                                    </button>
                                </div>
                                <div class="col-6">
                                    <button
                                            class="btn btn-outline-secondary w-100 mc-option-btn"
                                            data-answer="wrong"
                                    >
                                        <span class="option-letter">D</span>
                                        <span class="option-text">Thành tựu</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right Navigation Panel -->
                <div class="col-2">
                    <div class="mc-nav-panel right-panel">
                        <div class="nav-section">
                            <h6 class="nav-title">
                                <i class="fas fa-cog"></i> Actions
                            </h6>
                            <button class="btn btn-outline-info btn-sm w-100 mb-2">
                                <i class="fas fa-flag"></i> Flag
                            </button>
                            <button class="btn btn-outline-secondary btn-sm w-100">
                                <i class="fas fa-times"></i> Skip
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bottom Navigation -->
            <div class="navigation-controls">
                <button class="nav-btn prev-btn" onclick="previousCard()">
                    <i class="fas fa-chevron-left"></i> Previous
                </button>
                <div class="progress-info">
                    <span class="progress-text">1/8</span>
                </div>
                <button class="nav-btn next-btn" onclick="nextCard()">
                    Next <i class="fas fa-chevron-right"></i>
                </button>
            </div>
        </div>
    </div>
    <%--FLASHCARD FUNCTION--%>
    <div class="flashcard-container" style="display: none">
        <c:choose>

            <c:when test="${not empty words}">
                <c:forEach var="word" items="${words}" varStatus="loop">
                    <div class="flashcard-wrapper" style="${loop.first ? 'display: block;' : 'display: none;'}">
                        <div class="flashcard" onclick="flipCard(this)">
                            <div class="card-face card-front">
                                <button class="audio-btn" onclick="playAudio()">
                                    <i class="fas fa-volume-up"></i>
                                </button>
                                <div class="word-main">${word.word}</div>
                                <div class="word-phonetic">${word.ipaPronunciation}</div>
                                <div class="flip-hint">
                                    <i class="fas fa-mouse-pointer"></i>
                                    Nhấp để xem nghĩa
                                </div>
                            </div>

                            <div class="card-face card-back">
                                <button class="audio-btn" onclick="playAudio()">
                                    <i class="fas fa-volume-up"></i>
                                </button>
                                <div class="word-main">${word.word}</div>
                                <div class="word-phonetic">${word.ipaPronunciation}</div>
                                <div class="word-meaning">${word.meaning}</div>
                                <div class="flip-hint">
                                    <i class="fas fa-mouse-pointer"></i>
                                    Nhấp để quay lại
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div>There is no words in this category now!</div>
            </c:otherwise>
        </c:choose>

        <div class="navigation-controls">
            <button class="nav-btn prevCard-btn" onclick="previousCard()">
                <i class="fas fa-chevron-left"></i> Previous
            </button>
            <div class="progress-info">
                <span class="progress-text"></span>
            </div>
            <button class="nav-btn nextCard-btn" onclick="nextCard()">
                Next <i class="fas fa-chevron-right"></i>
            </button>
        </div>
    </div>
    <%--PRACTICE FUNCTION--%>
    <div class="practice-container" style="display: none">
        <div class="practice-header">
            <h2 class="practice-title">
                <i class="fas fa-clipboard-check"></i>
                Vocabulary Practice
            </h2>
            <p class="practice-subtitle">Translate the Vietnamese meaning to English</p>
        </div>

        <c:choose>
            <c:when test="${not empty words}">
                <c:forEach var="word" items="${words}" varStatus="loop">
                    <div class="question-card" style=${loop.first ? '"display:block"' : '"display:none"'}>
                        <div class="question-number">Question ${loop.index+1}</div>
                        <button class="flag-btn" onclick="toggleFlag()" title="Flag this question">
                            <i class="fas fa-flag"></i>
                        </button>

                        <div class="question-content">
                            <h3 class="question-text">${word.meaning}</h3>
                            <p class="question-hint">Enter the English word for this Vietnamese meaning</p>
                            <div class="answer-feedback"></div>
                            <input
                                    type="text"
                                    class="answer-input"
                                    placeholder="Type your answer here..."
                                    autocomplete="off"
                            />
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div>There is no word in there now!</div>
            </c:otherwise>
        </c:choose>


        <div class="navigation-controls">
            <button class="nav-btn prevPrac-btn">
                <i class="fas fa-chevron-left" onclick="previousPractice()"></i> Previous
            </button>
            <div class="progress-info">
                <span class="progress-question-text">1/8</span>
            </div>
            <button class="nav-btn nextPrac-btn">
                Next <i class="fas fa-chevron-right" onclick="nextPractice()"></i>
            </button>
        </div>
    </div>
    <div class="exam-container" id="examContainer" style="display: none;">
        <div class="container-fluid">
            <div class="row">
                <!-- Main Exam Area -->
                <div class="col-lg-8">
                    <div class="exam-card">
                        <!-- Exam Header -->
                        <div class="exam-header">
                            <div class="exam-timer">
                                <i class="fas fa-clock"></i>
                                <span id="timerDisplay">30:00</span>
                            </div>
                            <h2><i class="fas fa-clipboard-check"></i> Vocabulary Exam</h2>
                            <p class="mb-0">Choose the best answer for each question</p>

                            <!-- Progress Bar -->
                            <div class="exam-progress">
                                <div class="progress" style="height: 8px; border-radius: 10px;">
                                    <div class="progress-bar" id="examProgressBar"
                                         style="width: 12.5%; background: linear-gradient(90deg, #fff, #ffffff80);"></div>
                                </div>
                                <small class="text-white-50 mt-2 d-block">Question <span
                                        id="currentQuestionNum">1</span> of <span id="totalQuestions">8</span></small>
                            </div>
                        </div>

                        <!-- Exam Body -->
                        <div class="exam-body">
                            <div class="question-card">
                                <div class="question-number">Question 1</div>
                                <div class="question-content">
                                    <h3 class="question-text">What is the meaning of: <strong id="examWordText">Innovation</strong>
                                    </h3>
                                    <div class="text-muted mb-4">
                                        <i class="fas fa-volume-up me-2"></i>
                                        <span id="examWordPhonetic">/ˌɪn.əˈveɪ.ʃən/</span>
                                    </div>
                                    <!-- Answer Options -->
                                    <div id="examOptions">
                                        <div class="option-card" data-value="A">
                                            <div class="option-letter-exam">A</div>
                                            <div class="option-text">Sự đổi mới, sáng tạo</div>
                                        </div>
                                        <div class="option-card" data-value="B">
                                            <div class="option-letter-exam">B</div>
                                            <div class="option-text">Công nghệ</div>
                                        </div>
                                        <div class="option-card" data-value="C">
                                            <div class="option-letter-exam">C</div>
                                            <div class="option-text">Môi trường</div>
                                        </div>
                                        <div class="option-card" data-value="D">
                                            <div class="option-letter-exam">D</div>
                                            <div class="option-text">Thành tựu</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Navigation Controls -->
                            <div class="navigation-controls">
                                <button class="nav-btn" id="prevBtn" disabled>
                                    <i class="fas fa-chevron-left"></i> Previous
                                </button>

                                <div class="d-flex gap-2">
                                    <button class="action-btn btn-flag" id="flagBtn">
                                        <i class="fas fa-flag"></i> Flag Question
                                    </button>
                                    <button class="action-btn btn-submit" id="submitExamBtn">
                                        <i class="fas fa-check"></i> Submit Exam
                                    </button>
                                </div>

                                <button class="nav-btn" id="nextBtn">
                                    Next <i class="fas fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Sidebar -->
                <div class="col-lg-4">
                    <div class="exam-sidebar">
                        <h5 class="mb-4"><i class="fas fa-tachometer-alt"></i> Exam Dashboard</h5>

                        <!-- Statistics -->
                        <div class="row mb-4">
                            <div class="col-4">
                                <div class="stats-card">
                                    <div class="stats-number" id="answeredCount">0</div>
                                    <div class="stats-label">Answered</div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="stats-card">
                                    <div class="stats-number" id="flaggedCount">0</div>
                                    <div class="stats-label">Flagged</div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="stats-card">
                                    <div class="stats-number" id="remainingCount">8</div>
                                    <div class="stats-label">Remaining</div>
                                </div>
                            </div>
                        </div>

                        <!-- Question Grid -->
                        <h6 class="mb-3">Question Navigator</h6>
                        <div class="question-grid" id="questionGrid">
                            <!-- Question dots will be generated by JavaScript -->
                        </div>

                        <!-- Legend -->
                        <div class="exam-legend">
                            <div class="legend-item">
                                <div class="legend-dot" style="background: #05386b"></div>
                                <span>Current Question</span>
                            </div>
                            <div class="legend-item">
                                <div class="legend-dot" style="background: #379683"></div>
                                <span>Answered</span>
                            </div>
                            <div class="legend-item">
                                <div class="legend-dot"
                                     style="background: linear-gradient(135deg, #ffc107, #fd7e14);"></div>
                                <span>Flagged</span>
                            </div>
                            <div class="legend-item">
                                <div class="legend-dot" style="background: white; border: 2px solid #e9ecef;"></div>
                                <span>Not Answered</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Results Modal -->
    <div class="modal fade" id="examResultsModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"><i class="fas fa-trophy"></i> Exam Results</h4>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="score-display">
                        <div class="score-circle">
                            <span id="finalScorePercentage">85%</span>
                        </div>
                        <h3 id="scoreMessage">Excellent Work!</h3>
                        <p class="text-muted">You've completed the vocabulary exam</p>
                    </div>

                    <div class="score-details">
                        <div class="detail-card">
                            <div class="detail-number correct" id="correctAnswers">7</div>
                            <div class="detail-label">Correct</div>
                        </div>
                        <div class="detail-card">
                            <div class="detail-number incorrect" id="incorrectAnswers">1</div>
                            <div class="detail-label">Incorrect</div>
                        </div>
                        <div class="detail-card">
                            <div class="detail-number unanswered" id="unansweredQuestions">0</div>
                            <div class="detail-label">Unanswered</div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="reviewAnswersBtn">
                        <i class="fas fa-eye"></i> Review Answers
                    </button>
                    <button type="button" class="btn btn-success" id="retakeExamBtn">
                        <i class="fas fa-redo"></i> Retake Exam
                    </button>
                </div>
            </div>
        </div>
    </div>


    <div class="vocabulary-list-section" id="wordList" style="display: block">
        <h2><i class="fas fa-book"></i> List of Words</h2>

        <div class="vocabulary-search">
            <input type="text" placeholder="Search words by ..."/>
        </div>

        <div class="word-filters">
            <a href="?categoryId=0" class="filter-btn ${categoryId == 0 ? 'active' : ''}">All</a>
            <c:forEach var="category" items="${categories}">
                <a href="?categoryId=${category.id}#wordList"
                   class="filter-btn ${categoryId == category.id ? 'active' : ''}">${category.name}</a>
            </c:forEach>
        </div>

        <div class="vocabulary-list">
            <c:choose>

                <c:when test="${not empty pageWords}">
                    <c:forEach var="word" items="${pageWords}">
                        <div class="word-item">
                            <div class="word-main">${word.word}</div>
                            <div class="word-phonetic">${word.ipaPronunciation}</div>
                            <div class="word-meaning">${word.meaning}</div>
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <div>There is no words in this category now!</div>
                </c:otherwise>
            </c:choose>
        </div>

        <!-- Pagination buttons -->
        <div class="pagination">
            <!-- Prev button -->
            <c:choose>
                <c:when test="${currentPage > 1}">
                    <a href="?page=${currentPage - 1}&categoryId=${categoryId}#wordList" class="page-btn">Prev</a>
                </c:when>
                <c:otherwise>
                    <span class="page-btn disabled">Prev</span>
                </c:otherwise>
            </c:choose>

            <!-- Page info -->
            <span class="page-info">
                ${currentPage} / ${totalPages}
            </span>

            <!-- Next button -->
            <c:choose>
                <c:when test="${currentPage < totalPages}">
                    <a href="?page=${currentPage + 1}&categoryId=${categoryId}#wordList" class="page-btn">Next</a>
                </c:when>
                <c:otherwise>
                    <span class="page-btn disabled">Next</span>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</main>
<%@ include file="/WEB-INF/views/footer/footer.html" %>
<script>
    document.addEventListener("DOMContentLoaded", function () {

        <%--const vocabulary = [--%>
        <%--    <c:forEach var="w" items="${words}" varStatus="loop">--%>
        <%--    {--%>
        <%--        word: "${w.word}",--%>
        <%--        phonetic: "${w.ipaPronunciation}",--%>
        <%--        meaning: "${w.meaning}"--%>
        <%--    }<c:if test="${!loop.last}">, </c:if>--%>
        <%--    </c:forEach>--%>
        <%--];--%>

        // ==========================
        // GLOBAL VARIABLES
        // ==========================
        let currentIndex = 0;
        let currentMode = null;
        let total = ${fn:length(words)};


        // ==========================
        // FLASHCARD LOGIC
        // ==========================
        let isFlipped = false;
        const flashcards = document.querySelectorAll(".flashcard-wrapper");
        const flashProgress = document.querySelector(".flashcard-container .progress-text");
        const prevCardBtn = document.querySelector(".prevCard-btn");
        const nextCardBtn = document.querySelector(".nextCard-btn");

        function updateCard() {
            flashcards.forEach(card => card.style.display = "none");
            console.log(currentIndex);
            if (flashcards[currentIndex]) {
                flashcards[currentIndex].style.display = "block";
            }

            const flashcard = flashcards[currentIndex]?.querySelector(".flashcard");
            if (flashcard) {
                flashcard.classList.remove("flipped");
            }
            isFlipped = false;

            flashProgress.textContent = (currentIndex + 1) + "/" + total;
            updateButtonStates();
        }

        function updateButtonStates() {
            if (prevCardBtn) prevCardBtn.disabled = currentIndex === 0;
            if (nextCardBtn) nextCardBtn.disabled = currentIndex === total - 1;
        }

        window.flipCard = function (flashcard) {
            if (flashcard) {
                flashcard.classList.toggle("flipped");
                isFlipped = !isFlipped;
            }
        };

        window.previousCard = function () {
            if (currentIndex > 0) {
                currentIndex--;
                updateCard();
            }
        };

        window.nextCard = function () {
            if (currentIndex < total - 1) {
                currentIndex++;
                updateCard();
            } else {
                alert("🎉 Bạn đã học hết từ vựng!");
            }
        };

        window.playAudio = function (event, word) {
            if (event) event.stopPropagation();

            if ('speechSynthesis' in window && word) {
                const utterance = new SpeechSynthesisUtterance(word);
                utterance.lang = 'en-US';
                utterance.rate = 0.8;
                speechSynthesis.speak(utterance);
            }
        };


        // ==========================
        // QUIZ (MULTIPLE CHOICE) LOGIC
        // ==========================
        // let currentQuizIndex = 0;
        // const quizProgress = document.querySelector(".multiple-choice-container .progress-text");


        // function updateQuiz() {
        //     questionCards.forEach(prac => prac.style.display = "none");
        //
        //     if (questionCards[currentQuizIndex]){
        //         questionCards[currentQuizIndex].style.display = "block";
        //     }
        //
        //
        //     const questionCard = questionCards[currentQuizIndex]?.querySelector(".question-card");
        //     updateQuestionButtonStates();
        //
        //     quizProgress.textContent = (currentQuizIndex + 1) + "/" + vocabulary.length;
        //
        //     // Gán lại options (demo: đáp án đúng ở A, các đáp án còn lại giả định tạm)
        //     const options = document.querySelectorAll(".mc-option-btn");
        //     options[0].dataset.answer = "correct";
        //     options[0].querySelector(".option-text").textContent = current.meaning;
        //
        //     options[1].dataset.answer = "wrong";
        //     options[1].querySelector(".option-text").textContent = "Nhiễu 1";
        //
        //     options[2].dataset.answer = "wrong";
        //     options[2].querySelector(".option-text").textContent = "Nhiễu 2";
        //
        //     options[3].dataset.answer = "wrong";
        //     options[3].querySelector(".option-text").textContent = "Nhiễu 3";
        // }



        // ==========================
        // PRACTICE LOGIC
        // ==========================
        let currentPracticeIndex = 0;
        const questionCards = document.querySelectorAll(".question-card");
        const prevPracBtn = document.querySelector(".prevPrac-btn");
        const nextPracBtn = document.querySelector(".nextPrac-btn");

        let practiceFlags = new Set();
        let practiceScore = 0;

        function updatePractice() {
            questionCards.forEach(prac => prac.style.display = "none");

            if (questionCards[currentPracticeIndex]) {
                questionCards[currentPracticeIndex].style.display = "block";
            }


            const questionCard = questionCards[currentPracticeIndex]?.querySelector(".question-card");


            let practiceProgress = document.querySelector(".progress-question-text");
            practiceProgress.textContent = (currentPracticeIndex + 1) + "/" + total;

            let answerInput = document.querySelector(".answer-input");
            // Clear previous input and feedback
            if (answerInput) {
                answerInput.value = "Hehe" || "";
                answerInput.disabled = false;
            }
            let answerFeedback = document.querySelector(".answer-feedback");
            if (answerFeedback) {
                answerFeedback.innerHTML = "";
                answerFeedback.className = "answer-feedback";
            }

            // Update flag button
            updatePracticeFlag();

            updateQuestionButtonStates()
        }

        function updatePracticeFlag() {
            const flagBtn = document.querySelector(".practice-container .flag-btn");
            if (flagBtn) {
                if (practiceFlags.has(currentPracticeIndex)) {
                    flagBtn.classList.add("flagged");
                    flagBtn.style.color = "#dc3545";
                } else {
                    flagBtn.classList.remove("flagged");
                    flagBtn.style.color = "#6c757d";
                }
            }
        }

        // function checkPracticeAnswer() {
        //     const answerInput = document.querySelector(".practice-container .answer-input");
        //     const answerFeedback = document.querySelector(".practice-container .answer-feedback");
        //
        //     if (!answerInput || !answerFeedback) return;
        //
        //     const userAnswer = answerInput.value.trim().toLowerCase();
        //     const correctAnswer = vocabulary[currentPracticeIndex].word.toLowerCase();
        //
        //     // Store user's answer
        //     practiceAnswers[currentPracticeIndex] = answerInput.value.trim();
        //
        //     if (userAnswer === correctAnswer) {
        //         answerFeedback.innerHTML = '<div class="feedback-correct">' +
        //             '<i class="fas fa-check-circle"></i>' +
        //             'Correct! The answer is "' + vocabulary[currentPracticeIndex].word + '"' +
        //             '</div>';
        //         answerFeedback.className = "answer-feedback correct";
        //         practiceScore++;
        //     } else if (userAnswer) {
        //         answerFeedback.innerHTML = '<div class="feedback-incorrect">' +
        //             '<i class="fas fa-times-circle"></i>' +
        //             'Incorrect. The correct answer is "' + vocabulary[currentPracticeIndex].word + '"' +
        //             '</div>';
        //         answerFeedback.className = "answer-feedback incorrect";
        //     } else {
        //         answerFeedback.innerHTML = '<div class="feedback-empty">' +
        //             '<i class="fas fa-exclamation-circle"></i>' +
        //             'Please enter an answer. The correct answer is "' + vocabulary[currentPracticeIndex].word + '"' +
        //             '</div>';
        //         answerFeedback.className = "answer-feedback empty";
        //     }
        //
        //     answerInput.disabled = true;
        // }


        window.previousPractice = function () {
            if (currentPracticeIndex > 0) {
                currentPracticeIndex--;
                updatePractice();
            }
        }

        window.nextPractice = function () {
            const answerInput = document.querySelector(".practice-container .answer-input");

            // Auto-check answer if not already checked and has input
            if (answerInput && !answerInput.disabled && answerInput.value.trim()) {
                // checkPracticeAnswer();

                // Delay moving to next question to show feedback
                setTimeout(function () {
                    proceedToNext();
                }, 1500);
            } else {
                proceedToNext();
            }
        }


        function proceedToNext() {
            if (currentPracticeIndex < total - 1) {
                currentPracticeIndex++;
                updatePractice();
            } else {
                // finishPractice();
            }
        }


        // function finishPractice() {
        //     const correctAnswers = practiceAnswers.filter(function (answer, index) {
        //         return answer && answer.toLowerCase().trim() === vocabulary[index].word.toLowerCase();
        //     }).length;
        //
        //     const percentage = Math.round((correctAnswers / vocabulary.length) * 100);
        //
        //     let message = '';
        //     if (percentage >= 90) message = 'Outstanding!';
        //     else if (percentage >= 80) message = 'Excellent Work!';
        //     else if (percentage >= 70) message = 'Good Job!';
        //     else if (percentage >= 60) message = 'Keep Practicing!';
        //     else message = 'Study More!';
        //
        //     alert("Practice Complete!\n\nScore: " + correctAnswers + "/" + vocabulary.length + " (" + percentage + "%)\n" + message);
        //
        //     // Reset for next practice
        //     resetPractice();
        // }

        // function resetPractice() {
        //     currentPracticeIndex = 0;
        //     practiceAnswers.fill(null);
        //     practiceFlags.clear();
        //     practiceScore = 0;
        //     updatePractice();
        // }

        function togglePracticeFlag() {
            if (practiceFlags.has(currentPracticeIndex)) {
                practiceFlags.delete(currentPracticeIndex);
            } else {
                practiceFlags.add(currentPracticeIndex);
            }
            updatePracticeFlag();
        }

        function updateQuestionButtonStates() {
            if (prevPracBtn) prevPracBtn.disabled = currentPracticeIndex === 0;
            if (nextPracBtn) nextPracBtn.disabled = currentPracticeIndex === total - 1;
        }

        // ==========================
        // EXAM LOGIC
        // ==========================
        // let currentExamIndex = 0;
        // let examAnswers = new Array(vocabulary.length).fill(null);
        // let flaggedQuestions = new Set();
        // let examTimer = 30 * 60; // 30 minutes in seconds
        // let timerInterval;
        // let examInitialized = false;
        //
        // function initializeExam() {
        //     if (examInitialized) return;
        //
        //     generateQuestionGrid();
        //     updateExamDisplay();
        //     updateStats();
        //     bindExamEvents();
        //     examInitialized = true;
        // }

        // function generateQuestionGrid() {
        //     const grid = document.getElementById('questionGrid');
        //     if (!grid) return;
        //
        //     grid.innerHTML = '';
        //
        //     vocabulary.forEach(function (_, index) {
        //         const dot = document.createElement('div');
        //         dot.className = 'question-dot';
        //         dot.textContent = index + 1;
        //         dot.onclick = function () {
        //             navigateToQuestion(index);
        //         };
        //         grid.appendChild(dot);
        //     });
        // }

        // function updateExamDisplay() {
        //     const current = vocabulary[currentExamIndex];
        //
        //     // Kiểm tra elements tồn tại
        //     const questionNumber = document.querySelector('.exam-container .question-number');
        //     const examWordText = document.getElementById('examWordText');
        //     const examWordPhonetic = document.getElementById('examWordPhonetic');
        //     const currentQuestionNum = document.getElementById('currentQuestionNum');
        //
        //     if (questionNumber) questionNumber.textContent = "Question " + (currentExamIndex + 1);
        //     if (examWordText) examWordText.textContent = current.word;
        //     if (examWordPhonetic) examWordPhonetic.textContent = current.phonetic;
        //     if (currentQuestionNum) currentQuestionNum.textContent = currentExamIndex + 1;
        //
        //     // Update options
        //     const optionCards = document.querySelectorAll('.exam-container .option-card');
        //     optionCards.forEach(function (card, index) {
        //         if (current.options && current.options[index]) {
        //             const optionText = card.querySelector('.option-text');
        //             if (optionText) {
        //                 optionText.textContent = current.options[index];
        //             }
        //             card.classList.remove('selected');
        //
        //             // Restore previous selection
        //             if (examAnswers[currentExamIndex] === index) {
        //                 card.classList.add('selected');
        //             }
        //         }
        //     });

        <%--    // Update navigation buttons--%>
        <%--    const prevBtn = document.getElementById('prevBtn');--%>
        <%--    const nextBtn = document.getElementById('nextBtn');--%>

        <%--    if (prevBtn) prevBtn.disabled = currentExamIndex === 0;--%>
        <%--    if (nextBtn) {--%>
        <%--        if (currentExamIndex === ${fn:length(words)} - 1) {--%>
        <%--            nextBtn.innerHTML = 'Finish <i class="fas fa-check"></i>';--%>
        <%--        } else {--%>
        <%--            nextBtn.innerHTML = 'Next <i class="fas fa-chevron-right"></i>';--%>
        <%--        }--%>
        <%--    }--%>

        <%--    // Update progress--%>
        <%--    const progressBar = document.getElementById('examProgressBar');--%>
        <%--    if (progressBar) {--%>
        <%--        const progress = ((currentExamIndex + 1) / ${fn:length(words)}) * 100;--%>
        <%--        progressBar.style.width = progress + '%';--%>
        <%--    }--%>

        <%--    // Update question grid--%>
        <%--    updateQuestionGrid();--%>

        <%--    // Update flag button--%>
        <%--    const flagBtn = document.getElementById('flagBtn');--%>
        <%--    if (flagBtn) {--%>
        <%--        if (flaggedQuestions.has(currentExamIndex)) {--%>
        <%--            flagBtn.innerHTML = '<i class="fas fa-flag"></i> Unflag Question';--%>
        <%--            flagBtn.style.background = 'linear-gradient(135deg, #dc3545, #c82333)';--%>
        <%--        } else {--%>
        <%--            flagBtn.innerHTML = '<i class="fas fa-flag"></i> Flag Question';--%>
        <%--            flagBtn.style.background = 'linear-gradient(135deg, #ffc107, #fd7e14)';--%>
        <%--        }--%>
        <%--    }--%>
        <%--}--%>

        <%--function updateQuestionGrid() {--%>
        <%--    const dots = document.querySelectorAll('.question-dot');--%>
        <%--    dots.forEach(function (dot, index) {--%>
        <%--        dot.className = 'question-dot';--%>

        <%--        if (index === currentExamIndex) {--%>
        <%--            dot.classList.add('current');--%>
        <%--        } else if (examAnswers[index] !== null) {--%>
        <%--            dot.classList.add('answered');--%>
        <%--        }--%>

        <%--        if (flaggedQuestions.has(index)) {--%>
        <%--            dot.classList.add('flagged');--%>
        <%--        }--%>
        <%--    });--%>
        <%--}--%>

        <%--function updateStats() {--%>
        <%--    const answeredCount = examAnswers.filter(function (answer) {--%>
        <%--        return answer !== null;--%>
        <%--    }).length;--%>
        <%--    const flaggedCount = flaggedQuestions.size;--%>
        <%--    const remainingCount = ${fn:length(words)} - answeredCount;--%>

        <%--    const answeredEl = document.getElementById('answeredCount');--%>
        <%--    const flaggedEl = document.getElementById('flaggedCount');--%>
        <%--    const remainingEl = document.getElementById('remainingCount');--%>

        <%--    if (answeredEl) answeredEl.textContent = answeredCount;--%>
        <%--    if (flaggedEl) flaggedEl.textContent = flaggedCount;--%>
        <%--    if (remainingEl) remainingEl.textContent = remainingCount;--%>
        <%--}--%>

        <%--function startTimer() {--%>
        <%--    if (timerInterval) clearInterval(timerInterval);--%>

        <%--    timerInterval = setInterval(function () {--%>
        <%--        examTimer--;--%>

        <%--        const minutes = Math.floor(examTimer / 60);--%>
        <%--        const seconds = examTimer % 60;--%>
        <%--        const timerDisplay = document.getElementById('timerDisplay');--%>

        <%--        if (timerDisplay) {--%>
        <%--            timerDisplay.textContent = minutes.toString().padStart(2, '0') + ':' + seconds.toString().padStart(2, '0');--%>
        <%--        }--%>

        <%--        if (examTimer <= 0) {--%>
        <%--            clearInterval(timerInterval);--%>
        <%--            submitExam();--%>
        <%--        }--%>
        <%--    }, 1000);--%>
        <%--}--%>

        <%--function navigateToQuestion(index) {--%>
        <%--    currentExamIndex = index;--%>
        <%--    updateExamDisplay();--%>
        <%--}--%>

        <%--function bindExamEvents() {--%>
        <%--    // Option card events--%>
        <%--    const optionCards = document.querySelectorAll('.exam-container .option-card');--%>
        <%--    optionCards.forEach(function (card, index) {--%>
        <%--        card.addEventListener('click', function () {--%>
        <%--            document.querySelectorAll('.exam-container .option-card').forEach(function (c) {--%>
        <%--                c.classList.remove('selected');--%>
        <%--            });--%>
        <%--            card.classList.add('selected');--%>
        <%--            examAnswers[currentExamIndex] = index;--%>
        <%--            updateStats();--%>
        <%--            updateQuestionGrid();--%>
        <%--        });--%>
        <%--    });--%>

        <%--    // Navigation events--%>
        <%--    const prevBtn = document.getElementById('prevBtn');--%>
        <%--    const nextBtn = document.getElementById('nextBtn');--%>
        <%--    const flagBtn = document.getElementById('flagBtn');--%>
        <%--    const submitBtn = document.getElementById('submitExamBtn');--%>

        <%--    if (prevBtn) {--%>
        <%--        prevBtn.addEventListener('click', function () {--%>
        <%--            if (currentExamIndex > 0) {--%>
        <%--                currentExamIndex--;--%>
        <%--                updateExamDisplay();--%>
        <%--            }--%>
        <%--        });--%>
        <%--    }--%>

        <%--    if (nextBtn) {--%>
        <%--        nextBtn.addEventListener('click', function () {--%>
        <%--            if (currentExamIndex < ${fn:length(words)} - 1) {--%>
        <%--                currentExamIndex++;--%>
        <%--                updateExamDisplay();--%>
        <%--            } else {--%>
        <%--                submitExam();--%>
        <%--            }--%>
        <%--        });--%>
        <%--    }--%>

        <%--    if (flagBtn) {--%>
        <%--        flagBtn.addEventListener('click', function () {--%>
        <%--            if (flaggedQuestions.has(currentExamIndex)) {--%>
        <%--                flaggedQuestions.delete(currentExamIndex);--%>
        <%--            } else {--%>
        <%--                flaggedQuestions.add(currentExamIndex);--%>
        <%--            }--%>
        <%--            updateExamDisplay();--%>
        <%--            updateStats();--%>
        <%--        });--%>
        <%--    }--%>

        <%--    if (submitBtn) {--%>
        <%--        submitBtn.addEventListener('click', submitExam);--%>
        <%--    }--%>

        <%--    // Results modal events--%>
        <%--    const retakeBtn = document.getElementById('retakeExamBtn');--%>
        <%--    if (retakeBtn) {--%>
        <%--        retakeBtn.addEventListener('click', function () {--%>
        <%--            resetExam();--%>
        <%--            const modal = bootstrap.Modal.getInstance(document.getElementById('examResultsModal'));--%>
        <%--            if (modal) modal.hide();--%>
        <%--        });--%>
        <%--    }--%>
        <%--}--%>

        <%--function submitExam() {--%>
        <%--    clearInterval(timerInterval);--%>

        <%--    // Calculate results--%>
        <%--    let correctCount = 0;--%>
        <%--    examAnswers.forEach(function (answer, index) {--%>
        <%--        if (answer !== null && answer === vocabulary[index].correct) {--%>
        <%--            correctCount++;--%>
        <%--        }--%>
        <%--    });--%>

        <%--    const incorrectCount = examAnswers.filter(function (answer) {--%>
        <%--        return answer !== null;--%>
        <%--    }).length - correctCount;--%>
        <%--    const unansweredCount = examAnswers.filter(function (answer) {--%>
        <%--        return answer === null;--%>
        <%--    }).length;--%>
        <%--    const percentage = Math.round((correctCount / ${fn:length(words)}) * 100);--%>

        <%--    // Update results modal--%>
        <%--    const finalScoreEl = document.getElementById('finalScorePercentage');--%>
        <%--    const correctEl = document.getElementById('correctAnswers');--%>
        <%--    const incorrectEl = document.getElementById('incorrectAnswers');--%>
        <%--    const unansweredEl = document.getElementById('unansweredQuestions');--%>
        <%--    const scoreMessageEl = document.getElementById('scoreMessage');--%>

        <%--    if (finalScoreEl) finalScoreEl.textContent = percentage + '%';--%>
        <%--    if (correctEl) correctEl.textContent = correctCount;--%>
        <%--    if (incorrectEl) incorrectEl.textContent = incorrectCount;--%>
        <%--    if (unansweredEl) unansweredEl.textContent = unansweredCount;--%>

        <%--    // Update score message--%>
        <%--    let message = '';--%>
        <%--    if (percentage >= 90) message = 'Outstanding!';--%>
        <%--    else if (percentage >= 80) message = 'Excellent Work!';--%>
        <%--    else if (percentage >= 70) message = 'Good Job!';--%>
        <%--    else if (percentage >= 60) message = 'Keep Practicing!';--%>
        <%--    else message = 'Study More!';--%>

        <%--    if (scoreMessageEl) scoreMessageEl.textContent = message;--%>

        <%--    // Show results modal--%>
        <%--    const modal = document.getElementById('examResultsModal');--%>
        <%--    if (modal) {--%>
        <%--        new bootstrap.Modal(modal).show();--%>
        <%--    }--%>
        <%--}--%>

        // function resetExam() {
        //     currentExamIndex = 0;
        //     examAnswers.fill(null);
        //     flaggedQuestions.clear();
        //     examTimer = 30 * 60;
        //     updateExamDisplay();
        //     updateStats();
        //     startTimer();
        // }

        // ==========================
        // EVENT BINDINGS
        // ==========================

        // Practice BINDINGS
        // ==========================


        if (prevPracBtn) {
            prevPracBtn.addEventListener('click', previousPractice);
        }
        if (nextPracBtn) {
            nextPracBtn.addEventListener('click', nextPractice);
        }
        // Flashcard events
        <%--flashcard.addEventListener("click", flipCard);--%>
        <%--flashcard.querySelectorAll(".audio-btn").forEach(function (btn) {--%>
        <%--    btn.addEventListener("click", function (e) {--%>
        <%--        e.stopPropagation();--%>
        <%--        btn.innerHTML = '<i class="fas fa-spinner fa-spin"></i>';--%>
        <%--        setTimeout(function () {--%>
        <%--            btn.innerHTML = '<i class="fas fa-volume-up"></i>';--%>
        <%--        }, 1000);--%>
        <%--    });--%>
        <%--});--%>

        // document.querySelector(".flashcard-container .prev-btn").addEventListener("click", previousCard);
        // document.querySelector(".flashcard-container .next-btn").addEventListener("click", nextCard);

        <%--// Quiz events--%>
        <%--document.querySelector(".multiple-choice-container .prev-btn").addEventListener("click", prevQuiz);--%>
        <%--document.querySelector(".multiple-choice-container .next-btn").addEventListener("click", nextQuiz);--%>

        <%--// Practice events--%>
        <%--const practiceNavPrev = document.querySelector(".practice-container .prev-btn");--%>
        <%--const practiceNavNext = document.querySelector(".practice-container .next-btn");--%>
        <%--const practiceFlagBtn = document.querySelector(".practice-container .flag-btn");--%>
        <%--const practiceAnswerInput = document.querySelector(".practice-container .answer-input");--%>

        <%--if (practiceNavPrev) {--%>
        <%--    practiceNavPrev.addEventListener("click", prevPractice);--%>
        <%--}--%>

        <%--if (practiceNavNext) {--%>
        <%--    practiceNavNext.addEventListener("click", nextPractice);--%>
        <%--}--%>

        <%--if (practiceFlagBtn) {--%>
        <%--    practiceFlagBtn.addEventListener("click", togglePracticeFlag);--%>
        <%--}--%>

        <%--if (practiceAnswerInput) {--%>
        <%--    // Check answer on Enter key--%>
        <%--    practiceAnswerInput.addEventListener("keypress", function (e) {--%>
        <%--        if (e.key === "Enter" && !practiceAnswerInput.disabled) {--%>
        <%--            checkPracticeAnswer();--%>
        <%--        }--%>
        <%--    });--%>

        <%--    // Save answer as user types--%>
        <%--    practiceAnswerInput.addEventListener("input", function () {--%>
        <%--        practiceAnswers[currentPracticeIndex] = practiceAnswerInput.value.trim();--%>
        <%--    });--%>

        <%--    // Auto-focus when practice mode is activated--%>
        <%--    practiceAnswerInput.addEventListener("focus", function () {--%>
        <%--        practiceAnswerInput.select();--%>
        <%--    });--%>
        <%--}--%>

        <%--// Keyboard navigation--%>
        <%--document.addEventListener("keydown", function (e) {--%>
        <%--    const flashcardVisible = flashcard.closest(".flashcard-container").style.display !== "none";--%>
        <%--    const quizVisible = document.querySelector(".multiple-choice-container").style.display !== "none";--%>
        <%--    const examVisible = document.querySelector(".exam-container").style.display !== "none";--%>
        <%--    const practiceVisible = document.querySelector(".practice-container").style.display !== "none";--%>

        <%--    switch (e.key) {--%>
        <%--        case " ":--%>
        <%--        case "Enter":--%>
        <%--            if (flashcardVisible) {--%>
        <%--                e.preventDefault();--%>
        <%--                flipCard();--%>
        <%--            }--%>
        <%--            break;--%>
        <%--        case "ArrowLeft":--%>
        <%--            e.preventDefault();--%>
        <%--            if (flashcardVisible) {--%>
        <%--                previousCard();--%>
        <%--            } else if (quizVisible) {--%>
        <%--                prevQuiz();--%>
        <%--            } else if (examVisible && currentExamIndex > 0) {--%>
        <%--                currentExamIndex--;--%>
        <%--                updateExamDisplay();--%>
        <%--            } else if (practiceVisible && document.activeElement !== practiceAnswerInput) {--%>
        <%--                prevPractice();--%>
        <%--            }--%>
        <%--            break;--%>
        <%--        case "ArrowRight":--%>
        <%--            e.preventDefault();--%>
        <%--            if (flashcardVisible) {--%>
        <%--                nextCard();--%>
        <%--            } else if (quizVisible) {--%>
        <%--                nextQuiz();--%>
        <%--            } else if (examVisible && currentExamIndex < ${fn:length(words)} - 1) {--%>
        <%--                currentExamIndex++;--%>
        <%--                updateExamDisplay();--%>
        <%--            } else if (practiceVisible && document.activeElement !== practiceAnswerInput) {--%>
        <%--                nextPractice();--%>
        <%--            }--%>
        <%--            break;--%>
        <%--        case "f":--%>
        <%--        case "F":--%>
        <%--            if (practiceVisible && document.activeElement !== practiceAnswerInput) {--%>
        <%--                e.preventDefault();--%>
        <%--                togglePracticeFlag();--%>
        <%--            }--%>
        <%--            break;--%>
        <%--        case "Escape":--%>
        <%--            if (practiceVisible && practiceAnswerInput) {--%>
        <%--                practiceAnswerInput.blur();--%>
        <%--            }--%>
        <%--            break;--%>
        <%--    }--%>
        <%--});--%>

        // ==========================
        // MODE SWITCHING
        // ==========================
        const flashcardContainer = document.querySelector(".flashcard-container");
        const listSection = document.querySelector(".vocabulary-list-section");
        const multipleChoiceContainer = document.querySelector(".multiple-choice-container");
        const practiceContainer = document.querySelector(".practice-container");
        const examContainer = document.querySelector(".exam-container");

        const flashcardBtn = document.querySelector(".flashcard-btn");
        const quizBtn = document.querySelector(".quiz-btn");
        const practiceBtn = document.querySelector(".practice-btn");
        const testBtn = document.querySelector(".test-btn");
        const buttons = document.querySelectorAll(".function-btn");

        function switchMode(mode, clickedBtn) {
            if (currentMode === mode) {
                currentMode = null;
                buttons.forEach(function (b) {
                    b.classList.remove("active");
                });
                flashcardContainer.style.display = "none";
                multipleChoiceContainer.style.display = "none";
                practiceContainer.style.display = "none";
                if (examContainer) examContainer.style.display = "none";
                listSection.style.display = "block";

                // Stop timer if exam was running
                if (timerInterval) {
                    clearInterval(timerInterval);
                    timerInterval = null;
                }
                return;
            }

            currentMode = mode;
            buttons.forEach(function (b) {
                b.classList.remove("active");
            });
            clickedBtn.classList.add("active");

            flashcardContainer.style.display = "none";
            listSection.style.display = "none";
            multipleChoiceContainer.style.display = "none";
            practiceContainer.style.display = "none";
            if (examContainer) examContainer.style.display = "none";

            if (mode === "flashcard") {
                flashcardContainer.style.display = "flex";
                updateCard();
            } else if (mode === "quiz") {
                multipleChoiceContainer.style.display = "block";
                // updateQuiz();
            } else if (mode === "list") {
                listSection.style.display = "block";
            } else if (mode === "practice") {
                practiceContainer.style.display = "block";
                updatePractice();
                // Auto-focus input field
                // setTimeout(function () {
                //     if (practiceAnswerInput) {
                //         practiceAnswerInput.focus();
                //     }
                // }, 100);
            } else if (mode === "test" && examContainer) {
                examContainer.style.display = "block";
                initializeExam();
                startTimer();
            }
        }

        flashcardBtn.addEventListener("click", function () {
            switchMode("flashcard", flashcardBtn);
        });
        quizBtn.addEventListener("click", function () {
            switchMode("quiz", quizBtn);
        });
        practiceBtn.addEventListener("click", function () {
            switchMode("practice", practiceBtn);
        });
        testBtn.addEventListener("click", function () {
            switchMode("test", testBtn);
        });

        // Word list item selection
        const wordItems = document.querySelectorAll(".word-item");
        wordItems.forEach(function (item, index) {
            item.addEventListener("click", function () {
                wordItems.forEach(function (w) {
                    w.classList.remove("selected");
                });
                item.classList.add("selected");
                currentIndex = index;
                updateCard();
            });
        });

        // Mặc định load list
        listSection.style.display = "block";
        updateCard(); // để flashcard sẵn sàng
        // updateQuiz(); // để quiz sẵn sàng
        // updatePractice(); // để practice sẵn sàng

    });
    const buttons = document.querySelectorAll(".filter-btn");

    buttons.forEach(btn => {
        btn.addEventListener("click", () => {
            document.querySelector(".filter-btn.active")?.classList.remove("active");
            btn.classList.add("active");

        });
    });

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
