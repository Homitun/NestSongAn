/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.DAO;

import java.sql.SQLException;
import sample.DTO.userDTO;
import org.apache.commons.lang3.RandomStringUtils;

public class CustomerServices {

    public String resetCustomerPassword(String email) throws SQLException {
        userDTO customer = userDAO.findByEmail(email);
        String randomPassword = RandomStringUtils.randomAlphanumeric(10);
        customer.setPassWord(randomPassword);
        userDAO.update(customer);
        return randomPassword;
    }
}
