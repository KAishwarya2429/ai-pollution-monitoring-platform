package com.aipollutionapp.controller;

import com.aipollutionapp.dao.PollutionReportDAO;
import com.aipollutionapp.dao.impl.PollutionReportDAOImpl;
import com.aipollutionapp.model.PollutionReport;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;

@WebServlet("/api/report")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5) // 5MB
public class PollutionReportServlet extends HttpServlet {

    private PollutionReportDAO reportDAO;

    @Override
    public void init() {
        reportDAO = new PollutionReportDAOImpl();
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String city = request.getParameter("city");
        String pollutionType = request.getParameter("type");
        String description = request.getParameter("description");

        Part photoPart = request.getPart("photo");
        byte[] photoBytes = null;
        if (photoPart != null && photoPart.getSize() > 0) {
            photoBytes = photoPart.getInputStream().readAllBytes();
        }

        PollutionReport report = new PollutionReport(
                title, city, pollutionType, description, photoBytes
        );

        reportDAO.save(report); // <-- correct

        response.sendRedirect("report.jsp?success=true");
    }
}
