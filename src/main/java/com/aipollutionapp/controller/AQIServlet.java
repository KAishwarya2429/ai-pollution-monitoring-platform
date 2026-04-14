package com.aipollutionapp.controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.net.*;

public class AQIServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String city = req.getParameter("city");
        String apiKey = "d7168bde689cff03520cc7ac961ead45";

        // STEP 1: Get coordinates
        String geoUrl = "https://api.openweathermap.org/geo/1.0/direct?q="
                + city + "&limit=1&appid=" + apiKey;

        URL url = new URL(geoUrl);
        BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));

        StringBuilder geoResponse = new StringBuilder();
        String line;

        while ((line = br.readLine()) != null) {
            geoResponse.append(line);
        }

        // 🔥 Return response to frontend
        res.setContentType("application/json");
        res.getWriter().write(geoResponse.toString());
    }
}