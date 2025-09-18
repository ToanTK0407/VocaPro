<%--
  Created by IntelliJ IDEA.
  User: KHAI TOAN
  Date: 9/13/2025
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?v=<%= System.currentTimeMillis()%>">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=<%= System.currentTimeMillis()%>">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/views/header/header_unlogin.html" %>
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
                        <span>Multiple Choice</span>
                    </button>
                    <button class="function-btn practice-btn">
                        <i class="fas fa-pen"></i>
                        <span>Practices</span>
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
        <%--MULTIPLE CHOICE FUNCTION--%>
        <div
                class="multiple-choice-container"
                style="display: none; min-width: 800px"
        >
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
            <div class="flashcard-wrapper">
                <div class="flashcard" onclick="flipCard()">
                    <div class="card-face card-front">
                        <button class="audio-btn" onclick="playAudio()">
                            <i class="fas fa-volume-up"></i>
                        </button>
                        <div class="word-main">Innovation</div>
                        <div class="word-phonetic">/ˌɪn.əˈveɪ.ʃən/</div>
                        <div class="flip-hint">
                            <i class="fas fa-mouse-pointer"></i>
                            Nhấp để xem nghĩa
                        </div>
                    </div>

                    <div class="card-face card-back">
                        <button class="audio-btn" onclick="playAudio()">
                            <i class="fas fa-volume-up"></i>
                        </button>
                        <div class="word-main">Innovation</div>
                        <div class="word-phonetic">/ˌɪn.əˈveɪ.ʃən/</div>
                        <div class="word-meaning">Sự đổi mới, sáng tạo</div>
                        <div class="flip-hint">
                            <i class="fas fa-mouse-pointer"></i>
                            Nhấp để quay lại
                        </div>
                    </div>
                </div>
            </div>

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
        <%--PRACTICE FUNCTION--%>
        <div class="practice-container" style="display: none">
            <div class="practice-header">
                <h2 class="practice-title">
                    <i class="fas fa-clipboard-check"></i>
                    Vocabulary Practice
                </h2>
                <p class="practice-subtitle">Translate the Vietnamese meaning to English</p>
            </div>

            <div class="question-card">
                <div class="question-number">Question 1</div>
                <button class="flag-btn" onclick="toggleFlag()" title="Flag this question">
                    <i class="fas fa-flag"></i>
                </button>

                <div class="question-content">
                    <h3 class="question-text">Sự đổi mới, sáng tạo</h3>
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


    <div class="vocabulary-list-section" style="display: block">
        <h2><i class="fas fa-book"></i> List of Words</h2>

        <div class="vocabulary-search">
            <input type="text" placeholder="Search words by ..."/>
        </div>

        <div class="word-filters">
            <button class="filter-btn active">Tất cả</button>
            <button class="filter-btn">Đã học</button>
            <button class="filter-btn">Chưa học</button>
            <button class="filter-btn">Khó</button>
        </div>

        <div class="vocabulary-list">
            <div class="word-item selected">
                <div class="word-main">Innovation</div>
                <div class="word-phonetic">/ˌɪn.əˈveɪ.ʃən/</div>
                <div class="word-meaning">Sự đổi mới, sáng tạo</div>
            </div>

            <div class="word-item">
                <div class="word-main">Technology</div>
                <div class="word-phonetic">/tekˈnɒl.ə.dʒi/</div>
                <div class="word-meaning">Công nghệ</div>
            </div>

            <div class="word-item">
                <div class="word-main">Development</div>
                <div class="word-phonetic">/dɪˈvel.əp.mənt/</div>
                <div class="word-meaning">Sự phát triển</div>
            </div>

            <div class="word-item">
                <div class="word-main">Communication</div>
                <div class="word-phonetic">/kəˌmjuː.nɪˈkeɪ.ʃən/</div>
                <div class="word-meaning">Giao tiếp, truyền thông</div>
            </div>

            <div class="word-item">
                <div class="word-main">Environment</div>
                <div class="word-phonetic">/ɪnˈvaɪ.rən.mənt/</div>
                <div class="word-meaning">Môi trường</div>
            </div>

            <div class="word-item">
                <div class="word-main">Opportunity</div>
                <div class="word-phonetic">/ˌɒp.əˈtʃuː.nə.ti/</div>
                <div class="word-meaning">Cơ hội</div>
            </div>

            <div class="word-item">
                <div class="word-main">Achievement</div>
                <div class="word-phonetic">/əˈtʃiːv.mənt/</div>
                <div class="word-meaning">Thành tựu, thành tích</div>
            </div>

            <div class="word-item">
                <div class="word-main">Experience</div>
                <div class="word-phonetic">/ɪkˈspɪə.ri.əns/</div>
                <div class="word-meaning">Kinh nghiệm, trải nghiệm</div>
            </div>
        </div>
    </div>
    </div>
</main>
<%@ include file="/WEB-INF/views/footer/footer.html" %>
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const vocabulary = [
            {
                word: "Innovation",
                phonetic: "/ˌɪn.əˈveɪ.ʃən/",
                meaning: "Sự đổi mới, sáng tạo",
            },
            {
                word: "Technology",
                phonetic: "/tekˈnɒl.ə.dʒi/",
                meaning: "Công nghệ",
            },
            {
                word: "Development",
                phonetic: "/dɪˈvel.əp.mənt/",
                meaning: "Sự phát triển",
            },
            {
                word: "Communication",
                phonetic: "/kəˌmjuː.nɪˈkeɪ.ʃən/",
                meaning: "Giao tiếp, truyền thông",
            },
            {
                word: "Environment",
                phonetic: "/ɪnˈvaɪ.rən.mənt/",
                meaning: "Môi trường",
            },
            {
                word: "Opportunity",
                phonetic: "/ˌɒp.əˈtʃuː.nə.ti/",
                meaning: "Cơ hội",
            },
            {
                word: "Achievement",
                phonetic: "/əˈtʃiːv.mənt/",
                meaning: "Thành tựu, thành tích",
            },
            {
                word: "Experience",
                phonetic: "/ɪkˈspɪə.ri.əns/",
                meaning: "Kinh nghiệm, trải nghiệm",
            },
        ];

        // ==========================
        // FLASHCARD LOGIC
        // ==========================
        let currentIndex = 0;
        let isFlipped = false;

        const flashcard = document.querySelector(".flashcard");
        const cardFront = flashcard.querySelector(".card-front");
        const cardBack = flashcard.querySelector(".card-back");
        const flashProgress = document.querySelector(
            ".flashcard-container .progress-text"
        );

        function updateCard() {
            const current = vocabulary[currentIndex];
            cardFront.querySelector(".word-main").textContent = current.word;
            cardFront.querySelector(".word-phonetic").textContent =
                current.phonetic;
            cardBack.querySelector(".word-main").textContent = current.word;
            cardBack.querySelector(".word-phonetic").textContent =
                current.phonetic;
            cardBack.querySelector(".word-meaning").textContent = current.meaning;

            flashcard.classList.remove("flipped");
            isFlipped = false;
            flashProgress.textContent = (currentIndex + 1) + "/" + vocabulary.length;
        }

        function flipCard() {
            flashcard.classList.toggle("flipped");
            isFlipped = !isFlipped;
        }

        function previousCard() {
            if (currentIndex > 0) {
                currentIndex--;
                updateCard();
            }
        }

        function nextCard() {
            if (currentIndex < vocabulary.length - 1) {
                currentIndex++;
                updateCard();
            } else {
                alert("🎉 Bạn đã học hết từ vựng!");
            }
        }

        // ==========================
        // QUIZ (MULTIPLE CHOICE) LOGIC
        // ==========================
        let currentQuizIndex = 0;
        const quizProgress = document.querySelector(
            ".multiple-choice-container .progress-text"
        );

        function updateQuiz() {
            const current = vocabulary[currentQuizIndex];
            document.querySelector(".mc-word-display .word-text").textContent =
                current.word;
            document.querySelector(
                ".multiple-choice-container .word-phonetic"
            ).textContent = current.phonetic;
            quizProgress.textContent = (currentQuizIndex + 1) + "/" + vocabulary.length;

            // Gán lại options (demo: đáp án đúng ở A, các đáp án còn lại giả định tạm)
            const options = document.querySelectorAll(".mc-option-btn");
            options[0].dataset.answer = "correct";
            options[0].querySelector(".option-text").textContent =
                current.meaning;

            options[1].dataset.answer = "wrong";
            options[1].querySelector(".option-text").textContent = "Nhiễu 1";

            options[2].dataset.answer = "wrong";
            options[2].querySelector(".option-text").textContent = "Nhiễu 2";

            options[3].dataset.answer = "wrong";
            options[3].querySelector(".option-text").textContent = "Nhiễu 3";
        }

        function prevQuiz() {
            if (currentQuizIndex > 0) {
                currentQuizIndex--;
                updateQuiz();
            }
        }

        function nextQuiz() {
            if (currentQuizIndex < vocabulary.length - 1) {
                currentQuizIndex++;
                updateQuiz();
            } else {
                alert("🎉 Bạn đã làm hết câu hỏi!");
            }
        }

        // ==========================
        // EVENT BINDINGS
        // ==========================

        // Flashcard events
        flashcard.addEventListener("click", flipCard);
        flashcard.querySelectorAll(".audio-btn").forEach((btn) =>
            btn.addEventListener("click", (e) => {
                e.stopPropagation();
                btn.innerHTML = '<i class="fas fa-spinner fa-spin"></i>';
                setTimeout(() => {
                    btn.innerHTML = '<i class="fas fa-volume-up"></i>';
                    console.log("Playing audio:", vocabulary[currentIndex].word);
                }, 1000);
            })
        );
        document
            .querySelector(".flashcard-container .prev-btn")
            .addEventListener("click", previousCard);
        document
            .querySelector(".flashcard-container .next-btn")
            .addEventListener("click", nextCard);

        // Quiz events
        document
            .querySelector(".multiple-choice-container .prev-btn")
            .addEventListener("click", prevQuiz);
        document
            .querySelector(".multiple-choice-container .next-btn")
            .addEventListener("click", nextQuiz);

        // Keyboard navigation (chỉ áp dụng cho flashcard)
        document.addEventListener("keydown", (e) => {
            switch (e.key) {
                case " ":
                case "Enter":
                    if (
                        flashcard.closest(".flashcard-container").style.display !==
                        "none"
                    ) {
                        e.preventDefault();
                        flipCard();
                    }
                    break;
                case "ArrowLeft":
                    e.preventDefault();
                    if (
                        flashcard.closest(".flashcard-container").style.display !==
                        "none"
                    ) {
                        previousCard();
                    } else if (
                        document.querySelector(".multiple-choice-container").style
                            .display !== "none"
                    ) {
                        prevQuiz();
                    }
                    break;
                case "ArrowRight":
                    e.preventDefault();
                    if (
                        flashcard.closest(".flashcard-container").style.display !==
                        "none"
                    ) {
                        nextCard();
                    } else if (
                        document.querySelector(".multiple-choice-container").style
                            .display !== "none"
                    ) {
                        nextQuiz();
                    }
                    break;
            }
        });

        // ==========================
        // MODE SWITCHING
        // ==========================
        const flashcardContainer = document.querySelector(
            ".flashcard-container"
        );
        const listSection = document.querySelector(".vocabulary-list-section");
        const multipleChoiceContainer = document.querySelector(
            ".multiple-choice-container"
        );
        const practiceContainer = document.querySelector(".practice-container");

        const flashcardBtn = document.querySelector(".flashcard-btn");
        const quizBtn = document.querySelector(".quiz-btn");
        const practiceBtn = document.querySelector(".practice-btn");
        const testBtn = document.querySelector(".test-btn");
        const buttons = document.querySelectorAll(".function-btn");

        let currentMode = null;

        function switchMode(mode, clickedBtn) {
            if (currentMode === mode) {
                currentMode = null;
                buttons.forEach((b) => b.classList.remove("active"));
                flashcardContainer.style.display = "none";
                multipleChoiceContainer.style.display = "none";
                practiceContainer.style.display = "none";
                listSection.style.display = "block";
                return;
            }

            currentMode = mode;
            buttons.forEach((b) => b.classList.remove("active"));
            clickedBtn.classList.add("active");

            flashcardContainer.style.display = "none";
            listSection.style.display = "none";
            multipleChoiceContainer.style.display = "none";
            practiceContainer.style.display ="none";

            if (mode === "flashcard") {
                flashcardContainer.style.display = "flex";
                updateCard();
            } else if (mode === "quiz") {
                multipleChoiceContainer.style.display = "block";
                updateQuiz();
            } else if (mode === "list") {
                listSection.style.display = "block";
            } else if (mode === "practice") {
                practiceContainer.style.display = "block";
            }
        }

        flashcardBtn.addEventListener("click", () =>
            switchMode("flashcard", flashcardBtn)
        );
        quizBtn.addEventListener("click", () => switchMode("quiz", quizBtn));
        practiceBtn.addEventListener("click", () =>
            switchMode("practice", practiceBtn)
        );
        testBtn.addEventListener("click", () => switchMode("test", testBtn));

        const wordItems = document.querySelectorAll(".word-item");
        wordItems.forEach((item, index) => {
            item.addEventListener("click", () => {
                wordItems.forEach((w) => w.classList.remove("selected"));
                item.classList.add("selected");
                currentIndex = index;
                updateCard();
            });
        });
        // Mặc định load list
        listSection.style.display = "block";
        updateCard(); // để flashcard sẵn sàng
        updateQuiz(); // để quiz sẵn sàng
    });
</script>
</body>
</html>
