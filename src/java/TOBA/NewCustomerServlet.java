/**
 * @author Daniel Brooks 269416
 * 
 */

package TOBA;

import TOBA.business.Account;
import TOBA.business.User;
import TOBA.data.AccountDB;
import TOBA.data.UserDB;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
            
            // Create temp username & password
            String userName = (lastName + zipCode);
            String password = "welcome1";
            
            // Get session & set User as an attribute
            HttpSession session = request.getSession();
            User user = new User(firstName, lastName, phone, address,
                city, state, zipCode, email, userName, password);
            session.setAttribute("user", user);
            
            // Add user to the database
            UserDB.insert(user);
            
            // Open checking ($0) and savings ($25) and add to AccountDB
            Account savingsAccount = new Account(user, 25.00);
            savingsAccount.setAccountType("SAVINGS");
            Account checkingAccount = new Account(user, 0.00);
            savingsAccount.setAccountType("CHECKING");
            AccountDB.insert(savingsAccount);
            AccountDB.insert(checkingAccount);
            
            url = "/success.jsp";
        }
        request.setAttribute("message", message);
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
        
    }

    @Override // Overrides the doPost method of the HttpServlet class
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        // Sends get request to doPost method
        doPost(request, response);
    }
}