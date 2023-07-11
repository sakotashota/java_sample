package controller.mutter;

import model.mutter.Mutter;
import model.user.User;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
@WebServlet("/mutter/edit")
public class Edit extends HttpServlet{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/mutter/edit.jsp");
        dispatcher.forward(req, resp);
        int id = Integer.parseInt(req.getParameter("id"));

        Mutter mutter = new Mutter(
                id
                ,null
                ,null
        );
        session.setAttribute("currentMutter",mutter);
        dispatcher.forward(req, resp);
    }

 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String text =  req.getParameter("text");
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("currentUser");
        Mutter mutter = (Mutter) session.getAttribute("currentMutter");
        if(user == null || mutter == null){
            System.out.println("userがmutterかnullです");
        }else {
            mutter.setText(text);
            mutter.edit();
        }
 

        

        resp.sendRedirect("/mutter/read");
    }
}