//package com.aipollutionapp.controller;
//
//import com.aipollutionapp.dao.PollutionReportDAO;
//import com.aipollutionapp.model.PollutionReport;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet("/admin-dashboard")
//public class AdminController extends HttpServlet {
//
//    private static final long serialVersionUID = 1L;
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse res)
//            throws ServletException, IOException {
//
//        // Fetch all reports
//        List<PollutionReport> reports = PollutionReportDAO.getAllReports();
//
//        // Set attributes for JSP
//        req.setAttribute("reports", reports);
//        req.setAttribute("pending", PollutionReportDAO.countByStatus("Pending"));
//        req.setAttribute("review", PollutionReportDAO.countByStatus("Review"));
//        req.setAttribute("resolved", PollutionReportDAO.countByStatus("Resolved"));
//
//        // Forward to JSP
//        req.getRequestDispatcher("admin-dashboard.jsp").forward(req, res);
//    }
//}
