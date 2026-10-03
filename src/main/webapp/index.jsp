<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee Management System</title>


    <style>

        /* =========================
           RESET
        ========================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f8fafc;
            color: #172033;
            line-height: 1.6;
        }


        /* =========================
           NAVBAR
        ========================= */

        .navbar {
            height: 76px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 8%;

            background: #ffffff;

            border-bottom: 1px solid #e5e7eb;
        }


        .logo {
            display: flex;
            align-items: center;

            gap: 11px;

            font-size: 20px;
            font-weight: 700;

            color: #172033;
        }


        .logo-icon {
            width: 38px;
            height: 38px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 9px;

            background: #2563eb;

            color: white;

            font-size: 19px;
            font-weight: 700;
        }


        .logo-highlight {
            color: #2563eb;
        }


        /* =========================
           NAV LINKS
        ========================= */

        .nav-links {
            display: flex;

            align-items: center;

            gap: 32px;
        }


        .nav-links a {
            text-decoration: none;

            color: #64748b;

            font-size: 14px;

            font-weight: 600;

            transition: 0.2s;
        }


        .nav-links a:hover {
            color: #2563eb;
        }


        /* =========================
           HERO SECTION
        ========================= */

        .hero {
            min-height: 610px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 70px;

            padding: 80px 8%;

            background:
                radial-gradient(
                    circle at 90% 20%,
                    rgba(37, 99, 235, 0.10),
                    transparent 30%
                ),
                #f8fafc;
        }


        .hero-content {
            max-width: 650px;
        }


        .badge {
            display: inline-block;

            padding: 7px 14px;

            margin-bottom: 22px;

            border-radius: 20px;

            background: #eff6ff;

            color: #2563eb;

            border: 1px solid #dbeafe;

            font-size: 12px;

            font-weight: 700;

            letter-spacing: 0.5px;

            text-transform: uppercase;
        }


        .hero h1 {
            font-size: clamp(42px, 5vw, 64px);

            line-height: 1.08;

            letter-spacing: -2px;

            margin-bottom: 25px;

            color: #111827;
        }


        .hero h1 span {
            display: block;

            color: #2563eb;
        }


        .hero-content > p {
            max-width: 570px;

            color: #64748b;

            font-size: 17px;

            line-height: 1.8;

            margin-bottom: 32px;
        }


        /* =========================
           BUTTONS
        ========================= */

        .hero-buttons {
            display: flex;

            align-items: center;

            gap: 14px;
        }


        .primary-btn,
        .secondary-btn {
            display: inline-flex;

            align-items: center;

            justify-content: center;

            gap: 12px;

            padding: 13px 21px;

            border-radius: 8px;

            text-decoration: none;

            font-size: 14px;

            font-weight: 700;

            transition: all 0.25s ease;
        }


        .primary-btn {
            background: #2563eb;

            color: white;

            box-shadow:
                0 8px 20px rgba(37, 99, 235, 0.20);
        }


        .primary-btn:hover {
            background: #1d4ed8;

            transform: translateY(-2px);
        }


        .primary-btn span {
            font-size: 19px;
        }


        .secondary-btn {
            background: white;

            color: #334155;

            border: 1px solid #dbe2ea;
        }


        .secondary-btn:hover {
            border-color: #2563eb;

            color: #2563eb;
        }


        /* =========================
           DASHBOARD CARD
        ========================= */

        .hero-card {
            width: 390px;

            padding: 28px;

            background: white;

            border: 1px solid #e5e7eb;

            border-radius: 18px;

            box-shadow:
                0 25px 60px rgba(15, 23, 42, 0.08);

            transform: rotate(1deg);
        }


        .card-header {
            display: flex;

            align-items: flex-start;

            justify-content: space-between;

            padding-bottom: 22px;

            border-bottom: 1px solid #eef2f7;
        }


        .card-label {
            color: #94a3b8;

            font-size: 11px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: 1px;
        }


        .card-header h3 {
            margin-top: 4px;

            font-size: 18px;

            color: #1e293b;
        }


        .status-dot {
            width: 10px;
            height: 10px;

            border-radius: 50%;

            background: #22c55e;

            margin-top: 7px;
        }


        /* =========================
           EMPLOYEE PREVIEW
        ========================= */

        .employee-preview {
            display: flex;

            align-items: center;

            gap: 15px;

            margin: 25px 0;
        }


        .avatar {
            width: 52px;
            height: 52px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 12px;

            background: #eff6ff;

            color: #2563eb;

            font-size: 20px;

            font-weight: 700;
        }


        .employee-info h4 {
            color: #1e293b;

            font-size: 15px;
        }


        .employee-info p {
            color: #94a3b8;

            font-size: 13px;
        }


        /* =========================
           STATS
        ========================= */

        .stats {
            display: grid;

            grid-template-columns: repeat(3, 1fr);

            gap: 10px;
        }


        .stat-box {
            padding: 16px 8px;

            text-align: center;

            background: #f8fafc;

            border-radius: 10px;
        }


        .stat-number {
            display: block;

            color: #2563eb;

            font-size: 16px;

            font-weight: 800;
        }


        .stat-label {
            display: block;

            margin-top: 3px;

            color: #94a3b8;

            font-size: 10px;

            text-transform: uppercase;
        }


        /* =========================
           FEATURES
        ========================= */

        .features {
            padding: 90px 8%;

            background: white;
        }


        .section-heading {
            max-width: 700px;

            margin: 0 auto 50px;

            text-align: center;
        }


        .section-heading p {
            margin-bottom: 10px;

            color: #2563eb;

            font-size: 12px;

            font-weight: 800;

            letter-spacing: 1.5px;
        }


        .section-heading h2 {
            margin-bottom: 12px;

            color: #111827;

            font-size: 32px;

            line-height: 1.2;
        }


        .section-heading span {
            color: #64748b;

            font-size: 15px;
        }


        /* =========================
           FEATURE GRID
        ========================= */

        .feature-grid {
            max-width: 1100px;

            margin: auto;

            display: grid;

            grid-template-columns: repeat(4, 1fr);

            gap: 20px;
        }


        .feature-card {
            padding: 28px 22px;

            border: 1px solid #e5e7eb;

            border-radius: 13px;

            background: white;

            transition: all 0.25s ease;
        }


        .feature-card:hover {
            transform: translateY(-5px);

            border-color: #bfdbfe;

            box-shadow:
                0 15px 35px rgba(15, 23, 42, 0.07);
        }


        .feature-icon {
            width: 44px;
            height: 44px;

            display: flex;

            align-items: center;

            justify-content: center;

            margin-bottom: 20px;

            border-radius: 10px;

            background: #eff6ff;

            color: #2563eb;

            font-size: 22px;

            font-weight: 700;
        }


        .feature-card h3 {
            margin-bottom: 9px;

            color: #1e293b;

            font-size: 16px;
        }


        .feature-card p {
            color: #64748b;

            font-size: 13px;

            line-height: 1.7;
        }


        /* =========================
           FOOTER
        ========================= */

        footer {
            padding: 28px 8%;

            display: flex;

            align-items: center;

            justify-content: space-between;

            background: #111827;

            color: #94a3b8;

            font-size: 12px;
        }


        footer strong {
            color: white;

            font-size: 15px;
        }


        footer p {
            margin: 0;
        }


        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 950px) {

            .hero {
                flex-direction: column;

                text-align: center;

                padding-top: 60px;
            }


            .hero-content {
                max-width: 700px;
            }


            .hero-content > p {
                margin-left: auto;

                margin-right: auto;
            }


            .hero-buttons {
                justify-content: center;
            }


            .feature-grid {
                grid-template-columns: repeat(2, 1fr);
            }


            .hero-card {
                transform: none;
            }

        }


        @media (max-width: 600px) {

            .navbar {
                padding: 0 5%;
            }


            .nav-links {
                gap: 15px;
            }


            .hero {
                padding: 55px 5%;
            }


            .hero h1 {
                font-size: 42px;
            }


            .hero-buttons {
                flex-direction: column;
            }


            .primary-btn,
            .secondary-btn {
                width: 100%;
            }


            .hero-card {
                width: 100%;
            }


            .feature-grid {
                grid-template-columns: 1fr;
            }


            .features {
                padding: 70px 5%;
            }


            footer {
                flex-direction: column;

                gap: 8px;

                text-align: center;
            }

        }

    </style>

</head>


<body>


<!-- =========================
     NAVBAR
========================= -->

<nav class="navbar">

    <div class="logo">

        <div class="logo-icon">
            E
        </div>

        <span>
            Employee<span class="logo-highlight">MS</span>
        </span>

    </div>


    <div class="nav-links">

        <a href="<%= request.getContextPath() %>/">
            Home
        </a>

        <a href="<%= request.getContextPath() %>/employees">
            Employees
        </a>

    </div>

</nav>



<!-- =========================
     HERO SECTION
========================= -->

<section class="hero">


    <div class="hero-content">

        <div class="badge">
            Employee Management System
        </div>


        <h1>

            Manage Your Employees

            <span>
                Effortlessly.
            </span>

        </h1>


        <p>

            A simple and powerful employee management system
            to add, update, view and delete employee records
            from one place.

        </p>


        <div class="hero-buttons">


            <a href="<%= request.getContextPath() %>/employees"
               class="primary-btn">
                Manage Employees

                <span>
                    →
                </span>

            </a>


            <a href="#features"
               class="secondary-btn">

                Learn More

            </a>


        </div>

    </div>



    <!-- =========================
         DASHBOARD CARD
    ========================= -->

    <div class="hero-card">


        <div class="card-header">

            <div>

                <p class="card-label">
                    Dashboard
                </p>

                <h3>
                    Employee Overview
                </h3>

            </div>


            <div class="status-dot"></div>

        </div>



        <div class="employee-preview">


            <div class="avatar">
                E
            </div>


            <div class="employee-info">

                <h4>
                    Employee Records
                </h4>

                <p>
                    Manage your workforce
                </p>

            </div>

        </div>



        <div class="stats">


            <div class="stat-box">

                <span class="stat-number">
                    CRUD
                </span>

                <span class="stat-label">
                    Operations
                </span>

            </div>


            <div class="stat-box">

                <span class="stat-number">
                    SQL
                </span>

                <span class="stat-label">
                    Database
                </span>

            </div>


            <div class="stat-box">

                <span class="stat-number">
                    JPA
                </span>

                <span class="stat-label">
                    Hibernate
                </span>

            </div>


        </div>

    </div>

</section>



<!-- =========================
     FEATURES
========================= -->

<section class="features" id="features">


    <div class="section-heading">

        <p>
            WHAT YOU CAN DO
        </p>


        <h2>
            Everything you need to manage employees
        </h2>


        <span>
            Simple tools for managing employee information efficiently.
        </span>

    </div>



    <div class="feature-grid">


        <!-- ADD -->

        <div class="feature-card">

            <div class="feature-icon">
                +
            </div>

            <h3>
                Add Employees
            </h3>

            <p>
                Easily add new employees and store their
                information in the database.
            </p>

        </div>



        <!-- EDIT -->

        <div class="feature-card">

            <div class="feature-icon">
                ✎
            </div>

            <h3>
                Edit Employees
            </h3>

            <p>
                Update employee information whenever
                changes are required.
            </p>

        </div>



        <!-- DELETE -->

        <div class="feature-card">

            <div class="feature-icon">
                ×
            </div>

            <h3>
                Delete Employees
            </h3>

            <p>
                Remove employee records that are
                no longer required.
            </p>

        </div>



        <!-- VIEW -->

        <div class="feature-card">

            <div class="feature-icon">
                ◉
            </div>

            <h3>
                View Employees
            </h3>

            <p>
                View all employee records in one
                organized dashboard.
            </p>

        </div>


    </div>

</section>



<!-- =========================
     FOOTER
========================= -->

<footer>


    <div>

        <strong>
            EmployeeMS
        </strong>

    </div>


    <p>
        Employee Management System
    </p>


    <span>
        © 2026 Employee Management System
    </span>


</footer>


</body>

</html>