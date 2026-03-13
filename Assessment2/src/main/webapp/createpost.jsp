<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Integer uid = (Integer) session.getAttribute("uid");

if(uid == null)
{
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Create Post - SimpleBlog</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>
:root{
--primary-color:#6366f1;
--secondary-color:#4f46e5;

/* Light Theme */
--bg-color:#f8fafc;
--card-bg:#ffffff;
--text-color:#0f172a;
--input-bg:#f8fafc;
--border-color:#e2e8f0;
}

/* Dark Theme */

body.dark{
--bg-color:#020617;
--card-bg:#0f172a;
--text-color:#e2e8f0;
--input-bg:#1e293b;
--border-color:#334155;
}

body{
font-family:'Inter',sans-serif;
background-color:var(--bg-color);
color:var(--text-color);
display:flex;
flex-direction:column;
min-height:100vh;
transition:0.3s;
}

main{
flex:1;
}

.form-card{
background:var(--card-bg);
border-radius:16px;
box-shadow:0 4px 20px rgba(0,0,0,0.15);
padding:2.5rem;
border:1px solid var(--border-color);
}

.form-control{
border-radius:10px;
padding:0.75rem 1rem;
background-color:var(--input-bg);
border:1px solid var(--border-color);
color:var(--text-color);
}

.form-control::placeholder{
color:#94a3b8;
}

.form-control:focus{
border-color:var(--primary-color);
box-shadow:0 0 0 0.25rem rgba(99,102,241,0.25);
background-color:var(--input-bg);
}

.form-control-lg{
font-size:1.25rem;
font-weight:600;
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
box-shadow:0 4px 12px rgba(99,102,241,0.4);
}

.btn-light{
border-radius:10px;
font-weight:500;
background-color:#e2e8f0;
border:none;
}

body.dark .btn-light{
background:#1e293b;
color:#e2e8f0;
}

.input-group-text{
background-color:var(--input-bg);
border:1px solid var(--border-color);
color:#94a3b8;
}
</style>

</head>

<body class="dark">

<%@ include file="navbar.jsp" %>

<main class="py-5">

<div class="container">

<div class="row justify-content-center">

<div class="col-lg-9">

<div class="d-flex align-items-center mb-4">

<a href="dashboard.jsp" class="text-muted text-decoration-none me-3 fs-5">
<i class="fa-solid fa-arrow-left"></i>
</a>

<h2 class="fw-bold m-0" style="color:#0f172a;letter-spacing:-0.5px;">
Write a New Post
</h2>

</div>

<div class="form-card">

<form action="CreatePostController" method="post">

<div class="mb-4">

<label class="form-label text-muted fw-medium small text-uppercase">
Post Title
</label>

<input type="text"
class="form-control form-control-lg"
name="title"
placeholder="Give your post a catchy title..."
required>

</div>

<div class="mb-4">

<label class="form-label text-muted fw-medium small text-uppercase">
Tags (Comma Separated)
</label>

<div class="input-group">

<span class="input-group-text bg-white"
style="border-radius:10px 0 0 10px;border-color:#e2e8f0;">

<i class="fa-solid fa-tags text-muted"></i>

</span>

<input type="text"
class="form-control"
style="border-radius:0 10px 10px 0;"
name="tags"
placeholder="e.g. Technology, Design, Tutorial">

</div>

</div>

<div class="mb-5">

<label class="form-label text-muted fw-medium small text-uppercase">
Post Content
</label>

<textarea
class="form-control"
name="context"
rows="15"
placeholder="Write your amazing content here..."
required></textarea>

</div>

<div class="d-flex justify-content-between align-items-center">

<a href="dashboard.jsp" class="btn btn-light px-4 py-2">
Cancel
</a>

<button type="submit"
name="action"
value="createpost"
class="btn btn-primary px-5 py-2">

Publish Post
<i class="fa-regular fa-paper-plane ms-2"></i>

</button>

</div>

</form>

</div>

</div>

</div>

</div>

</main>


</body>
</html>