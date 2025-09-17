<%--
  Created by IntelliJ IDEA.
  User: KHAI TOAN
  Date: 9/12/2025
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VocaPro - Login & Register</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/js/all.min.js"
            crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css?v=<%= System.currentTimeMillis()%>">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/styleForLogin.css?v=<%= System.currentTimeMillis()%>">

</head>
<body>
<%@ include file="/WEB-INF/views/header/header_unlogin.html" %>
<main>
    <!-- Thêm class 'active' nếu có attribute register -->
    <c:choose>
        <c:when test="${register == true}">
            <div class="container active no-animation" id="container">
                <div class="form-container sign-up">
                    <form method="post" action="${pageContext.request.contextPath}/register">
                        <h1>Create Account</h1>
                        <div class="social-icons">
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-google-plus-g"></i
                            ></a>
                            <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-linkedin-in"></i
                            ></a>
                        </div>
                        <span>or use your email for registration</span>

                        <!-- Hiển thị thông báo thành công nếu có -->
                        <c:if test="${not empty successMessage}">
                            <div class="success-message">${successMessage}</div>
                        </c:if>

                        <!-- Hiển thị lỗi nếu có -->
                        <c:if test="${not empty registerError}">
                            <div class="error-message">${registerError}</div>
                        </c:if>

                        <label>
                            <input type="text" name="name" placeholder="Name"
                                   value="${name}" required/>
                        </label>
                        <label>
                            <input type="email" name="email" placeholder="Email"
                                   value="${email}" required/>
                        </label>
                        <label>
                            <input type="password" name="password" placeholder="Password" required/>
                        </label>
                        <button type="submit">Sign Up</button>
                    </form>
                </div>

                <div class="form-container sign-in">
                    <form method="post" action="${pageContext.request.contextPath}/login">
                        <h1>Sign In</h1>
                        <div class="social-icons">
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-google-plus-g"></i
                            ></a>
                            <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-linkedin-in"></i
                            ></a>
                        </div>
                        <span>or use your email</span>

                        <!-- Hiển thị lỗi nếu có -->
                        <c:if test="${not empty loginError}">
                            <div class="error-message">${loginError}</div>
                        </c:if>

                        <label>
                            <input type="email" name="email" placeholder="Email"
                                   value="${email}" required/>
                        </label>
                        <label>
                            <input type="password" name="password" placeholder="Password" required/>
                        </label>
                        <a href="#">Forget Your Password?</a>
                        <button type="submit">Sign In</button>
                    </form>
                </div>

                <div class="toggle-container">
                    <div class="toggle">
                        <div class="toggle-panel toggle-left">
                            <h1>Welcome Back!</h1>
                            <p>Enter your personal details to use all site features</p>
                            <button class="hidden" id="login">Sign In</button>
                        </div>
                        <div class="toggle-panel toggle-right">
                            <h1>Hello, Friend!</h1>
                            <p>
                                Register with your personal details to use all site features
                            </p>
                            <button class="hidden" id="register">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <div class="container" id="container">
                <div class="form-container sign-up">
                    <form method="post" action="${pageContext.request.contextPath}/register">
                        <h1>Create Account</h1>
                        <div class="social-icons">
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-google-plus-g"></i
                            ></a>
                            <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-linkedin-in"></i
                            ></a>
                        </div>
                        <span>or use your email for registration</span>

                        <!-- Hiển thị thông báo thành công nếu có -->
                        <c:if test="${not empty successMessage}">
                            <div class="success-message">${successMessage}</div>
                        </c:if>

                        <!-- Hiển thị lỗi nếu có -->
                        <c:if test="${not empty registerError}">
                            <div class="error-message">${registerError}</div>
                        </c:if>

                        <label>
                            <input type="text" name="name" placeholder="Name"
                                   value="${name}" required/>
                        </label>
                        <label>
                            <input type="email" name="email" placeholder="Email"
                                   value="${email}" required/>
                        </label>
                        <label>
                            <input type="password" name="password" placeholder="Password" required/>
                        </label>
                        <button type="submit">Sign Up</button>
                    </form>
                </div>

                <div class="form-container sign-in">
                    <form method="post" action="${pageContext.request.contextPath}/login">
                        <h1>Sign In</h1>
                        <div class="social-icons">
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-google-plus-g"></i
                            ></a>
                            <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                            <a href="#" class="icon"
                            ><i class="fa-brands fa-linkedin-in"></i
                            ></a>
                        </div>
                        <span>or use your email</span>

                        <!-- Hiển thị lỗi nếu có -->
                        <c:if test="${not empty loginError}">
                            <div class="error-message">${loginError}</div>
                        </c:if>

                        <label>
                            <input type="email" name="email" placeholder="Email"
                                   value="${email}" required/>
                        </label>
                        <label>
                            <input type="password" name="password" placeholder="Password" required/>
                        </label>
                        <a href="#">Forget Your Password?</a>
                        <button type="submit">Sign In</button>
                    </form>
                </div>

                <div class="toggle-container">
                    <div class="toggle">
                        <div class="toggle-panel toggle-left">
                            <h1>Welcome Back!</h1>
                            <p>Enter your personal details to use all site features</p>
                            <button class="hidden" id="login">Sign In</button>
                        </div>
                        <div class="toggle-panel toggle-right">
                            <h1>Hello, Friend!</h1>
                            <p>
                                Register with your personal details to use all site features
                            </p>
                            <button class="hidden" id="register">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:otherwise>
    </c:choose>

</main>
<%@ include file="/WEB-INF/views/footer/footer.html" %>

<script>
    const container = document.getElementById("container");
    const registerBtn = document.getElementById("register");
    const loginBtn = document.getElementById("login");

    // Chỉ add/remove class khi chưa ở trạng thái mong muốn
    registerBtn.addEventListener("click", () => {
        if (!container.classList.contains("active")) {
            container.classList.remove("no-animation");
            container.classList.add("active");
            window.history.replaceState(null, null, '?action=register');
        }
    });

    loginBtn.addEventListener("click", () => {
        if (container.classList.contains("active")) {
            container.classList.remove("no-animation");
            container.classList.remove("active");
            window.history.replaceState(null, null, '?action=login');
        }
    });
    document.addEventListener("DOMContentLoaded", () => {

    });

</script>
</body>
</html>