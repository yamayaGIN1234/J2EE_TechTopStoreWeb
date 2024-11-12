/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package bach.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import bach.dev.data.dao.DatabaseDao;
import bach.dev.data.dao.UserDAO;
import bach.dev.data.model.User;

/**
 *
 * @author Admin
 */
public class RegisterServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        request.getRequestDispatcher("register.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repeatPass = request.getParameter("repeatPass");

        UserDAO userDao = DatabaseDao.getInstance().getUserDao();
        User user = userDao.find(email);

        if (user != null) {
            session.setAttribute("error", "Email existed");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else if (!password.equals(repeatPass)) {
            session.setAttribute("error", "Re-entered password does not match.");
            session.setAttribute("email", email);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            user = new User(email, password, "user");
            userDao.insert(user);
            response.sendRedirect("LoginServlet");
        }
    }
}
