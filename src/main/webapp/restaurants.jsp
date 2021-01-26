<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="category-box">
    <c:forEach items="${restaurantList}" var="restaurant">
        <div class="card mb-3" style="max-width: 540px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="..." alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${restaurant.getRestaurant_name()}"/></h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
                            content.
                            This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a href="displayRestaurant?restaurantId=${restaurant.getRestaurant_id()}"
                           class="btn btn-warning stretched-link">Browse
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>