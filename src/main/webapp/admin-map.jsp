<%@ page import="java.util.List" %>
<%@ page import="com.aipollutionapp.model.PollutionReport" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin Map | AI Pollution App</title>
    <link rel="stylesheet" href="css/style.css">

    <!-- GOOGLE MAPS API -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_GOOGLE_MAPS_API_KEY"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
        }

        .admin-wrapper {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background: #020617;
            color: #fff;
            border-radius: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        #map {
            height: 700px;
            width: 100%;
            border-radius: 15px;
        }
    </style>
</head>
<body>

<div class="admin-wrapper">
    <h1>AI Pollution Reports Map</h1>
    <div id="map"></div>
</div>

<script>
    function initMap() {
        // Center map in India
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 5,
            center: {lat: 20.5937, lng: 78.9629}
        });

        <% 
            List<PollutionReport> reports = (List<PollutionReport>)request.getAttribute("reports");
            if (reports != null && !reports.isEmpty()) {
                for (PollutionReport r : reports) {
        %>
        var marker = new google.maps.Marker({
            position: {lat: <%= r.getLatitude() %>, lng: <%= r.getLongitude() %>},
            map: map,
            title: "<%= r.getType() %> - <%= r.getSeverity() %>",
            icon: "<%= r.getStatus().equals("Resolved") ? 
                    "http://maps.google.com/mapfiles/ms/icons/green-dot.png" :
                    r.getStatus().equals("Review") ? 
                    "http://maps.google.com/mapfiles/ms/icons/blue-dot.png" :
                    "http://maps.google.com/mapfiles/ms/icons/red-dot.png" %>"
        });

        var infoWindow = new google.maps.InfoWindow({
            content: "<strong>City:</strong> <%= r.getCity() %> <br>" +
                     "<strong>Type:</strong> <%= r.getType() %> <br>" +
                     "<strong>Severity:</strong> <%= r.getSeverity() %> <br>" +
                     "<strong>Status:</strong> <%= r.getStatus() %>"
        });

        marker.addListener('click', function() {
            infoWindow.open(map, marker);
        });
        <% }} %>
    }

    window.onload = initMap;
</script>

</body>
</html>