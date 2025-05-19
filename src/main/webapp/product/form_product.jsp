<%-- 
    Document   : form_product
    Created on : May 16, 2025, 5:14:01 PM
    Author     : fadhlan
--%>

<%@page import="models.Product"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
        <jsp:include page="/includes/bootstrap.jsp" />

    </head>
    <body>
        <div class="container">
            <jsp:include page="/includes/navbar.jsp" />
            <div class="row justify-content-center" >
                <div class="col-3">
                    <h4>Form ${title}</h4>
                    <%
                        Product prod = null;
                        if (request.getAttribute("product") != null)
                            prod = (Product) request.getAttribute("product");
                    %>
                    <form class="border" style="padding:20px" method="POST" action="product${action}">
                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" name="name" class="form-control" value="<%= prod == null ? "" : prod.getName()%>" required />
                        </div>
                        <div class="form-group">
                            <label>Harga</label>
                            <input type="number" name="price" step="any" class="form-control" value="<%= prod == null ? "" : prod.getPrice()%>" required />
                            </div>
                        <div style="text-align:center">
                            <button class="btn btn-success">Simpan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>