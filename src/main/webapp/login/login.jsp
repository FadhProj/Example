<%-- 
    Document   : login
    Created on : May 10, 2025, 11:26:53 AM
    Author     : fadhlan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Web</title>
        <jsp:include page="/includes/bootstrap.jsp" />


    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="${pageContext.request.contextPath}/img/Logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                    </a>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/product/view.jsp">Product</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/login/login.jsp">Login</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <h6 class="text-center text-danger">${msg}</h6>
                    <form method = "post" action="${pageContext.request.contextPath}/login">
                        <div class="form-group">
                            <label for="inputUsername">Username</label>
                            <input type="text" class="form-control" id="inputUsername" name="user" placeholder="username">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword1">Password</label>
                            <input type="password" class="form-control " id="inputPassword1" name="pass" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
