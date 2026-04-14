//package com.aipollutionapp.controller;
//import com.aipollutionapp.dao.PollutionReportDAO;
//import com.aipollutionapp.dao.impl.PollutionReportDAOImpl;
//import com.aipollutionapp.model.PollutionReport;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//import java.util.List;
//@WebServlet("/admin-map")
//public class AdminMapController extends HttpServlet {
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse res)
//            throws ServletException, IOException {
//
//        List<PollutionReport> reports = PollutionReportDAOImpl
//        		.getAllReports();
//        req.setAttribute("reports", reports);
//
//        req.getRequestDispatcher("admin-map.jsp").forward(req, res);
//    }
//}
