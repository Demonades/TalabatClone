<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="header.jsp"/>


        <h1 class="h1">Welcome to ${restaurant.getRestaurant_name()}!</h1>
        <div class="category-box">
            <c:forEach var="meal" items="${mealList}">
                <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="..." alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">${meal.getMeal_name()}</h5>
                            <p class="card-text">${meal.getMeal_description()}</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>

                            <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                                </svg>
                                ${meal.getMeal_price()} EGP
                            </button>
<%--suppress JSUnusedAssignment --%>
                            <script>
                                function incrementValue() {
                                    var value = parseInt(document.getElementById('quantity').innerHTML, 10);
                                    value = isNaN(value) ? 0 : value;
                                    value++;
                                    var price = parseFloat(${meal.getMeal_price()});
                                    document.getElementById('quantity').innerHTML = value;
                                    document.getElementById('total').innerHTML = value * price + " EGP";

                                }

                                function decrementValue() {
                                    var value = parseInt(document.getElementById('quantity').innerHTML, 10);
                                    value = isNaN(value) ? 1 : value;
                                    value < 2 ? value = 2 : '';
                                    value--;
                                    var price = parseFloat(${meal.getMeal_price()});
                                    document.getElementById('quantity').innerHTML = value;
                                    document.getElementById('total').innerHTML = value * price + " EGP";

                                }
                                function refresh() {
                                    var value = parseInt(document.getElementById('quantity').innerHTML, 10);
                                    var price = parseFloat(${meal.getMeal_price()});
                                    value = 1
                                    document.getElementById('quantity').innerHTML = value;
                                    document.getElementById('total').innerHTML = value * price + " EGP";
                                }
                            </script>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">${meal.getMeal_name()}</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" onclick="refresh()"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                                ${meal.getMeal_description()}
                                            <div class="quantity container">
                                                <div class="row align-items-start">
                                                    <div class="col" align="right">
                                                        <button class="crement" onclick="decrementValue()" value="Increment Value">

                                                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#ffc107" class="bi bi-dash-circle-fill" viewBox="0 0 16 16">
                                                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h7a.5.5 0 0 0 0-1h-7z"/>
                                                            </svg>
                                                        </button>
                                                    </div>
                                                    <div class="col" align="center">
                                                        <p id="quantity">1</p>
                                                    </div>
                                                    <div class="col" align="left" onclick="incrementValue()">
                                                        <button class="crement">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#ffc107" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                                                            </svg>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer" style="transform: rotate(0);">
                                            <div class="row">
                                                <div class="col" align="center">
                                                    <a class="add-cart btn btn-link stretched-link">Add to cart</a>
                                                </div>
                                                <div class="col" align="left">
                                                    <p id=total>${meal.getMeal_price()} EGP</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
<c:import url="footer.jsp"/>
