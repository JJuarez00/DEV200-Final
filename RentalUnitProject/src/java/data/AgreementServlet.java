
package data;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class AgreementServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Fetch the selected unit from the request
        String selectedUnit = request.getParameter("unit");

        // Save the selected unit in the request attributes
        request.setAttribute("unit", selectedUnit);

        // Forward the request to the agreement.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("agreement.jsp");
        dispatcher.forward(request, response);
    }
}

