package com.aipollutionapp.controller;

import com.aipollutionapp.dao.ContactDAO;
import com.aipollutionapp.dao.impl.ContactDAOImpl;
import com.aipollutionapp.model.ContactMessage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/contactSubmit")
public class ContactSubmitServlet extends HttpServlet {

    private ContactDAO contactDAO;

    @Override
    public void init() {
        contactDAO = new ContactDAOImpl();
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        ContactMessage msg = new ContactMessage(
                request.getParameter("name"),
                request.getParameter("email"),
                request.getParameter("topic"),
                request.getParameter("message")
        );

        contactDAO.save(msg);

        response.sendRedirect("contact.jsp?success=true");
    }
}
