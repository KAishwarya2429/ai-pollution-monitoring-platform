<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Report Pollution | EarthAI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:'Inter',sans-serif;}
        body{background:linear-gradient(135deg,#020617,#022c22);color:white;min-height:100vh;}
        .container{width:90%;max-width:960px;margin:auto;}
        .header{position:sticky;top:0;background:rgba(2,6,23,.85);backdrop-filter:blur(14px);border-bottom:1px solid rgba(255,255,255,.12);z-index:1000;}
        .header-inner{display:flex;justify-content:space-between;align-items:center;padding:18px 0;}
        .logo{font-size:26px;font-weight:900;background:linear-gradient(90deg,#22c55e,#38bdf8);-webkit-background-clip:text;-webkit-text-fill-color:transparent;}
        .nav a{margin-left:24px;color:#cbd5f5;text-decoration:none;font-weight:600;}
        .nav a:hover{color:#38bdf8}

        /* FORM */
        .report-card{background:rgba(255,255,255,.08);backdrop-filter:blur(18px);border-radius:22px;padding:40px;margin-top:60px;border:1px solid rgba(255,255,255,.12);}
        .report-card h2{text-align:center;font-size:32px;margin-bottom:24px;}
        .form-group{margin-bottom:18px;display:flex;flex-direction:column;}
        .form-group label{font-size:14px;margin-bottom:6px;color:#cbd5f5;}
        .form-group input,
        .form-group select,
        .form-group textarea{padding:12px;border-radius:12px;border:1px solid rgba(255,255,255,.25);background:rgba(255,255,255,.12);color:white;outline:none;}
        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus{border-color:#22c55e;}
        .submit-btn{background:linear-gradient(135deg,#22c55e,#38bdf8);padding:14px 24px;border-radius:12px;color:black;font-weight:700;border:none;cursor:pointer;margin-top:12px;transition:.3s;}
        .submit-btn:hover{transform:scale(1.03);}
        .success-msg{color:limegreen;text-align:center;margin-top:12px;}
    </style>
</head>
<body>

<header class="header">
    <div class="container header-inner">
        <div class="logo">EarthAI</div>
        <nav class="nav">
            <a href="home.jsp">Home</a>
            <a href="features.jsp">Features</a>
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
        </nav>
    </div>
</header>

<div class="container">
    <div class="report-card">
        <h2>Report Pollution Incident</h2>

        <!-- Form submitting to servlet -->
        <form action="api/report" method="post" enctype="multipart/form-data">

            <div class="form-group">
                <label for="title">Title of Incident</label>
                <input type="text" id="title" name="title" required>
            </div>

            <div class="form-group">
                <label for="city">City</label>
                <input type="text" id="city" name="city" required>
            </div>

            <div class="form-group">
                <label for="type">Pollution Type</label>
                <select id="type" name="type" required>
                    <option value="">Select Type</option>
                    <option value="Air">Air</option>
                    <option value="Water">Water</option>
                    <option value="Noise">Noise</option>
                    <option value="Waste">Waste</option>
                </select>
            </div>

            <div class="form-group">
                <label for="photo">Upload Photo</label>
                <input type="file" id="photo" name="photo" accept="image/*">
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" required></textarea>
            </div>

            <button type="submit" class="submit-btn">Submit Report</button>
        </form>

        <!-- Success message -->
        <% if ("true".equals(request.getParameter("success"))) { %>
            <p class="success-msg">✅ Report submitted successfully!</p>
        <% } %>

    </div>
</div>

</body>
</html>
