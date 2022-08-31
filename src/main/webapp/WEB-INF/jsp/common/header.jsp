<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><c:out value="${pageTitle}"/></title>
    <link rel="stylesheet" href="css/site.css">
    <link rel="stylesheet" href="css/cards.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"></head>
<body>
<header>
    <nav>
        <ul class="main-nav">
            <li><a href="home">Home</a></li>
            <li><a href="about">About</a></li>
            <li><a href="private">Private</a></li>
            <c:if test="${appCurrentUser.role == 'admin'}">
                <li><a href="admin">Administration</a></li>
            </c:if>
        </ul>
        <ul class="push">
            <c:if test="${empty appCurrentUser}">
                <c:url var="loginUrl" value="/login"/>
                <li><a href="${loginUrl}">Login</a></li>
                <c:url var="registerUrl" value="/register"/>
                <li><a href="${registerUrl}">Register</a></li>
            </c:if>
            <c:if test="${not empty appCurrentUser}">
                <li><a href="profile"><c:out value="${appCurrentUser.username}" /></a></li>
                <c:url var="logoffUrl" value="/logoff"/>
                <li>
                    <form action="${logoffUrl}" method="POST" class="navbar-form">
                        <button type="submit" class="btn btn-primary">Log Off</button>
                    </form>
                </li>
            </c:if>
        </ul>
    </nav>
</header>
<main>
