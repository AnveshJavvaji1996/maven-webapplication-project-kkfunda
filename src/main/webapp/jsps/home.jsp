```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Education Portal Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
    body{
        background: linear-gradient(135deg,#eef5ff,#d9ecff);
        min-height:100vh;
        font-family:'Segoe UI',sans-serif;
    }

    .hero{
        background: linear-gradient(90deg,#4f46e5,#0ea5e9);
        color:white;
        padding:40px;
        text-align:center;
        box-shadow:0 4px 15px rgba(0,0,0,0.15);
    }

    .hero h1{
        font-weight:700;
    }

    .info-card{
        background:white;
        border:none;
        border-radius:20px;
        padding:25px;
        box-shadow:0 8px 20px rgba(0,0,0,0.08);
        transition:all 0.3s ease;
        height:100%;
    }

    .info-card:hover{
        transform:translateY(-8px);
        box-shadow:0 12px 25px rgba(0,0,0,0.15);
    }

    .icon{
        font-size:40px;
        margin-bottom:10px;
    }

    .footer{
        text-align:center;
        padding:20px;
        color:#666;
        margin-top:30px;
    }
</style>
</head>
<body>

<!-- Header -->
<div class="hero">
    <h1>📚 Smart Learning Portal</h1>
    <p class="lead">
        Explore Technology • Learn Continuously • Build Skills
    </p>
</div>

<div class="container mt-5">

    <div class="row g-4">

        <!-- Server Information -->
        <div class="col-md-6">
            <div class="info-card">
                <div class="icon">🖥️</div>
                <h3>Server Information</h3>
                <hr>

                <%
                    InetAddress server = InetAddress.getLocalHost();
                    String serverIP = server.getHostAddress();
                %>

                <p>
                    <strong>Host Name:</strong>
                    <%= server.getHostName() %>
                </p>

                <p>
                    <strong>IP Address:</strong>
                    <%= serverIP %>
                </p>
            </div>
        </div>

        <!-- Visitor Information -->
        <div class="col-md-6">
            <div class="info-card">
                <div class="icon">🌐</div>
                <h3>Visitor Information</h3>
                <hr>

                <p>
                    <strong>Client IP:</strong>
                    <%= request.getRemoteAddr() %>
                </p>

                <p>
                    <strong>Client Host:</strong>
                    <%= request.getRemoteHost() %>
                </p>
            </div>
        </div>

    </div>

    <!-- Educational Section -->
    <div class="row mt-4">
        <div class="col-12">
            <div class="info-card text-center">
                <h3>🎓 Welcome to the Learning Dashboard</h3>
                <p class="mt-3">
                    A modern portal designed to demonstrate server-side and
                    client-side information in a simple and interactive way.
                </p>

                <div class="mt-3">
                    <span class="badge bg-primary p-2">Java</span>
                    <span class="badge bg-success p-2">JSP</span>
                    <span class="badge bg-info p-2">Bootstrap</span>
                    <span class="badge bg-warning text-dark p-2">Web Technology</span>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="footer">
    © 2024 Learning Portal Dashboard
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
```
