<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="header.jsp"/>
<h1 class="h1">Browse Restaurants</h1>
<h2 style="padding-left: 50px;" >Filter restaurants by:</h2>
<div class="py-5 my-1">
    <div class="container">
        <div class="row">
            <div class="col-md-6" style="">
                <div class="card">
                    <a href="/categories">
                        <img class="card-img" src="https://static.pingendo.com/cover-moon.svg" alt="Card image" style="">
                    <div class="card-img-overlay" style="	background-image: url(images/category.jpg);	background-position: top
                    left;
                    background-size: 85%;	background-repeat: repeat;">
                        <h1 class="card-title text-center text-white" style="	text-shadow: 0px 0px 4px black;">Category<br></h1>
                        <!--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
                            content. This content is a little bit longer.</p>
                        <p class="card-text">Last updated 3 mins ago</p>-->
                    </div>
                    </a>
                </div>
            </div>
            <div class="col-md-6" style="">
                <div class="card">
                    <a href="/locations">
                        <img class="card-img" src="https://static.pingendo.com/cover-moon.svg" alt="Card image">
                    <div class="card-img-overlay" style="	background-image: url(images/maps.jpg);	background-position: top left;
                    background-size: 100%;	background-repeat: repeat;">
                        <h1 class="card-title text-center" style="color: #0a58ca">Location<br></h1>
                        <!--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
                            content. This content is a little bit longer.</p>
                        <p class="card-text">Last updated 3 mins ago</p>-->
                    </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<h2 style="padding-left: 50px;">All restaurants: (${restaurantList.size()})</h2>

<c:import url="restaurants.jsp"/>

<c:import url="footer.jsp"/>
