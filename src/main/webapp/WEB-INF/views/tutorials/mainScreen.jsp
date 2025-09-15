<%--
  Created by IntelliJ IDEA.
  User: KHAI TOAN
  Date: 9/14/2025
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tutorials</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?v=<%= System.currentTimeMillis()%>">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=<%= System.currentTimeMillis()%>">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/views/header/header_unlogin.html" %>
<main class="tutorials-main">
    <ul class="tutorials-list-header">
        <li><a href="">Business</a></li>
        <li><a href="">Travel</a></li>
        <li><a href="">Academic</a></li>
        <li><a href="">Daily Life</a></li>
        <li><a href="">Technology</a></li>
        <li><a href="">Health</a></li>
        <li><a href="">Food</a></li>
        <li><a href="">Entertainment</a></li>
        <li><a href="">More category</a></li>
        <li><a href="">More category</a></li>
        <li><a href="">More category</a></li>
        <li><a href="">More category</a></li>
        <li><a href="">More category</a></li>
        <li><a href="">More category</a></li>
        <li><a href="">More category</a></li>
    </ul>

    <div class="tutorials-intro">
        <h2>Improve your vocabulary</h2>
        <p>Choose your learning level and start building your English vocabulary with our structured lessons designed for progressive learning.</p>
        <div class="learning-path">
            <h4>Your Learning Journey</h4>
            <div class="level-progression">
                Beginner → Intermediate → Business
            </div>
        </div>
    </div>

    <div class="tutorials-container">
        <div class="tutorials-card">
            <div class="tutorials-image"></div>
            <div class="tutorials-content">
                <h3>Beginner Level</h3>
                <p>
                    Start your English journey with essential vocabulary and basic words used in everyday conversations. Perfect for those who are just beginning to learn English or need to refresh their foundation.
                </p>
                <a href="#" class="start-btn">Start Learning</a>
            </div>
        </div>

        <div class="tutorials-card">
            <div class="tutorials-image"></div>
            <div class="tutorials-content">
                <h3>Intermediate Level</h3>
                <p>
                    Expand your vocabulary with more complex words and expressions. Learn advanced grammar patterns and vocabulary that will help you communicate more effectively in various situations.
                </p>
                <a href="#" class="start-btn">Start Learning</a>
            </div>
        </div>

        <div class="tutorials-card">
            <div class="tutorials-image"></div>
            <div class="tutorials-content">
                <h3>Business Level</h3>
                <p>
                    Master professional vocabulary and business terminology. Learn the language of meetings, presentations, negotiations, and formal communications to excel in your career.
                </p>
                <a href="#" class="start-btn">Start Learning</a>
            </div>
        </div>
    </div>
    <div class="tutorials-category-container">
        <h1 class="tutorials-title">Learn by vocabulary classification</h1>
        <div class="tutorials-category-card">
            <a href="">
                <h5>Category Name</h5>
                <div class="tutorials-category-description">
                    Master professional vocabulary and business terminology. Learn the
                    language of meetings, presentations, negotiations, and formal
                    communications to excel in your career.
                </div>
            </a>
        </div>
        <div class="tutorials-category-card">
            <a href="">
                <h5>Category Name</h5>
                <div class="tutorials-category-description">
                    Master professional vocabulary and business terminology. Learn the
                    language of meetings, presentations, negotiations, and formal
                    communications to excel in your career.
                </div>
            </a>
        </div>
        <div class="tutorials-category-card">
            <a href="">
                <h5>Category Name</h5>
                <div class="tutorials-category-description">
                    Master professional vocabulary and business terminology. Learn the
                    language of meetings, presentations, negotiations, and formal
                    communications to excel in your career.
                </div>
            </a>
        </div>
        <div class="tutorials-category-card">
            <a href="">
                <h5>Category Name</h5>
                <div class="tutorials-category-description">
                    Master professional vocabulary and business terminology. Learn the
                    language of meetings, presentations, negotiations, and formal
                    communications to excel in your career.
                </div>
            </a>
        </div>
        <div class="tutorials-category-card">
            <a href="">
                <h5>Category Name</h5>
                <div class="tutorials-category-description">
                    Master professional vocabulary and business terminology. Learn the
                    language of meetings, presentations, negotiations, and formal
                    communications to excel in your career.
                </div>
            </a>
        </div>
        <div class="tutorials-category-card">
            <a href="">
                <h5>Category Name</h5>
                <div class="tutorials-category-description">
                    Master professional vocabulary and business terminology. Learn the
                    language of meetings, presentations, negotiations, and formal
                    communications to excel in your career.
                </div>
            </a>
        </div>
    </div>
</main>
<%@ include file="/WEB-INF/views/footer/footer.html" %>
</body>
</html>