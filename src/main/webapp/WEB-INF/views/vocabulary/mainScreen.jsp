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
            {word: "Innovation", phonetic: "/ˌɪn.əˈveɪ.ʃən/", meaning: "Sự đổi mới, sáng tạo"},
            {word: "Technology", phonetic: "/tekˈnɒl.ə.dʒi/", meaning: "Công nghệ"},
            {word: "Development", phonetic: "/dɪˈvel.əp.mənt/", meaning: "Sự phát triển"},
            {word: "Communication", phonetic: "/kəˌmjuː.nɪˈkeɪ.ʃən/", meaning: "Giao tiếp, truyền thông"},
            {word: "Environment", phonetic: "/ɪnˈvaɪ.rən.mənt/", meaning: "Môi trường"},
            {word: "Opportunity", phonetic: "/ˌɒp.əˈtʃuː.nə.ti/", meaning: "Cơ hội"},
            {word: "Achievement", phonetic: "/əˈtʃiːv.mənt/", meaning: "Thành tựu, thành tích"},
            {word: "Experience", phonetic: "/ɪkˈspɪə.ri.əns/", meaning: "Kinh nghiệm, trải nghiệm"},
        ];

        let currentIndex = 0;
        let isFlipped = false;

        // Elements
        const flashcard = document.querySelector(".flashcard");
        const progressText = document.querySelector(".progress-text");
        const prevBtn = document.querySelector(".prev-btn");
        const nextBtn = document.querySelector(".next-btn");
        const cardFront = flashcard.querySelector(".card-front");
        const cardBack = flashcard.querySelector(".card-back");

        if (!flashcard || !progressText) {
            console.error("Không tìm thấy elements cần thiết!");
            return;
        }

        // Update card content + progress
        function updateCard() {
            const current = vocabulary[currentIndex];
            if (!current) return;

            const frontMain = cardFront.querySelector(".word-main");
            const frontPhonetic = cardFront.querySelector(".word-phonetic");
            const backMain = cardBack.querySelector(".word-main");
            const backPhonetic = cardBack.querySelector(".word-phonetic");
            const backMeaning = cardBack.querySelector(".word-meaning");

            if (frontMain) frontMain.textContent = current.word;
            if (frontPhonetic) frontPhonetic.textContent = current.phonetic;
            if (backMain) backMain.textContent = current.word;
            if (backPhonetic) backPhonetic.textContent = current.phonetic;
            if (backMeaning) backMeaning.textContent = current.meaning;

            flashcard.classList.remove("flipped");
            isFlipped = false;

            updateProgress();
            updateNavigationButtons();

            // Debug: giúp kiểm tra số lần gọi
            console.log(`updateCard called -> index=${currentIndex} (${currentIndex + 1}/${vocabulary.length})`);
        }

        function updateProgress() {
            progressText.textContent = (currentIndex + 1) + "/" +   (vocabulary.length);
        }

        function updateNavigationButtons() {
            if (prevBtn) {
                prevBtn.disabled = currentIndex === 0;
                prevBtn.style.opacity = currentIndex === 0 ? '0.5' : '1';
            }
            if (nextBtn) {
                nextBtn.disabled = currentIndex === vocabulary.length - 1;
                nextBtn.style.opacity = currentIndex === vocabulary.length - 1 ? '0.5' : '1';
            }
        }

        // Handlers (không gán vào window, dùng trực tiếp addEventListener)
        function flipCardHandler(e) {
            // nếu click vào audio button thì không flip (audio có stopPropagation nhưng giữ an toàn)
            if (e.target.closest(".audio-btn")) return;
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

        function playAudio(e) {
            e.stopPropagation();
            const btn = e.currentTarget;
            btn.innerHTML = '<i class="fas fa-spinner fa-spin"></i>';
            setTimeout(() => {
                btn.innerHTML = '<i class="fas fa-volume-up"></i>';
                console.log("Playing audio:", vocabulary[currentIndex].word);
            }, 700);
        }

        // Events: chỉ dùng addEventListener (1 binding)
        flashcard.addEventListener("click", flipCardHandler);

        if (prevBtn) prevBtn.addEventListener("click", previousCard);
        if (nextBtn) nextBtn.addEventListener("click", nextCard);

        // audio buttons
        const audioBtns = document.querySelectorAll(".audio-btn");
        audioBtns.forEach(btn => btn.addEventListener("click", playAudio));

        // keyboard navigation (chỉ khi đang hiển thị flashcard)
        document.addEventListener("keydown", (e) => {
            const flashcardContainer = document.querySelector(".flashcard-container");
            if (!flashcardContainer || flashcardContainer.style.display === "none") return;

            switch (e.key) {
                case " ":
                case "Enter":
                    e.preventDefault();
                    flipCardHandler(e);
                    break;
                case "ArrowLeft":
                    e.preventDefault();
                    previousCard();
                    break;
                case "ArrowRight":
                    e.preventDefault();
                    nextCard();
                    break;
            }
        });

        // Word list click -> sync index + updateCard (chỉ 1 lần)
        const wordItems = document.querySelectorAll(".word-item");
        wordItems.forEach((item, index) => {
            item.addEventListener("click", () => {
                wordItems.forEach(w => w.classList.remove("selected"));
                item.classList.add("selected");
                currentIndex = index;
                updateCard();
            });
        });

        // Mode switching: khi mở flashcard luôn gọi updateCard() 1 lần
        const flashcardContainer = document.querySelector(".flashcard-container");
        const listSection = document.querySelector(".vocabulary-list-section");
        const flashcardBtn = document.querySelector(".flashcard-btn");
        const quizBtn = document.querySelector(".quiz-btn");
        const practiceBtn = document.querySelector(".practice-btn");
        const testBtn = document.querySelector(".test-btn");
        const buttons = document.querySelectorAll(".function-btn");

        let currentMode = "list";

        function switchMode(mode, clickedBtn) {
            if (currentMode === mode) {
                currentMode = "list";
                buttons.forEach(b => b.classList.remove("active"));
                if (flashcardContainer) flashcardContainer.style.display = "none";
                if (listSection) listSection.style.display = "block";
                return;
            }

            currentMode = mode;
            buttons.forEach(b => b.classList.remove("active"));
            if (clickedBtn) clickedBtn.classList.add("active");

            if (flashcardContainer) flashcardContainer.style.display = "none";
            if (listSection) listSection.style.display = "none";

            if (mode === "flashcard") {
                if (flashcardContainer) flashcardContainer.style.display = "flex";
                // luôn update 1 lần để đồng bộ nội dung
                updateCard();
            } else if (mode === "list") {
                if (listSection) listSection.style.display = "block";
            }
        }

        if (flashcardBtn) flashcardBtn.addEventListener("click", () => switchMode("flashcard", flashcardBtn));
        if (quizBtn) quizBtn.addEventListener("click", () => switchMode("quiz", quizBtn));
        if (practiceBtn) practiceBtn.addEventListener("click", () => switchMode("practice", practiceBtn));
        if (testBtn) testBtn.addEventListener("click", () => switchMode("test", testBtn));

        // INIT: gọi 1 lần
        updateCard();
        console.log("Flashcard initialized. Keyboard controls: Space/Enter=Flip | ←/→=Navigate");
    });
</script>


</body>
</html>
