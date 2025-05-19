/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.function.Predicate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Product;

/**
 *
 * @author fadhlan
 */
@WebServlet(name = "ProductController", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu"); // GET PARAM "MENU" FROM URL

        HttpSession session = request.getSession(); // ACTIVATE SESSION

        // DEFAULT INITIAL DATA. OPTIONAL GET FROM DATABASE
        if (session.getAttribute("list") == null) {
            //ArrayList<Product> prods = new Product().get();
            ArrayList<Product> prods = new ArrayList<>();
            prods.add(new Product(1, "Nasi Goreng", 15000));
            prods.add(new Product(2, "Nasi Mawud", 20000));
            prods.add(new Product(3, "Mie Goreng", 15000));
            prods.add(new Product(4, "Nasi Gila", 20000));
            prods.add(new Product(5, "Mie Kolor", 20000));

            session.setAttribute("list", prods);
        }

        ArrayList<Product> prods = (ArrayList<Product>) session.getAttribute("list");

        if (menu == null) {
            request.setAttribute("title", "Daftar Product");
            request.getRequestDispatcher("product/view_product.jsp").forward(request, response);
        } else {
            switch (menu) {
                case "add": // INSERT
                    request.setAttribute("title", "Tambah Product");
                    request.setAttribute("action", ""); // no ?id=, karena tambah
                    request.getRequestDispatcher("/product/form_product.jsp").forward(request, response);
                    break;

                case "edit": // EDIT
                    request.setAttribute("title", "Edit Product");
                    String id = request.getParameter("id");
                    Product found = null;
                    for (Product p : prods) {
                        System.out.println(p.getId() + " " + Integer.parseInt(id));
                        if (p.getId() == Integer.parseInt(id)) {
                            found = p;
                        }
                    }
                    request.setAttribute("product", found);
                    request.setAttribute("action", "?id=" + id);
                    request.getRequestDispatcher("/product/form_product.jsp").forward(request, response);
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String action = request.getParameter("action");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        double price = 0;

        if (!"del".equals(action)) {
            price = Double.parseDouble(request.getParameter("price"));
        }

        ArrayList<Product> prods = (ArrayList<Product>) session.getAttribute("list");

        if (id == null) {
            // INSERT
            int newId = 1;
            if (!prods.isEmpty()) {
                newId = prods.get(prods.size() - 1).getId() + 1;
            }
            Product newProduct = new Product(newId, name, price);
            prods.add(newProduct);
        } else if (action == null) {
            // UPDATE
            int pid = Integer.parseInt(id);
            for (Product p : prods) {
                if (p.getId() == pid) {
                    p.setName(name);
                    p.setPrice(price);
                    break;
                }
            }
        } else if ("del".equals(action)) {
            // DELETE
            int pid = Integer.parseInt(id);
            Predicate<Product> condition = p -> p.getId() == pid;
            prods.removeIf(condition);
        }

        session.setAttribute("list", prods);
        response.sendRedirect(request.getContextPath() + "/product");
    }

    @Override
    public String getServletInfo() {
        return "Product CRUD Controller";
    }
}
