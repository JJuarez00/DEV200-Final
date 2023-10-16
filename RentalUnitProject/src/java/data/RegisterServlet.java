
package data;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class RegisterServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        boolean registrationSuccess = false;

        // Store the username and password in a text file
        try (FileWriter writer = new FileWriter(getServletContext().getRealPath("/WEB-INF/data/users.txt"), true)) {
            writer.write(username + "," + password + "\n");
            registrationSuccess = true;
        } catch (IOException e) {
            // Handle exception
            getServletContext().log("An error occurred while writing to the file", e);
        }

        // Redirect based on registration result
        if (registrationSuccess) {
            response.sendRedirect("login.jsp");
        } else {
            PrintWriter out = response.getWriter();
            out.println("Registration failed");
        }
    }
}




