<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>English Vocabulary Builder</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?v=<%= System.currentTimeMillis()%>">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=<%= System.currentTimeMillis()%>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
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
<main>
    <section id="hero">
        <h1>VocaPro</h1>
        <h3>Master Words, Master World</h3>
        <div class="search-container">
            <div class="search-box">
                <label>
                    <input type="text" placeholder="Search words or vocabulary you want ...">
                </label>
                <button type="submit" class="search-btn">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section id="cta">
        <div class="cta-content">
            <h2>Ready to Master English Vocabulary?</h2>
            <p>Start your journey today and unlock the power of words with our proven learning system.</p>
            <div class="cta-buttons">
                <a href="#register" class="btn-primary">Get Started Free</a>
                <a href="#demo" class="btn-secondary">Watch Demo</a>
            </div>
        </div>
    </section>
</main>
<%@ include file="/WEB-INF/views/footer/footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
