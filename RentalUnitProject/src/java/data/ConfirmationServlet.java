
package data;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class ConfirmationServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");  
        String confirmedUnit = request.getParameter("unit");
        String filePath = getServletContext().getRealPath("/") + "../data/reservations.txt";


        // Append the reservation to the file
        Files.write(Paths.get(filePath), (username + "," + confirmedUnit + "\n").getBytes(), StandardOpenOption.APPEND);

        // Redirect to a confirmation page or back to the units list
        response.sendRedirect("units.jsp");
    }
}

