/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.UserDAO;
import dtos.User;
import dtos.userError;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SE151471 Hoang Minh Tuan>
 */
@WebServlet(name = "CreateController", urlPatterns = {"/CreateController"})
public class CreateController extends HttpServlet {
private static final String ERROR = "signUpPage.jsp";
    private static final String SUCCESS = "login.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        userError usererror = new userError();
        boolean checkValidation = true;
        UserDAO dao = new UserDAO();
        try {
//            int user_ID = Integer.parseInt(request.getParameter("user_ID"));
            String userName = request.getParameter("userName");
            String user_Fullname = request.getParameter("user_Fullname");
            String passWord = request.getParameter("passWord");
            String password_Comfirm = request.getParameter("passWord_ComfirmError");
            String phoneNumber = request.getParameter("phoneNumber");
            String Email = request.getParameter("Email");
            String Address = request.getParameter("Address");
            int role_ID = Integer.parseInt(request.getParameter("role_ID")) ;

            //CHECK VALIDATION USER NAME
            if (userName.length() > 10 || userName.length() < 2) {
                checkValidation = false;
                usererror.setUserNameError("USER NAME MUST IN FROM 2 TO 10!");
            }
            // CHECK USER NAME
            boolean checkDuplicate = dao.checkDuplicate(userName);
            if (checkDuplicate == false) {
                checkValidation = false;
                usererror.setUserNameError("USER NAME HAVE BEEN USED! ");
            }
            // CHECK PASSWORD - COMFIRM
            if (!passWord.equals(password_Comfirm)) {
                checkValidation = false;
                usererror.setPassWord_ComfirmError("TWO PASSWORD IS NOT SAME!");
            }
            // CHECK ADDRESS 
//            if (Address.length() < 1) {
//                checkValidation = false;
//                usererror.setAdressError("ADDRESS MUST BE MORE THAN 1 WORD!");
//            }
            if (checkValidation) {
           
                User user = new User(0, user_Fullname, userName, passWord, phoneNumber, Email, Address, role_ID);
                boolean checkInsert = dao.insert(user);
                if (checkInsert) {
                    url = SUCCESS;
                } else {
                    request.setAttribute("USER_ERROR", usererror);
                }
            }
        } catch (Exception e) {
            log("Error at Create Controller: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
