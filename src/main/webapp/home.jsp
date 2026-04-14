<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>AI Pollution Monitoring Platform</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

/* =====================================================
   GOOGLE FONT
===================================================== */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;800;900&display=swap');

/* =====================================================
   RESET + BASE
===================================================== */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:"Inter",sans-serif;
}

body{
  background:
    radial-gradient(circle at 20% 10%,rgba(56,189,248,.18),transparent),
    radial-gradient(circle at 80% 20%,rgba(34,197,94,.18),transparent),
    linear-gradient(135deg,#020617,#022c22);
  color:white;
  overflow-x:hidden;
}

a{ text-decoration:none; color:inherit }

.container{
  width:90%;
  max-width:1300px;
  margin:auto;
}

/* =====================================================
   HEADER
===================================================== */

header{
  position:sticky;
  top:0;
  z-index:999;
  backdrop-filter:blur(18px);
  background:rgba(2,6,23,.8);
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

/* =====================================================
   HERO
===================================================== */

.hero{
  padding:150px 0 120px;
  position:relative;
}

.hero::before{
  content:"";
  position:absolute;
  width:480px;
  height:480px;
  background:radial-gradient(circle,#22c55e66,transparent);
  top:-150px;
  left:-160px;
  filter:blur(130px);
}

.hero-content{
  max-width:760px;
}

.hero-tag{
  display:inline-block;
  background:rgba(255,255,255,.12);
  padding:6px 16px;
  border-radius:999px;
  font-size:13px;
  margin-bottom:16px;
}

.hero h1{
  font-size:56px;
  font-weight:900;
  line-height:1.05;
}

.hero h1 span{
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.hero p{
  margin-top:18px;
  color:#cbd5f5;
  font-size:18px;
}

.hero-actions{
  margin-top:36px;
}

.hero-actions a{
  display:inline-block;
  margin-right:14px;
  padding:15px 36px;
  border-radius:999px;
  font-weight:800;
  transition:.3s;
}

.hero-actions a:hover{
  transform:translateY(-4px);
  box-shadow:0 15px 45px rgba(56,189,248,.4);
}

.btn-primary{
  background:linear-gradient(135deg,#22c55e,#38bdf8);
  color:black;
}

.btn-outline{
  border:1px solid rgba(255,255,255,.45);
}

/* =====================================================
   AI ANALYZER
===================================================== */

.ai-section{
  padding:120px 0;
}

.ai-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(320px,1fr));
  gap:70px;
}

.ai-text h2{
  font-size:40px;
}

.ai-text p{
  margin-top:12px;
  color:#cbd5f5;
}

.ai-list{
  margin:22px 0;
  list-style:none;
}

.ai-list li{
  margin-bottom:10px;
  font-weight:600;
}

.ai-cards{
  display:grid;
  gap:22px;
}

.glass{
  background:rgba(255,255,255,.08);
  border:1px solid rgba(255,255,255,.15);
  backdrop-filter:blur(18px);
  border-radius:22px;
  padding:28px;
  transition:.35s;
}

.glass:hover{
  transform:translateY(-10px);
  box-shadow:0 25px 70px rgba(56,189,248,.3);
}

/* =====================================================
   AQI
===================================================== */

.aqi{
  padding:120px 0;
  background:linear-gradient(135deg,#020617,#022c22);
  text-align:center;
}

.aqi-box{
  margin-top:26px;
  display:flex;
  justify-content:center;
  gap:14px;
  flex-wrap:wrap;
}

.aqi-box input{
  padding:14px 18px;
  border-radius:14px;
  border:1px solid rgba(255,255,255,.25);
  background:rgba(255,255,255,.1);
  color:white;
}

.aqi-box button{
  padding:14px 22px;
  border-radius:14px;
  border:none;
  font-weight:800;
  background:linear-gradient(135deg,#22c55e,#38bdf8);
}

#aResult{
  margin-top:26px;
  display:inline-block;
  padding:16px 26px;
  border-radius:14px;
  background:rgba(255,255,255,.1);
  font-weight:700;
}

/* =====================================================
   FEATURES
===================================================== */

.features{
  padding:120px 0;
}

.feature-grid{
  margin-top:50px;
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
  gap:28px;
}

/* =====================================================
   STATS
===================================================== */

.stats{
  background:linear-gradient(135deg,#020617,#022c22);
  padding:100px 0;
}

.stats-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
  gap:30px;
}

.stats h3{
  font-size:42px;
  background:linear-gradient(90deg,#22c55e,#38bdf8);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

/* =====================================================
   FOOTER
===================================================== */

footer{
  background:rgba(2,6,23,.92);
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

.footer-inner a:hover{ color:#38bdf8 }

/* =====================================================
   RESPONSIVE
===================================================== */

@media(max-width:900px){
  .hero h1{ font-size:38px }
  nav{ display:none }
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
  <div class="container hero-content">
    <span class="hero-tag">AI + Smart Cities</span>
    <h1>Predict & Prevent <span>Environmental Pollution</span></h1>
    <p>
      A real-time AI platform that monitors pollution levels,
      forecasts risk zones and empowers citizens through data.
    </p>
    <div class="hero-actions">
      <a href="dashboard.jsp" class="btn-primary">Live Dashboard</a>
      <a href="report.jsp" class="btn-outline">Report Incident</a>
    </div>
  </div>
</section>

<!-- AI -->
<section class="ai-section">
  <div class="container ai-grid">

    <div class="ai-text">
      <h2>AI Pollution Analyzer</h2>
      <p>
        Machine-learning models combine sensor feeds,
        meteorology and citizen reports to forecast pollution surges.
      </p>

      <ul class="ai-list">
        <li>✔ 48-hour AQI prediction</li>
        <li>✔ Health alerts</li>
        <li>✔ Industrial hotspot detection</li>
        <li>✔ Smart-city dashboards</li>
      </ul>
    </div>

    <div class="ai-cards">
      <div class="glass">
        <h4>Prediction Accuracy</h4>
        <h2>92%</h2>
      </div>
      <div class="glass">
        <h4>Live Data Streams</h4>
        <h2>Satellite + IoT</h2>
      </div>
    </div>

  </div>
</section>

<!-- AQI -->
<section class="aqi">
  <div class="container">
    <h2>Check City Pollution Level</h2>
    <div class="aqi-box">
      <input id="city" placeholder="Enter city (e.g. Pune,IN)">
      <button onclick="fetchAQI()">Check AQI</button>
    </div>
    <div id="aResult"></div>
  </div>
</section>

<!-- FEATURES -->
<section class="features">
  <div class="container">
    <h2>Platform Capabilities</h2>
    <div class="feature-grid">

      <div class="glass">
        <h3>📊 Monitoring</h3>
        <p>Live sensors & satellites.</p>
      </div>

      <div class="glass">
        <h3>🤖 Forecasting</h3>
        <p>Predict pollution spikes.</p>
      </div>

      <div class="glass">
        <h3>📝 Reporting</h3>
        <p>Citizen uploads.</p>
      </div>

      <div class="glass">
        <h3>🗺 Heatmaps</h3>
        <p>GIS risk visualization.</p>
      </div>

    </div>
  </div>
</section>

<!-- STATS -->
<section class="stats">
  <div class="container stats-grid">
    <div class="glass">
      <h3 id="reports">0</h3>
      <p>Reports</p>
    </div>
    <div class="glass">
      <h3 id="cities">0</h3>
      <p>Cities</p>
    </div>
    <div class="glass">
      <h3 id="predictions">0</h3>
      <p>Predictions</p>
    </div>
  </div>
</section>

<footer>
  <div class="container footer-inner">
    <p>© 2026 AI Pollution Monitoring Platform</p>
    <div>
      <a href="about.jsp">About</a>
      <a href="contact.jsp">Contact</a>
      <a href="#">Privacy</a>
    </div>
  </div>
</footer>

<script>

function fetchAQI(){
  const city=document.getElementById("city").value.trim();
  if(!city){ alert("Enter city name"); return; }

  fetch(`/aipollutionapp/api/aqi?city=${encodeURIComponent(city)}`)
    .then(r=>r.json())
    .then(d=>{
      const el=document.getElementById("aResult");
      if(d.status==="success"){
        el.innerHTML=`AQI in <b>${d.city}</b> :
        <span style="color:${colorAQI(d.aqi)}">${d.aqi}</span>`;
      }else{
    	  el.innerHTML = `
    		  <div style="text-align:left; max-width:500px; margin:auto;">

    		    <h2>📍 ${name}</h2>

    		    <h1 style="color:${info.color}; font-size:42px;">
    		      ${aqi}
    		    </h1>

    		    <p><b>${info.level}</b> Air Quality</p>

    		    <hr style="margin:10px 0; opacity:0.2;">

    		    <p><b>🌫 Primary Pollutants:</b> PM2.5, PM10</p>

    		    <p><b>🌡 Temperature:</b> 30°C – 33°C</p>

    		    <hr style="margin:10px 0; opacity:0.2;">

    		    <h3>🏙️ Area-wise AQI</h3>
    		    <ul style="padding-left:18px;">
    		      <li>Shivajinagar: 65 AQI</li>
    		      <li>Kothrud: 95 AQI</li>
    		      <li>Sus: 86 AQI</li>
    		    </ul>

    		    <hr style="margin:10px 0; opacity:0.2;">

    		    <p><b>💡 Health Advice:</b></p>
    		    <p>${info.msg}</p>

    		    <p style="margin-top:6px;">
    		      ${getAdvice(aqi)}
    		    </p>

    		  </div>
    		  `;
      }
    });
}

function colorAQI(a){
  if(a<=50) return "#22c55e";
  if(a<=100) return "#facc15";
  if(a<=200) return "#fb923c";
  return "#ef4444";
}

window.onload=()=>{
  animate("reports",1240);
  animate("cities",86);
  animate("predictions",4120);
};

function animate(id,val){
  let i=0;
  const el=document.getElementById(id);
  const step=Math.ceil(val/60);
  const t=setInterval(()=>{
    i+=step;
    if(i>=val){i=val;clearInterval(t);}
    el.innerText=i;
  },30);
}

</script>
<script type="text/javascript">
async function fetchAQI(){
	  const city = document.getElementById("city").value.trim();
	  const el = document.getElementById("aResult");

	  if(!city){
	    el.innerHTML = "⚠️ Enter city (Pune,IN)";
	    return;
	  }

	  el.innerHTML = "⏳ Fetching AQI...";

	  const API_KEY = "d7168bde689cff03520cc7ac961ead45";

	  try{
	    // STEP 1: Get coordinates
	    const geoRes = await fetch(
	      `https://api.openweathermap.org/geo/1.0/direct?q=${city}&limit=1&appid=${API_KEY}`
	    );

	    const geoData = await geoRes.json();

	    if(!geoData || geoData.length === 0){
	      el.innerHTML = "❌ City not found (try Pune,IN)";
	      return;
	    }

	    const {lat, lon, name} = geoData[0];

	    // STEP 2: Get AQI
	    const airRes = await fetch(
	      `https://api.openweathermap.org/data/2.5/air_pollution?lat=${lat}&lon=${lon}&appid=${API_KEY}`
	    );

	    const airData = await airRes.json();

	    const aqi = airData.list[0].main.aqi * 50;

	    el.innerHTML = `
	      <h2>📍 ${name}</h2>
	      <h1 style="font-size:42px;">${aqi}</h1>
	      <p style="color:lightgreen;">✅ Real-time AQI loaded</p>
	    `;

	  }catch(err){
	    console.log(err);

	    el.innerHTML = `
	      <p style="color:red;">🚨 Failed to fetch</p>
	      <p>Try again after 10 minutes or use hotspot</p>
	    `;
	  }
	}
</script>
<!--
**“Good morning sir/madam,**

Our project is an 
**AI-powered Pollution Monitoring and Awareness Platform** designed to provide real-time air quality insights to users.

The core feature of our system is the **AQI monitoring module**, where users can enter a city name and instantly get the current Air Quality Index.
We implemented this using a **Java backend with Jakarta Servlet**, which securely fetches real-time data from the OpenWeather API.

One important challenge we solved was **CORS restrictions**, so instead of calling the API directly from the browser, we routed requests through the backend. This makes the system more reliable and closer to real-world industry architecture.

Beyond just showing AQI values, our system also **categorizes air quality levels** like Good, Moderate, and Poor, and provides **health-based recommendations** to users, making the platform more actionable and user-friendly.

In future, we can extend this system using **AI models to predict AQI for the next 48 hours**, along with heatmaps and smart city integration.

**Thank you.”**
  
-->
</body>
</html>