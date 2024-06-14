package com.example.demo4.web;

import com.example.demo4.dao.EmployeeDao;
import com.example.demo4.dao.UserDao;
import com.example.demo4.model.Employee;
import com.example.demo4.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "User", value = "/user/*")
public class UserServlet extends HttpServlet {
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, RuntimeException {
        String action = request.getRequestURI();
        System.out.println("action"+ request.getRequestURI() + " " + request.getPathInfo() + " " );

        try {
            switch (action) {
                case "/demo4_war_exploded/user":
                    showNewForm(request, response);
                    break;
                case "/demo4_war_exploded/user/insert":
                    insertUser(request, response);
                    break;
//                case "/delete":
//                    deleteEmployee(request, response);
//                    break;
//                case "/edit":
//                    showEditForm(request, response);
//                    break;
//                case "/update":
//                    updateEmployee(request, response);
//                    break;
//                default:
//                    listEmployee(request, response);
//                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String password = request.getParameter("password");

        User user = new User(name, password);

        userDao.insertUser(user);
        response.sendRedirect("list");
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/user.jsp");
        dispatcher.forward(request, response);
    }
}
