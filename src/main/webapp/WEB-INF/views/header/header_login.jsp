<%--
  Created by IntelliJ IDEA.
  User: KHAI TOAN
  Date: 9/18/2025
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <div class="left-menu">
        <a href="home"><img src="image/logo.png" alt="Home"></a>
        <a href="tutorials">Tutorials</a>
        <a href="vocabulary">Vocabulary</a>
        <a href="#">Exercise</a>
        <a href="#">Statistics</a>
    </div>

    <div class="search-box">
        <input type="text" placeholder="Search ...">
        <i class="fas fa-search search-icon"></i>
    </div>

    <div class="nav-item dropdown">
        <a href="#"
           class="d-flex align-items-center dropdown-toggle"
           id="userMenu"
           data-bs-toggle="dropdown"
           aria-expanded="false">
            <img src="image/avatar.jpg"
                 alt="User Avatar"
                 class="rounded-circle"
                 width="36"
                 height="36"/>
        </a>
        <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="userMenu">
            <li>
                <a class="dropdown-item" href="/account">
                    <i class="fas fa-user me-2"></i> Account
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="/my-words">
                    <i class="fas fa-bookmark me-2"></i> My Words
                </a>
            </li>
            <li>
                <hr class="dropdown-divider">
            </li>
            <li>
                <a class="dropdown-item text-danger" href="/logout">
                    <i class="fas fa-sign-out-alt me-2"></i> Logout
                </a>
            </li>
        </ul>
    </div>
</header>
