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

    let currentIndex = 0;
    let isFlipped = false;
    // const stats = { learned: 0, easy: 0, medium: 0, hard: 0, total: 0 };

    // Lấy elements một cách an toàn
    const flashcard = document.querySelector(".flashcard");
    const progressText = document.querySelector(".progress-text");
    const prevBtn = document.querySelector(".prev-btn");
    const nextBtn = document.querySelector(".next-btn");

    if (!flashcard || !progressText) {
        console.error("Không tìm thấy elements cần thiết!");
        return;
    }

    const cardFront = flashcard.querySelector(".card-front");
    const cardBack = flashcard.querySelector(".card-back");

    // ==== Flashcard update - ĐÃ SỬA LỖI ====
    function updateCard() {
        if (!vocabulary[currentIndex]) {
            console.error("Không tìm thấy từ vựng tại index:", currentIndex);
            return;
        }

        const current = vocabulary[currentIndex];

        // Cập nhật card front
        const frontMain = cardFront.querySelector(".word-main");
        const frontPhonetic = cardFront.querySelector(".word-phonetic");

        if (frontMain) frontMain.textContent = current.word;
        if (frontPhonetic) frontPhonetic.textContent = current.phonetic;

        // Cập nhật card back
        const backMain = cardBack.querySelector(".word-main");
        const backPhonetic = cardBack.querySelector(".word-phonetic");
        const backMeaning = cardBack.querySelector(".word-meaning");

        if (backMain) backMain.textContent = current.word;
        if (backPhonetic) backPhonetic.textContent = current.phonetic;
        if (backMeaning) backMeaning.textContent = current.meaning;

        // Reset trạng thái flip
        flashcard.classList.remove("flipped");
        isFlipped = false;

        // ĐÂY LÀ PHẦN QUAN TRỌNG - Cập nhật progress
        updateProgress();
        updateNavigationButtons();

        console.log(`Card updated: ${current.word} (${currentIndex + 1}/${vocabulary.length})`);
    }

    // ==== Hàm cập nhật progress riêng - MỚI THÊM ====
    function updateProgress() {
        if (progressText) {
            progressText.textContent = "${currentIndex + 1}/${vocabulary.length}";
        }
    }

    // ==== Hàm cập nhật trạng thái nút - MỚI THÊM ====
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

    // ==== Các hàm điều hướng - ĐÃ SỬA ====
    window.flipCard = function() {
        if (flashcard) {
            flashcard.classList.toggle("flipped");
            isFlipped = !isFlipped;
            console.log("Card flipped:", isFlipped ? "back" : "front");
        }
    }

    window.previousCard = function() {
        if (currentIndex > 0) {
            currentIndex--;
            updateCard();
            console.log("Previous card:", currentIndex);
        }
    }

    window.nextCard = function() {
        if (currentIndex < vocabulary.length - 1) {
            currentIndex++;
            updateCard();
            console.log("Next card:", currentIndex);
        } else {
            alert("🎉 Bạn đã học hết từ vựng!");
        }
    }

    window.playAudio = function(e) {
        e.stopPropagation();
        const btn = e.target.closest(".audio-btn");
        if (btn) {
            btn.innerHTML = '<i class="fas fa-spinner fa-spin"></i>';
            setTimeout(() => {
                btn.innerHTML = '<i class="fas fa-volume-up"></i>';
                console.log("Playing audio:", vocabulary[currentIndex].word);
            }, 1000);
        }
    }

    // ==== Event listeners - CẢI THIỆN ====
    if (flashcard) {
        flashcard.addEventListener("click", (e) => {
            // Không flip nếu click vào audio button
            if (!e.target.closest(".audio-btn")) {
                window.flipCard();
            }
        });
    }

    if (prevBtn) {
        prevBtn.addEventListener("click", window.previousCard);
    }

    if (nextBtn) {
        nextBtn.addEventListener("click", window.nextCard);
    }

    // Keyboard navigation - CẢI THIỆN
    document.addEventListener("keydown", (e) => {
        // Chỉ hoạt động khi đang ở chế độ flashcard
        const flashcardContainer = document.querySelector(".flashcard-container");
        if (!flashcardContainer || flashcardContainer.style.display === "none") {
            return;
        }

        switch (e.key) {
            case " ":
            case "Enter":
                e.preventDefault();
                window.flipCard();
                break;
            case "ArrowLeft":
                e.preventDefault();
                window.previousCard();
                break;
            case "ArrowRight":
                e.preventDefault();
                window.nextCard();
                break;
        }
    });

    // Word list functionality
    const wordItems = document.querySelectorAll(".word-item");
    wordItems.forEach((item, index) => {
        item.addEventListener("click", () => {
            wordItems.forEach((w) => w.classList.remove("selected"));
            item.classList.add("selected");

            // Đồng bộ với flashcard
            currentIndex = index;
            updateCard();
        });
    });

    // Search functionality
    const searchInput = document.querySelector(".vocabulary-search input");
    if (searchInput) {
        searchInput.addEventListener("input", () => {
            const term = searchInput.value.toLowerCase();
            wordItems.forEach((item) => {
                const visible = item.textContent.toLowerCase().includes(term);
                item.style.display = visible ? "" : "none";
            });
        });
    }

    // Mode switching - CẢI THIỆN
    const flashcardContainer = document.querySelector(".flashcard-container");
    const listSection = document.querySelector(".vocabulary-list-section");
    const flashcardBtn = document.querySelector(".flashcard-btn");
    const quizBtn = document.querySelector(".quiz-btn");
    const practiceBtn = document.querySelector(".practice-btn");
    const testBtn = document.querySelector(".test-btn");
    const buttons = document.querySelectorAll(".function-btn");

    let currentMode = "list";

    function switchMode(mode, clickedBtn) {
        // Toggle nếu click lại cùng mode
        if (currentMode === mode) {
            currentMode = "list";
            buttons.forEach((b) => b.classList.remove("active"));
            if (flashcardContainer) flashcardContainer.style.display = "none";
            if (listSection) listSection.style.display = "block";
            return;
        }

        currentMode = mode;
        buttons.forEach((b) => b.classList.remove("active"));
        if (clickedBtn) clickedBtn.classList.add("active");

        // Ẩn tất cả
        if (flashcardContainer) flashcardContainer.style.display = "none";
        if (listSection) listSection.style.display = "none";

        // Hiện theo mode
        if (mode === "flashcard" && flashcardContainer) {
            flashcardContainer.style.display = "flex";
            // Cập nhật lại khi chuyển sang flashcard mode
            updateCard();
        } else if (mode === "list" && listSection) {
            listSection.style.display = "block";
        }
    }

    // Event listeners cho mode buttons
    if (flashcardBtn) {
        flashcardBtn.addEventListener("click", () =>
            switchMode("flashcard", flashcardBtn)
        );
    }

    if (quizBtn) {
        quizBtn.addEventListener("click", () =>
            switchMode("quiz", quizBtn)
        );
    }

    if (practiceBtn) {
        practiceBtn.addEventListener("click", () =>
            switchMode("practice", practiceBtn)
        );
    }

    if (testBtn) {
        testBtn.addEventListener("click", () =>
            switchMode("test", testBtn)
        );
    }

    // ==== KHỞI TẠO BAN ĐẦU ====
    console.log("Initializing flashcard...");
    updateCard();
    console.log("Flashcard initialized successfully!");
    console.log("Keyboard controls: Space/Enter=Flip | ←/→=Navigate");
});