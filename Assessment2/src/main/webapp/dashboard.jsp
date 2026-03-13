<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard - SimpleBlog</title>
        <!-- Google Fonts: Inter -->
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"
            rel="stylesheet">
        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <style>
:root {
    --primary-color:#6366f1;
    --secondary-color:#818cf8;
    --bg-color:#0f172a;
    --card-bg:#1e293b;
    --text-color:#e2e8f0;
    --muted-text:#94a3b8;
    --border-color:#334155;
}

body{
    font-family:'Inter',sans-serif;
    background-color:var(--bg-color);
    color:var(--text-color);
    display:flex;
    flex-direction:column;
    min-height:100vh;
}

main{
    flex:1;
}

/* Blog Card */

.blog-card{
    background:var(--card-bg);
    border:1px solid var(--border-color);
    border-radius:16px;
    box-shadow:0 8px 20px rgba(0,0,0,0.4);
    transition:all .3s ease;
    height:100%;
    display:flex;
    flex-direction:column;
}

.blog-card:hover{
    transform:translateY(-6px);
}

.blog-card-body{
    padding:1.5rem;
    flex-grow:1;
    display:flex;
    flex-direction:column;
}

.blog-card-title{
    font-size:1.25rem;
    font-weight:700;
    color:white;
    margin-bottom:.75rem;
    text-decoration:none;
}

.blog-card-title:hover{
    color:var(--primary-color);
}

.blog-card-text{
    color:var(--muted-text);
    font-size:.95rem;
    line-height:1.6;
    margin-bottom:1.25rem;
    flex-grow:1;
}

/* Tags */

.tag-badge{
    background-color:rgba(99,102,241,0.2);
    color:#a5b4fc;
    font-weight:600;
    font-size:.75rem;
    padding:.4em .8em;
    border-radius:50rem;
    text-decoration:none;
}

.tag-badge:hover{
    background:var(--primary-color);
    color:white;
}

/* Meta */

.blog-meta{
    display:flex;
    align-items:center;
    justify-content:space-between;
    border-top:1px solid var(--border-color);
    padding-top:1rem;
}

.author-info{
    display:flex;
    align-items:center;
    gap:.5rem;
    color:#cbd5f5;
    font-size:.85rem;
}

.author-avatar{
    width:32px;
    height:32px;
    border-radius:50%;
    background:#334155;
    display:flex;
    align-items:center;
    justify-content:center;
    color:#e2e8f0;
    font-weight:bold;
}

/* Buttons */

.read-more-btn{
    color:#a5b4fc;
    font-weight:600;
    font-size:.9rem;
    text-decoration:none;
    display:flex;
    align-items:center;
    gap:.25rem;
}

.read-more-btn:hover{
    color:white;
}

/* Sidebar */

.sidebar-widget{
    background:var(--card-bg);
    border-radius:16px;
    padding:1.5rem;
    border:1px solid var(--border-color);
    margin-bottom:1.5rem;
}

.widget-title{
    font-size:1.1rem;
    font-weight:700;
    color:white;
    margin-bottom:1rem;
}

/* Forms (IMPORTANT – form functionality unchanged) */

.form-control{
    border-radius:10px;
    padding:.6rem 1rem;
    background:#020617;
    border:1px solid var(--border-color);
    color:white;
}

.form-control:focus{
    border-color:var(--primary-color);
    box-shadow:0 0 0 .25rem rgba(99,102,241,.25);
    background:#020617;
    color:white;
}

/* Buttons */

.btn-primary{
    background:var(--primary-color);
    border-color:var(--primary-color);
    border-radius:10px;
}

.btn-primary:hover{
    background:var(--secondary-color);
}

/* Recent Posts */

.recent-post-item{
    display:flex;
    gap:1rem;
    margin-bottom:1rem;
    padding-bottom:1rem;
    border-bottom:1px solid var(--border-color);
}

.recent-title{
    font-size:.95rem;
    font-weight:600;
    color:white;
    text-decoration:none;
}

.recent-title:hover{
    color:var(--primary-color);
}

.recent-date{
    font-size:.75rem;
    color:#94a3b8;
}

/* Tag Cloud */

.tag-cloud a{
    display:inline-block;
    background:#334155;
    color:#e2e8f0;
    padding:.4rem .8rem;
    border-radius:8px;
    font-size:.8rem;
    text-decoration:none;
    margin:0 .3rem .5rem 0;
}

.tag-cloud a:hover{
    background:var(--primary-color);
    color:white;
}

</style>
    </head>

    <body>

        <%@ include file="navbar.jsp" %>

			<%@ include file="container.jsp" %>


    </body>

    </html>