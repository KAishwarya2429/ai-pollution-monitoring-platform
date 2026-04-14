<%@ page import="java.util.List" %>
<%@ page import="com.aipollutionapp.model.PollutionReport" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin Dashboard | AI Pollution App</title>
    <link rel="stylesheet" href="css/style.css">

    <!-- GOOGLE MAPS -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_GOOGLE_MAPS_API_KEY"></script>

    <style>
        /* Map styling */
        #map {
            height: 500px;
            width: 100%;
            border-radius: 20px;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<div class="admin-wrapper">

    <div class="admin-header">
        <h1 class="admin-title">Environmental Control Panel</h1>
    </div>

    <!-- KPI CARDS -->
    <div class="admin-cards">
        <div class="stat-card">
            <h3>Pending</h3>
            <p>${pending}</p>
        </div>
        <div class="stat-card">
            <h3>Review</h3>
            <p>${review}</p>
        </div>
        <div class="stat-card">
            <h3>Resolved</h3>
            <p>${resolved}</p>
        </div>
    </div>

    <!-- GOOGLE MAP -->
    <div id="map"></div>

    <script>
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 5,
                center: {lat: 20.5937, lng: 78.9629} // Centered on India
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

    <!-- REPORT TABLE -->
    <div class="admin-table">
        <table>
            <tr>
                <th>ID</th>
                <th>City</th>
                <th>Type</th>
                <th>Severity</th>
                <th>Status</th>
                <th>Action</th>
            </tr>

            <%
                if (reports != null && !reports.isEmpty()) {
                    for(PollutionReport r : reports){
            %>
            <tr>
                <td><%= r.getId() %></td>
                <td><%= r.getCity() %></td>
                <td><%= r.getType() %></td>
                <td><%= r.getSeverity() %></td>
                <td>
                    <span class="status <%= r.getStatus() %>"><%= r.getStatus() %></span>
                </td>
                <td>
                    <form class="action-form" action="update-status" method="post">
                        <input type="hidden" name="id" value="<%= r.getId() %>">
                        <select name="status">
                            <option>Pending</option>
                            <option>Review</option>
                            <option>Resolved</option>
                        </select>
                        <button>Update</button>
                    </form>
                </td>
            </tr>
            <% }} else { %>
            <tr>
                <td colspan="6">No reports found.</td>
            </tr>
            <% } %>

        </table>
    </div>

</div>

</body>
</html>
