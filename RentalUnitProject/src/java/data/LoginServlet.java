package data;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Scanner;

public class LoginServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        boolean isValidUser = false;

        // Validate the username and password by checking the text file
        try (Scanner scanner = new Scanner(new File(getServletContext().getRealPath("../data/users.txt")))) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                String[] credentials = line.split(",");  // Assuming usernames and passwords are separated by commas
                if (credentials[0].equals(username) && credentials[1].equals(password)) {
                    isValidUser = true;
                    break;
                }
            }
        } catch (FileNotFoundException e) {
            getServletContext().log("File not found", e);
        }

        // Redirect based on validation result
        if (isValidUser) {
            response.sendRedirect("units.jsp");
        } else {
            PrintWriter out = response.getWriter();
            out.println("Invalid username or password");
        }
    }
}
