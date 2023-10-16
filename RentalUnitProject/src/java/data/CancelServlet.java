package data;


import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

public class CancelServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");  // Assume you get this from the session or request
        String canceledUnit = request.getParameter("unit");
        String filePath = getServletContext().getRealPath("/") + "../data/reservations.txt";

        List<String> lines = Files.readAllLines(Paths.get(filePath));
        lines.removeIf(line -> line.contains(username) && line.contains(canceledUnit));

        Files.write(Paths.get(filePath), lines);

        // Redirect back to the units list
        response.sendRedirect("units.jsp");
    }
}


