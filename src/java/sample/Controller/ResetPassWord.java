/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.Controller;

import sample.Utils.EmailUtility;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.DAO.CustomerServices;
import sample.DAO.userDAO;
import sample.DTO.userDTO;
import sample.Utils.EmailUtility;
/**
 *
 * @author SE151471 Hoang Minh Tuan>
 */
@WebServlet("/reset_password")
public class ResetPassWord extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String ERROR = "resetPassWord.jsp";

    private String host;
    private String port;
    private String email;
    private String name;
    private String pass;

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        email = context.getInitParameter("email");
        name = context.getInitParameter("name");
        pass = context.getInitParameter("pass");
    }

    public ResetPassWord() {
    }

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page = "resetPassWord.jsp";
        request.getRequestDispatcher(page).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = ERROR;
        String subject = "Your Password has been reset";

        try {
            String resetemail = request.getParameter("email");
            CustomerServices customerServices = new CustomerServices();
            String newPassword = customerServices.resetCustomerPassword(resetemail);

            String content = "Hi, this is your new password: " + newPassword;
            content += "\nNote: for security reason, "
                    + "you must change your password after logging in.";

            String message = "";
            EmailUtility.sendEmail(host, port, email, name, pass,
                    resetemail, subject, content);
            message = "Your password has been reset. Please check your e-mail.";
            
        } catch (Exception e) {
            log("Error at ResetPassWordController: " + e.toString());
        } finally {
//             request.setAttribute("message", message);
//            request.getRequestDispatcher("message.jsp").forward(request, response);
            request.getRequestDispatcher(url).forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
