<%--
  Created by IntelliJ IDEA.
  User: KHAI TOAN
  Date: 9/12/2025
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
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
    <div class="container" id="container">
        <div class="form-container sign-up">
            <form method="post" action="${pageContext.request.contextPath}/login">
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
                <label>
                    <input type="text" name="name" placeholder="Name"/>
                </label>
                <label>
                    <input type="email" name="email" placeholder="Email"/>
                </label>
                <label>
                    <input type="password" name="password" placeholder="Password"/>
                </label>
                <button>Sign Up</button>
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
                <label>
                    <input type="email" name="email" placeholder="Email"/>
                </label>
                <label>
                    <input type="password" name="password" placeholder="Password"/>
                </label>
                <a href="#">Forget Your Password?</a>
                <button>Sign In</button>
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
</main>
<%@ include file="/WEB-INF/views/footer/footer.html" %>
<script>
    const container = document.getElementById("container");
    const registerBtn = document.getElementById("register");
    const loginBtn = document.getElementById("login");

    registerBtn.addEventListener("click", () => {
        container.classList.add("active");
    });

    loginBtn.addEventListener("click", () => {
        container.classList.remove("active");
    });
</script>

</body>
</html>
