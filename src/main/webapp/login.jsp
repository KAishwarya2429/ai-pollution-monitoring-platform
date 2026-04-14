<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Sign In | AI Pollution Platform</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="auth-wrapper">
  <div class="auth-card">

    <div class="brand">AI<span>Pollution</span></div>
    <div class="subtitle">Access your pollution insights dashboard</div>

    <form action="user" method="post">
      <input type="hidden" name="action" value="login"/>

      <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" required>
      </div>

      <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" required>
      </div>

      <button class="btn-main">Sign In</button>
    </form>

    <p class="error-msg">${error}</p>

    <div class="auth-footer">
      New here? <a href="register.jsp">Create account</a>
    </div>

  </div>
</div>

</body>
</html>
