/**
 * @author Daniel Brooks 269416
 * 
 */

package TOBA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewCustomerServlet extends HttpServlet {

    @Override // Overrides the doPost method of the HttpServlet class
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        // Gets the parameters
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipCode = request.getParameter("zipCode");
        String email = request.getParameter("email");
        
        // Validates the parameters
        String url = "/new_customer.jsp";
        String message;
        if (firstName == null || firstName.isEmpty() ||
                lastName == null || lastName.isEmpty() ||
                phone == null || phone.isEmpty() ||
                address == null || address.isEmpty() ||
                city == null || city.isEmpty() ||
                state == null || state.isEmpty() ||
                zipCode == null || zipCode.isEmpty() ||
                email == null || email.isEmpty()) {
            message = "Please fill out all the text boxes.";
        }
        else {
            message = "";
            url = "/success.html";
        }
        request.setAttribute("message", message);
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
        
/* Doesn't work (when replacing the "Validates parameters" section above)        
        // Stores the parameters in an array
        String[] user = {firstName, lastName, phone, address, city, state,
            zipCode, email};

        // Validate the parameters; redirect if all fields completed
        String message;
        String url = "success.html";
        for (int i = 0; i < user.length; i++) {
            if (user[i].isEmpty() || user[i] == null) {
                message = "Please fill out all text boxes in the form.";
                url = "new_customer.jsp";
                request.setAttribute("message", message);
                getServletContext().getRequestDispatcher(url)
                        .forward(request, response);
            }
            else {
                response.sendRedirect(url);
            }
        }
*/
    }

    @Override // Overrides the doPost method of the HttpServlet class
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        // Sends get request to doPost method
        doPost(request, response);
    }
}