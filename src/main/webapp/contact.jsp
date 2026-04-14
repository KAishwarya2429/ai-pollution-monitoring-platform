<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>Contact Us | AI Pollution Monitoring Platform</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

/* ===============================
   FONT
================================ */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap');

/* ===============================
   BASE
================================ */

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:"Inter",sans-serif;
}

body{
  background:
    radial-gradient(circle at 20% 10%,rgba(56,189,248,.18),transparent),
    radial-gradient(circle at 80% 30%,rgba(34,197,94,.2),transparent),
    linear-gradient(135deg,#020617,#022c22);
  color:white;
}

a{text-decoration:none;color:inherit}

.container{
  width:90%;
  max-width:1250px;
  margin:auto;
}

/* ===============================
   HEADER
================================ */

header{
  position:sticky;
  top:0;
  z-index:999;
  backdrop-filter:blur(18px);
  background:rgba(2,6,23,.85);
  border-bottom:1px solid rgba(255,255,255,.12);
}

.header-inner{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding:18px 0;
}

.logo{
  font-size:28px;
  font-weight:900;
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

nav a{
  margin-left:26px;
  color:#cbd5f5;
  font-weight:600;
}

nav a:hover{color:#38bdf8}

.btn-login{
  padding:8px 20px;
  border-radius:999px;
  background:linear-gradient(135deg,#22c55e,#38bdf8);
  color:black;
  font-weight:800;
}

/* ===============================
   HERO
================================ */

.hero{
  padding:110px 0 80px;
  text-align:center;
}

.hero h1{
  font-size:48px;
  font-weight:900;
}

.hero span{
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.hero p{
  margin-top:16px;
  color:#cbd5f5;
  max-width:720px;
  margin-inline:auto;
}

/* ===============================
   CONTACT GRID
================================ */

.contact-section{
  padding:100px 0;
}

.contact-grid{
  display:grid;
  grid-template-columns:1.2fr 1fr;
  gap:60px;
}

/* ===============================
   INFO PANEL
================================ */

.info-panel{
  background:rgba(255,255,255,.08);
  border-radius:26px;
  padding:42px;
  border:1px solid rgba(255,255,255,.15);
  backdrop-filter:blur(18px);
}

.info-panel h3{
  margin-bottom:18px;
}

.info-box{
  margin-top:22px;
}

.info-box h4{
  color:#38bdf8;
  margin-bottom:4px;
}

.info-box p{
  color:#cbd5f5;
  font-size:14px;
}

/* ===============================
   FORM CARD
================================ */

.form-card{
  background:rgba(255,255,255,.08);
  border-radius:26px;
  padding:42px;
  border:1px solid rgba(255,255,255,.15);
  backdrop-filter:blur(18px);
}

.form-group{
  margin-bottom:18px;
}

.form-group label{
  display:block;
  margin-bottom:6px;
  font-size:13px;
  color:#cbd5f5;
}

.form-group input,
.form-group textarea,
.form-group select{
  width:100%;
  padding:14px;
  border-radius:14px;
  border:1px solid rgba(255,255,255,.25);
  background:rgba(255,255,255,.12);
  color:white;
  outline:none;
  font-size:14px;
}

.form-group input:focus,
.form-group textarea:focus,
.form-group select:focus{
  border-color:#38bdf8;
  background:rgba(0,0,0,.35);
}

textarea{
  resize:none;
  min-height:120px;
}

/* ===============================
   BUTTON
================================ */

.submit-btn{
  width:100%;
  padding:16px;
  border-radius:999px;
  border:none;
  cursor:pointer;
  font-weight:800;
  background:linear-gradient(135deg,#22c55e,#38bdf8);
  color:black;
  transition:.3s;
}

.submit-btn:hover{
  transform:translateY(-3px);
  box-shadow:0 18px 40px rgba(56,189,248,.35);
}

/* ===============================
   FOOTER
================================ */

footer{
  background:rgba(2,6,23,.95);
  border-top:1px solid rgba(255,255,255,.15);
  padding:36px 0;
}

.footer-inner{
  display:flex;
  justify-content:space-between;
  flex-wrap:wrap;
  gap:14px;
}

.footer-inner a{
  margin-left:16px;
  color:#94a3b8;
}

.footer-inner a:hover{color:#38bdf8}

/* ===============================
   RESPONSIVE
================================ */

@media(max-width:900px){

  .hero h1{font-size:36px}

  .contact-grid{
    grid-template-columns:1fr;
  }

  nav{display:none}

}

</style>

</head>
<body>

<header>
  <div class="container header-inner">
    <div class="logo">🌍 AI Pollution</div>
    <nav>
      <a href="home.jsp">Home</a>
      <a href="features.jsp">AI Analyzer</a>
      <a href="about.jsp">About</a>
      <a href="contact.jsp">Contact</a>
      <a href="login.jsp" class="btn-login">Login</a>
    </nav>
  </div>
</header>

<!-- HERO -->
<section class="hero">
  <div class="container">
    <h1>Get in Touch With <span>Our Team</span></h1>
    <p>
      Have questions about pollution analytics, AI models or smart-city
      integration? Send us a message and we’ll respond as soon as possible.
    </p>
  </div>
</section>

<!-- CONTACT -->
<section class="contact-section">
  <div class="container contact-grid">

    <!-- INFO -->
    <div class="info-panel">
      <h3>Why Contact Us?</h3>
      <p>
        We collaborate with universities, research labs and municipalities
        to improve environmental intelligence platforms.
      </p>

      <div class="info-box">
        <h4>Email</h4>
        <p>support@aipollutionplatform.edu</p>
      </div>

      <div class="info-box">
        <h4>Phone</h4>
        <p>+91 90000 00000</p>
      </div>

      <div class="info-box">
        <h4>Office</h4>
        <p>Pune, Maharashtra, India</p>
      </div>

    </div>

    <!-- FORM -->
    <div class="form-card">

      <h3>Send Us a Message</h3>

      <form method="post" action="contactSubmit">

        <div class="form-group">
          <label>Full Name</label>
          <input type="text" name="name" required>
        </div>

        <div class="form-group">
          <label>Email Address</label>
          <input type="email" name="email" required>
        </div>

        <div class="form-group">
          <label>Topic</label>
          <select name="topic">
            <option>General Inquiry</option>
            <option>Research Collaboration</option>
            <option>City Integration</option>
            <option>Bug Report</option>
          </select>
        </div>

        <div class="form-group">
          <label>Message</label>
          <textarea name="message" required></textarea>
        </div>

        <button class="submit-btn">Send Message</button>

      </form>

    </div>

  </div>
</section>

<footer>
  <div class="container footer-inner">
    <p>© 2026 AI Pollution Monitoring Platform</p>
    <div>
      <a href="home.jsp">Home</a>
      <a href="about.jsp">About</a>
      <a href="#">Privacy</a>
    </div>
  </div>
</footer>

</body>
</html>
