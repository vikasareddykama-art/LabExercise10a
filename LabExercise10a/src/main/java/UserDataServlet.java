// 10a. JSP + Servlet program with client and server-side validation

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/UserDataServlet")
public class UserDataServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String desig = request.getParameter("designation");

        // Server-side validation
        if (name == null || name.isEmpty() ||
            email == null || email.isEmpty() ||
            desig == null || desig.isEmpty()) {

            response.getWriter().println("Error: All fields are required!");
            return;
        }

        if (!email.contains("@") || !email.contains(".")) {
            response.getWriter().println("Error: Invalid Email Format!");
            return;
        }

        // Pass data to JSP
        request.setAttribute("username", name);
        request.setAttribute("email", email);
        request.setAttribute("designation", desig);

        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}