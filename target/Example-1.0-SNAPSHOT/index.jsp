<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Web</title>
        <jsp:include page="/includes/bootstrap.jsp" />
    </head>
    <body>
        <div class="container">
            <%-- <jsp:include page="/includes/navbar.jsp" /> <!-- Include navbar -->  --%>
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
                                <a class="nav-link" href="${pageContext.request.contextPath}/product">Product</a>
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
            <h1 id="judul">Welcome</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin diam, vel vestibulum ipsum. Fusce imperdiet enim eget mauris blandit, non blandit enim aliquet. Praesent ac sem ornare metus faucibus viverra. Proin vitae tincidunt leo. Morbi nibh arcu, tempus pulvinar tortor vel, auctor dapibus felis. Vestibulum eget lobortis lacus. Pellentesque sit amet rhoncus mauris. Vestibulum eget placerat tortor. Donec tincidunt enim diam, vitae lacinia eros pretium feugiat. Ut ut quam maximus, accumsan nibh a, posuere nulla. Fusce facilisis sit amet metus id pharetra. </p>

            <p>Donec lectus velit, pulvinar pellentesque sapien et, pellentesque scelerisque leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vitae ligula vel arcu venenatis vestibulum vel vitae diam. Integer lectus dolor, efficitur facilisis tempor posuere, finibus ac leo. Aenean quis efficitur elit, et congue purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pharetra mi vel est pharetra vestibulum. Pellentesque sed massa erat. Aliquam eu enim sed erat convallis commodo. Duis nec tempor enim, non suscipit lorem.</p>

            <p>Sed nec blandit nunc, ut scelerisque justo. Nullam eu ex sapien. Quisque mattis gravida ex vitae accumsan. Vivamus facilisis eros id ornare auctor. Morbi convallis tempus sapien vitae posuere. Donec dictum neque congue urna efficitur dignissim. Sed porta, justo id rhoncus euismod, nunc est rutrum justo, eget sodales metus risus et turpis. Quisque sit amet justo erat. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>

        </div>
    </body>
</html>
