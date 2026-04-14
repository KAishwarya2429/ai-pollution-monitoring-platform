<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Features | AI Pollution Monitoring Platform</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800&display=swap" rel="stylesheet">

<style>
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:Inter,sans-serif;
}

body{
  background:
    radial-gradient(circle at 20% 20%,rgba(56,189,248,0.15),transparent),
    radial-gradient(circle at 80% 10%,rgba(34,197,94,0.15),transparent),
    linear-gradient(135deg,#020617,#022c22);
  color:white;
}

/* ================= HEADER ================= */

.header{
  position:sticky;
  top:0;
  backdrop-filter:blur(16px);
  background:rgba(2,6,23,.85);
  border-bottom:1px solid rgba(255,255,255,.12);
  z-index:1000;
}

.container{
  width:90%;
  max-width:1280px;
  margin:auto;
}

.header-inner{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding:18px 0;
}

.logo{
  font-size:26px;
  font-weight:900;
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.nav a{
  margin-left:24px;
  text-decoration:none;
  color:#cbd5f5;
  font-weight:600;
}

.nav a:hover{color:#38bdf8}

/* ================= HERO ================= */

.hero{
  padding:110px 0 70px;
  text-align:center;
}

.hero h1{
  font-size:52px;
  font-weight:900;
}

.hero h1 span{
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.hero p{
  margin-top:18px;
  font-size:18px;
  color:#cbd5f5;
  max-width:720px;
  margin-inline:auto;
}

/* ================= FEATURES GRID ================= */

.features-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
  gap:28px;
  padding:80px 0;
}

.feature-card{
  background:rgba(255,255,255,.08);
  backdrop-filter:blur(18px);
  border-radius:22px;
  padding:30px;
  border:1px solid rgba(255,255,255,.15);
  transition:.4s;
}

.feature-card:hover{
  transform:translateY(-10px) scale(1.02);
  box-shadow:0 30px 80px rgba(56,189,248,.25);
}

.feature-icon{
  font-size:38px;
}

.feature-card h3{
  margin-top:16px;
  font-size:22px;
}

.feature-card p{
  margin-top:10px;
  color:#cbd5f5;
  font-size:15px;
}

/* ================= CTA ================= */

.cta{
  padding:90px 0;
  text-align:center;
}

.cta-box{
  background:linear-gradient(135deg,rgba(34,197,94,.25),rgba(56,189,248,.25));
  padding:60px 30px;
  border-radius:30px;
  backdrop-filter:blur(22px);
}

.cta-box h2{
  font-size:38px;
}

.cta-box p{
  margin-top:14px;
  color:#e5e7eb;
}

.btn-primary{
  display:inline-block;
  margin-top:26px;
  background:linear-gradient(135deg,#22c55e,#38bdf8);
  color:black;
  padding:15px 36px;
  border-radius:999px;
  font-weight:800;
  text-decoration:none;
}

/* ================= FOOTER ================= */

.footer{
  border-top:1px solid rgba(255,255,255,.15);
  background:rgba(2,6,23,.95);
  padding:26px 0;
}

.footer-inner{
  display:flex;
  justify-content:space-between;
  flex-wrap:wrap;
}

.footer a{
  color:#94a3b8;
  margin-left:18px;
  text-decoration:none;
}

.footer a:hover{color:#38bdf8}

/* ================= RESPONSIVE ================= */

@media(max-width:768px){
  .hero h1{font-size:36px}
  .footer-inner{flex-direction:column;gap:14px}
}
</style>

</head>
<body>

<!-- ================= HEADER ================= -->

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

<!-- ================= HERO ================= -->

<section class="hero container">
  <h1>Powerful <span>AI-Driven Features</span></h1>
  <p>
    Our platform uses artificial intelligence, satellite imagery, and IoT
    networks to monitor pollution, predict environmental risks,
    and empower governments and citizens with actionable insights.
  </p>
</section>

<!-- ================= FEATURES ================= -->

<section class="container features-grid">

  <div class="feature-card">
    <div class="feature-icon">🤖</div>
    <h3>AI Pollution Analyzer</h3>
    <p>
      Machine-learning models detect pollution patterns, hotspots,
      and abnormal emission levels in real time.
    </p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">📊</div>
    <h3>AQI Forecasting</h3>
    <p>
      Predict future air-quality levels using historical data
      and weather correlations.
    </p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">🛰️</div>
    <h3>Satellite Monitoring</h3>
    <p>
      Analyze satellite imagery to detect forest fires,
      smog layers, and industrial emissions.
    </p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">📡</div>
    <h3>IoT Sensor Network</h3>
    <p>
      Integrates real-time data streams from roadside sensors,
      factories, and monitoring stations.
    </p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">🧭</div>
    <h3>Live City Dashboard</h3>
    <p>
      Visualize pollution heatmaps, trends,
      and city-level comparisons instantly.
    </p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">📝</div>
    <h3>Citizen Reporting</h3>
    <p>
      Allow residents to submit pollution complaints
      with photos and GPS tagging.
    </p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">🏛️</div>
    <h3>Government Insights</h3>
    <p>
      Provide authorities with compliance reports,
      alerts, and regulatory dashboards.
    </p>
  </div>

  <div class="feature-card">
    <div class="feature-icon">🌱</div>
    <h3>Sustainability Tracker</h3>
    <p>
      Measure environmental impact of green initiatives
      and climate action plans.
    </p>
  </div>

</section>

<!-- ================= CTA ================= -->

<section class="cta">
  <div class="container cta-box">
    <h2>Build Smarter, Cleaner Cities</h2>
    <p>
      Join governments, researchers, and organizations
      using EarthAI to protect the environment.
    </p>

    <a href="contact.jsp" class="btn-primary">Request Demo</a>
  </div>
</section>

<!-- ================= FOOTER ================= -->

<footer class="footer">
  <div class="container footer-inner">
    <p>© 2026 EarthAI Pollution Platform</p>

    <div>
      <a href="#">Privacy</a>
      <a href="#">Terms</a>
      <a href="#">Security</a>
    </div>
  </div>
</footer>

</body>
</html>
