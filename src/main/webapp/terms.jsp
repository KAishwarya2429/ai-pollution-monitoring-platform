<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Terms & Conditions | EarthAI</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Inter',sans-serif;}
body{background:linear-gradient(135deg,#020617,#022c22);color:white;min-height:100vh;}
.container{width:90%;max-width:960px;margin:auto;padding:60px 0;}
.header{position:sticky;top:0;background:rgba(2,6,23,.85);backdrop-filter:blur(14px);border-bottom:1px solid rgba(255,255,255,.12);z-index:1000;}
.header-inner{display:flex;justify-content:space-between;align-items:center;padding:18px 0;}
.logo{font-size:26px;font-weight:900;background:linear-gradient(90deg,#22c55e,#38bdf8);-webkit-background-clip:text;-webkit-text-fill-color:transparent;}
.nav a{margin-left:24px;color:#cbd5f5;text-decoration:none;font-weight:600;}
.nav a:hover{color:#38bdf8;}
.terms-card{background:rgba(255,255,255,.08);backdrop-filter:blur(14px);border-radius:22px;padding:40px;margin-top:50px;border:1px solid rgba(255,255,255,.12);}
.terms-card h2{font-size:32px;margin-bottom:20px;color:#38bdf8;}
.terms-card p{margin-bottom:16px;color:#cbd5f5;line-height:1.6;}
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
<div class="terms-card">
<h2>Terms & Conditions</h2>
<p>All users accessing EarthAI must use the platform responsibly and comply with local environmental laws. Reporting false incidents is strictly prohibited.</p>
<p>The platform provides data and predictions "as is" and does not guarantee complete accuracy. Users should verify critical environmental information before taking action.</p>
<p>By using EarthAI, you agree not to misuse the platform for personal gain, illegal activities, or spreading misinformation.</p>
<p>EarthAI reserves the right to modify the terms at any time, and continued use of the platform implies acceptance of the updated terms.</p>
</div>
</div>

</body>
</html>
