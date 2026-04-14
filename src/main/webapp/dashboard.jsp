<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Dashboard | AI Pollution Platform</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="dashboard-wrapper">

  <!-- NAV -->
  <div class="dashboard-nav">
    <div class="dashboard-logo" >AI<span>Pollution</span></div>
    <div class="dashboard-user">
      Welcome, ${sessionScope.loggedUser.fullname}
    </div>
  </div>

  <!-- CONTENT -->
  <div class="dashboard-content">

    <!-- KPI CARDS -->
    <div class="kpi-grid">

      <div class="kpi-card">
        <div class="kpi-value">156</div>
        <div class="kpi-label">Current AQI</div>
      </div>

      <div class="kpi-card">
        <div class="kpi-value">PM2.5: 82</div>
        <div class="kpi-label">Particulate Matter</div>
      </div>

      <div class="kpi-card">
        <div class="kpi-value">NO₂: 41</div>
        <div class="kpi-label">Nitrogen Dioxide</div>
      </div>

      <div class="kpi-card">
        <div class="kpi-value">Moderate</div>
        <div class="kpi-label">Health Status</div>
      </div>

    </div>

    <!-- CHARTS -->
    <div class="chart-grid">

      <div class="chart-card">
        <div class="chart-title">Pollution Trend (Last 7 Days)</div>
        <canvas id="aqiChart" height="140"></canvas>
      </div>

      <div>

        <div class="chart-card">
          <div class="chart-title">AI Prediction</div>
          <p>Expected AQI Tomorrow:</p>
          <h2>172</h2>
        </div>

        <div class="alert-box">
          ⚠ High pollution expected in next 48 hours.  
          Citizens advised to avoid outdoor activity.
        </div>

      </div>

    </div>

  </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
const ctx = document.getElementById("aqiChart");

new Chart(ctx, {
  type: "line",
  data: {
    labels: ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"],
    datasets: [{
      label: "AQI",
      data: [120,135,142,150,160,148,156],
      borderColor: "#38bdf8",
      tension: 0.4
    }]
  }
});
</script>

</body>
</html>
