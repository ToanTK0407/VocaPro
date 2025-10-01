<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<ul class="category-header">
    <c:forEach var="category" items="${categories}">
        <li><a href="vocabulary?categoryId=${category.id}#wordList">${category.name}</a></li>
    </c:forEach>
</ul>