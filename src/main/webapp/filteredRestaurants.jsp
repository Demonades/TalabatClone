<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="header.jsp"/>
<c:choose>
    <c:when test="${categoryName != null}">
        <h1 class="h1">${categoryName} Restaurants</h1>
    </c:when>
    <c:when test="${locationName != null}">
        <h1 class="h1"> Restaurants in ${locationName}</h1>
    </c:when>
</c:choose>

    <c:import url="restaurants.jsp"/>
</div>
<c:import url="footer.jsp"/>
