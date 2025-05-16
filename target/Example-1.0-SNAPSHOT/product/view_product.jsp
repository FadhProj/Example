<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, models.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
        <jsp:include page="/includes/bootstrap.jsp" />

    </head>
    <body >
        <div class="container">
            <jsp:include page="/includes/navbar.jsp" />
            <div class="row justify-content-center">
                <div class="col-4">
                    <span class="float-left">${sessionScope.msg}</span>
                    <a href="${pageContext.request.contextPath}/product?menu=add" class="btn btn-secondary float-right">Add</a><br /><br />
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>No.</th>
                            <<th>id</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                        <%
                            ArrayList<Product> prods = (ArrayList<Product>) session.getAttribute("list");
                            int i = 1;
                            if (prods != null) {
                                for (Product p : prods) {
                        %>
                        <tr>
                            <td><%= i++%></td>
                            <td><%= p.getId()%></td>
                            <td><%= p.getName()%></td>
                            <td><%= p.getPrice()%></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/product?menu=edit&id=<%= p.getId()%>" class="btn btn-primary">Edit</a>
                                <form method="post" action="${pageContext.request.contextPath}/product?action=del&id=<%= p.getId()%>"
                                      style="display:inline" onsubmit="return confirm('Yakin hapus?')">
                                    <button class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                        <%  }
                        } else { %>
                        <tr><td colspan="4">Empty Data.</td></tr>
                        <% }%>
                    </table>
                </div>
            </div
        </div>
    </body>
</html>
