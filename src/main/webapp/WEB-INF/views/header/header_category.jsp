<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<ul class="category-header">
    <c:forEach var="category" items="${categories}">
        <li><a href="">${category.name}</a></li>
    </c:forEach>
</ul>