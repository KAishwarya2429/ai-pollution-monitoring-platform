<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Create Account | AI Pollution Platform</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="auth-wrapper">
  <div class="auth-card">

    <div class="brand">AI<span>Pollution</span></div>
    <div class="subtitle">Join the climate intelligence platform</div>

    <form action="user" method="post">
      <input type="hidden" name="action" value="register"/>

      <div class="form-group">
        <label>Full Name</label>
        <input type="text" name="fullname" required>
      </div>

      <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" required>
      </div>

      <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" required>
      </div>

      <div class="form-group">
        <label>Phone</label>
        <input type="text" name="phone">
      </div>

      <button class="btn-main">Create Account</button>
    </form>

    <p class="error-msg">${error}</p>

    <div class="auth-footer">
      Already registered? <a href="login.jsp">Sign in</a>
    </div>

  </div>
</div>

</body>
</html>
