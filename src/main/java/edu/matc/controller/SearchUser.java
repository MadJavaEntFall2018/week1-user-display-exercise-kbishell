package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.persistence.UserData;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * A simple servlet to welcome the user.
 * @author pwaite
 */

@WebServlet(
        urlPatterns = {"/searchUser"}
)

public class SearchUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserData userData = new UserData();

        String search = req.getParameter("search");

        if(search == null || search.length() == 0){
            /*HttpSession session = req.getSession();
            session.setAttribute("emptyMessage", "Please enter search information");*/
            req.setAttribute("users", userData.getAllUsers());
        } else {

            req.setAttribute("users", userData.getUserByLastName(search));
        }

        RequestDispatcher dispatcher = req.getRequestDispatcher("/results.jsp");
        dispatcher.forward(req, resp);
    }
}