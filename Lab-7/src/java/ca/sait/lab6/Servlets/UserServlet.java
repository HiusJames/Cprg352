/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ca.sait.lab6.Servlets;

import ca.sait.lab6.Models.Role;
import ca.sait.lab6.Models.User;
import ca.sait.lab6.services.RoleService;
import ca.sait.lab6.services.UserService;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author huyth
 */
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserService service = new UserService();

        try {
            List<User> users = service.getAll();
            request.setAttribute("users", users);
        } catch (Exception ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserService service = new UserService();
        RoleService rservice = new RoleService();
        String action = request.getParameter("action");
        String email = request.getParameter("email");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String password = request.getParameter("password");
        if (action.equals("delete")) {
            try {
                service.delete(email);
                response.sendRedirect("user");
                return;
            } catch (Exception ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (action.equals("remove")) {
            try {
                service.remove(email);
                response.sendRedirect("user");
                return;
            } catch (Exception ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (action.equals("update")) {
            try {
                Role role = null;
                List<Role> roles = rservice.getAll();
                int roleID = Integer.parseInt(request.getParameter("role"));
                for (int i = 0; i < roles.size(); i++) {
                    if (roles.get(i).getId() == roleID) {
                        role = roles.get(i);
                    }
                }
                service.update(email, true, fname, lname, password, role);
                response.sendRedirect("user");
                return;
            } catch (Exception ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (action.equals("create")) {
            String emailText = request.getParameter("emailText");
            try {
                Role role = null;
                List<Role> roles = rservice.getAll();
                int roleID = Integer.parseInt(request.getParameter("role"));
                for (int i = 0; i < roles.size(); i++) {
                    if (roles.get(i).getId() == roleID) {
                        role = roles.get(i);
                    }
                }
                service.insert(emailText, true, fname, lname, password, role);
                response.sendRedirect("user");
                return;
            } catch (Exception ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
    }

}
