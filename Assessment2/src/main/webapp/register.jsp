<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register - BlogCreation</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

:root{
--primary-color:#6366f1;
--secondary-color:#4f46e5;
--bg-color:#0f172a;
--card-bg:rgba(30,41,59,0.85);
--text-color:#e2e8f0;
--input-bg:#1e293b;
--border-color:#334155;
}

body{
font-family:'Inter',sans-serif;
background:linear-gradient(135deg,#0f172a,#020617);
display:flex;
align-items:center;
justify-content:center;
min-height:100vh;
margin:0;
padding:1rem;
color:var(--text-color);
}

.register-card{
background:var(--card-bg);
backdrop-filter:blur(12px);
border:1px solid var(--border-color);
border-radius:20px;
box-shadow:0 10px 40px rgba(0,0,0,0.6);
padding:3rem;
width:100%;
max-width:450px;
transition:transform .3s ease;
}

.register-card:hover{
transform:translateY(-5px);
}

.btn-primary{
background-color:var(--primary-color);
border-color:var(--primary-color);
border-radius:10px;
font-weight:500;
transition:all .3s ease;
}

.btn-primary:hover{
background-color:var(--secondary-color);
border-color:var(--secondary-color);
transform:translateY(-2px);
box-shadow:0 6px 15px rgba(99,102,241,0.5);
}

.form-control{
border-radius:10px;
padding:.6rem 1rem;
background-color:var(--input-bg);
border:1px solid var(--border-color);
color:var(--text-color);
}

.form-control::placeholder{
color:#94a3b8;
}

.form-control:focus{
border-color:var(--primary-color);
box-shadow:0 0 0 .25rem rgba(99,102,241,.25);
background-color:#020617;
color:white;
}

.input-group-text{
border-radius:10px;
background-color:var(--input-bg);
border:1px solid var(--border-color);
color:#94a3b8;
}

.brand-logo{
color:var(--primary-color);
font-weight:800;
font-size:2rem;
text-align:center;
margin-bottom:1.5rem;
letter-spacing:-0.5px;
}

label{
color:#94a3b8;
}

.text-muted{
color:#94a3b8!important;
}

</style>

</head>

<body>

<div class="register-card">

<div class="brand-logo">
BlogCreation
</div>

<h4 class="text-center mb-4 fw-bold">Create an Account</h4>

<form action="RegisterController" method="post">

<div class="mb-3">
<label class="form-label fw-medium small">Full Name</label>
<input type="text" class="form-control" name="name" placeholder="John Doe" required>
</div>

<div class="mb-3">
<label class="form-label fw-medium small">Email Address</label>
<input type="email" class="form-control" name="email" placeholder="name@example.com" required>
</div>

<div class="mb-3">
<label class="form-label fw-medium small">Password</label>
<input type="password" class="form-control" name="password" placeholder="••••••••" required>
</div>

<div class="d-grid mb-3">
<button type="submit" name="action" value="register" class="btn btn-primary py-2 fs-6">
Register Now
</button>
</div>

<div class="text-center mt-3">
<span class="text-muted small">Already have an account?</span>

<a href="login.jsp" class="text-decoration-none fw-semibold small" style="color:var(--primary-color);">
Login here
</a>

</div>

</form>

</div>

</body>
</html>