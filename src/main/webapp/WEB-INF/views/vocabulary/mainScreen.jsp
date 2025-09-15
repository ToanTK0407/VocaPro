<%--
  Created by IntelliJ IDEA.
  User: KHAI TOAN
  Date: 9/13/2025
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="vocabulary-list-section">
            <h2><i class="fas fa-book"></i> List of Words</h2>

            <div class="vocabulary-search">
                <input type="text" placeholder="Search words by ..."/>
            </div>

            <div class="word-filters">
                <button class="filter-btn active">All</button>
                <button class="filter-btn">Business</button>
                <button class="filter-btn">Travel</button>
                <button class="filter-btn">Daily Life</button>
                <button class="filter-btn">Technology</button>
                <button class="filter-btn">Healthy</button>
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

        <!-- RIGHT SIDE - Function Panel -->
        <div class="function-panel">
            <!-- Study Modes -->
            <div class="function-card">
                <h3><i class="fas fa-graduation-cap"></i> Style Mode</h3>
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
                        <span>Practice</span>
                    </button>
                    <button class="function-btn test-btn">
                        <i class="fas fa-clipboard-check"></i>
                        <span>Exam</span>
                    </button>
                </div>
            </div>
        </div>
</main>
<%@ include file="/WEB-INF/views/footer/footer.html" %>
</body>
</html>
