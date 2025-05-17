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
            <jsp:include page="/includes/navbar.jsp" />
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
