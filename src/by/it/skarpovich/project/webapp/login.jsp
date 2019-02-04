<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@ include file="include/head.jsp" %>
<body>
<div class="container">
<%@ include file="include/menu.jsp" %>

<form class="form-horizontal" action="do?command=login" method="POST">
<fieldset>

<div class="page-header">
    <h1>Авторизация</h1>
    <p class="lead">Введите логин и пароль</p>
</div>

<!-- Text input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="username">Имя пользователя</label>
    <div class="col-md-4">
    <input id="username" name="username" value="john" type="text" placeholder="min 6 symbols" class="form-control input-md" required="">
</div>
</div>

<!-- Password input-->
<div class="form-group">
    <label class="col-md-4 control-label" for="password">Пароль</label>
    <div class="col-md-4"><input id="password" name="password" value="john1" type="password" placeholder="" class="form-control input-md" required="">
    </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="username"></label>
  <div class="col-md-4"><button id="login" name="login" class="btn btn-success">Войти</button></div>
</div>
</fieldset>
</form>

</div>
</body>
</html>

