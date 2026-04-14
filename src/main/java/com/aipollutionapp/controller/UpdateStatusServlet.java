//package com.aipollutionapp.controller;
//
//import com.aipollutionapp.dao.PollutionReportDAO;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//
//@WebServlet("/update-status")
//public class UpdateStatusServlet extends HttpServlet {
//
//    private static final long serialVersionUID = 1L;
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse res)
//            throws ServletException, IOException {
//
//        int id = Integer.parseInt(req.getParameter("id"));
//        String status = req.getParameter("status");
//
//        PollutionReportDAO.updateStatus(id, status);
//
//        res.sendRedirect("admin-dashboard");
//    }
//}
