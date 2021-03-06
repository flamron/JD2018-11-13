<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@ include file="include/head.jsp" %>
<body>
<div class="container">
    <%@ include file="include/menu.jsp" %>

    <!-- Основное содержимое -->

    <div class="page-header">
        <h1>Все объявления</h1>
        <p class="lead">Пример макета для вывода данных в виде таблицы</p>
    </div>

    <div class="row">
        <div class="col-md-1">Фото</div>
        <div class="col-md-1">Цена</div>
        <div class="col-md-3">Адрес</div>
        <div class="col-md-3">Описание</div>
        <div class="col-md-1">Число комнат</div>
        <div class="col-md-1">Площадь</div>
        <div class="col-md-1">Этаж</div>
        <div class="col-md-1">Этажность</div>

    </div>

    <c:forEach items="${ads}" var="ad">
        <br>
        <div class="row">
            <div class="col-md-1">
                <a target="_blank" href="image/ad${ad.id}">
                    <img src="image/ad${ad.id}" height="40px" alt="${ad.address} $${ad.price}">
                </a>
            </div>
            <div class="col-md-1">${ad.price} </div>
            <div class="col-md-3">${ad.address} </div>
            <div class="col-md-3">${ad.description} </div>
            <div class="col-md-1">${ad.rooms} </div>
            <div class="col-md-1">${ad.area} </div>
            <div class="col-md-1">${ad.floor} </div>
            <div class="col-md-1">${ad.floors} </div>
        </div>
    </c:forEach>

    <hr>
    <div class="row">
        <mytag:paginator count="${adsSize}" step="10" urlprefix="?start="/>
    </div>


</div>
</body>
</html>
