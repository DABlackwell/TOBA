/**
 * @author Daniel Brooks 269416
 * This program allows the user to reset their password.
 */

package TOBA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PasswordResetServlet extends HttpServlet {
    
    @Override // Overrides the doPost method of the HttpServlet class
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        // Gets the user object from session &  changes the password parameter
        HttpSession session = request.getSession();
        String password = request.getParameter("password");
        User user = (User) session.getAttribute("user");
        user.setPassword(password);
        
        // If userName & password correct, logs in to account; otherwise, fails
        getServletContext().getRequestDispatcher(
            "/account_activity.jsp").forward(request, response);
    }
    
    @Override // Overrides the getPost method of the HttpServlet class
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        // Sends get request to doPost method
        doPost(request, response);
    }
}
