/**
 * @author Daniel Brooks 269416
 * This program gets the username and password, checks both, and then
 * sends the request to the appropriate page.
 */

package TOBA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    
    @Override // Overrides the doPost method of the HttpServlet class
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        // Gets the userName & password parameters & declares url variable
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String url = "";
        
        // If userName & password correct, logs in to account; otherwise, fails
        if ("jsmith@toba.com".equals(userName) && "letmein".equals(password))
            url = "/account_activity.html";
        else
            url = "/login_failure.html";
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    @Override // Overrides the getPost method of the HttpServlet class
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        // Sends get request to doPost method
        doPost(request, response);
    }
}
