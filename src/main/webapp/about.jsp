<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>About | AI Pollution Monitoring Platform</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

/* ===============================
   GOOGLE FONT
================================ */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800;900&display=swap');

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
    radial-gradient(circle at 20% 10%,rgba(56,189,248,.15),transparent),
    radial-gradient(circle at 80% 20%,rgba(34,197,94,.18),transparent),
    linear-gradient(135deg,#020617,#022c22);
  color:white;
}

a{ text-decoration:none;color:inherit }

.container{
  width:90%;
  max-width:1300px;
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
  border-bottom:1px solid rgba(255,255,255,.15);
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

nav a:hover{ color:#38bdf8 }

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
  padding:130px 0 110px;
}

.hero h1{
  font-size:56px;
  font-weight:900;
  max-width:820px;
}

.hero h1 span{
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.hero p{
  margin-top:18px;
  color:#cbd5f5;
  max-width:720px;
  font-size:18px;
}

/* ===============================
   MISSION / VISION
================================ */

.mission{
  padding:120px 0;
}

.mission-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(320px,1fr));
  gap:50px;
}

.glass{
  background:rgba(255,255,255,.08);
  border:1px solid rgba(255,255,255,.15);
  backdrop-filter:blur(18px);
  border-radius:24px;
  padding:36px;
  transition:.3s;
}

.glass:hover{
  transform:translateY(-10px);
  box-shadow:0 25px 60px rgba(56,189,248,.25);
}

/* ===============================
   STORY
================================ */

.story{
  background:linear-gradient(135deg,#020617,#022c22);
  padding:120px 0;
}

.story-grid{
  display:grid;
  grid-template-columns:2fr 1fr;
  gap:60px;
}

/* ===============================
   IMPACT
================================ */

.impact{
  padding:120px 0;
}

.impact-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
  gap:30px;
}

.impact h3{
  font-size:42px;
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

/* ===============================
   TIMELINE
================================ */

.timeline{
  background:linear-gradient(135deg,#020617,#022c22);
  padding:120px 0;
}

.timeline-line{
  position:relative;
  margin-top:60px;
  padding-left:30px;
}

.timeline-line:before{
  content:"";
  position:absolute;
  left:6px;
  top:0;
  width:3px;
  height:100%;
  background:linear-gradient(#22c55e,#38bdf8);
}

.timeline-item{
  margin-bottom:40px;
}

.timeline-dot{
  width:16px;
  height:16px;
  background:#38bdf8;
  border-radius:50%;
  position:absolute;
  left:-1px;
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
  gap:16px;
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
  .hero h1{font-size:38px}
  .story-grid{grid-template-columns:1fr}
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
    <h1>Building Smarter Cities With <span>AI-Driven Environmental Intelligence</span></h1>
    <p>
      The AI Pollution Monitoring Platform is an advanced academic innovation project
      designed to combine artificial intelligence, IoT data and citizen participation
      to reduce environmental risk and protect public health.
    </p>
  </div>
</section>

<!-- MISSION -->
<section class="mission">
  <div class="container mission-grid">

    <div class="glass">
      <h2>🌱 Our Mission</h2>
      <p>
        To empower governments, industries and communities with real-time pollution insights,
        predictive analytics and transparent environmental data systems.
      </p>
    </div>

    <div class="glass">
      <h2>🚀 Our Vision</h2>
      <p>
        A future where AI helps every city forecast pollution,
        prevent environmental disasters and enable healthier living for all citizens.
      </p>
    </div>

  </div>
</section>

<!-- STORY -->
<section class="story">
  <div class="container story-grid">

    <div>
      <h2>Our Story</h2>
      <p>
        This platform began as a college research initiative focused on using machine-learning
        to analyze AQI patterns across Indian cities. Today it simulates a real-world
        smart-city monitoring system combining satellite data, IoT sensors and citizen reports.
      </p>
    </div>

    <div class="glass">
      <h3>Technology Stack</h3>
      <p>Java • JSP • Servlets • Hibernate</p>
      <p>REST APIs • MySQL • AI Models</p>
      <p>GIS Mapping • Forecast Engines</p>
    </div>

  </div>
</section>

<!-- IMPACT -->
<section class="impact">
  <div class="container impact-grid">

    <div class="glass">
      <h3>120+</h3>
      <p>Cities Simulated</p>
    </div>

    <div class="glass">
      <h3>30K+</h3>
      <p>Pollution Records</p>
    </div>

    <div class="glass">
      <h3>95%</h3>
      <p>Prediction Accuracy</p>
    </div>

    <div class="glass">
      <h3>24×7</h3>
      <p>Monitoring</p>
    </div>

  </div>
</section>

<!-- TIMELINE -->
<section class="timeline">
  <div class="container">

    <h2>Platform Evolution</h2>

    <div class="timeline-line">

      <div class="timeline-item">
        <span class="timeline-dot"></span>
        <h4>Phase 1 — Research</h4>
        <p>Data collection and AQI modeling experiments.</p>
      </div>

      <div class="timeline-item">
        <span class="timeline-dot"></span>
        <h4>Phase 2 — Prototype</h4>
        <p>Dashboard UI and reporting system built.</p>
      </div>

      <div class="timeline-item">
        <span class="timeline-dot"></span>
        <h4>Phase 3 — AI Engine</h4>
        <p>Prediction models and alert automation.</p>
      </div>

      <div class="timeline-item">
        <span class="timeline-dot"></span>
        <h4>Phase 4 — Smart City Simulation</h4>
        <p>Government-style monitoring console and APIs.</p>
      </div>

    </div>

  </div>
</section>

<footer>
  <div class="container footer-inner">
    <p>© 2026 AI Pollution Monitoring Platform</p>
    <div>
      <a href="home.jsp">Home</a>
      <a href="contact.jsp">Contact</a>
      <a href="#">Privacy</a>
    </div>
  </div>
</footer>

</body>
</html>
