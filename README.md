# Employee Management System

A Java-based web application designed to manage employee records efficiently through a simple and responsive web interface.

## 🌐 Live Demo

[Open Employee Management System](https://employeemanagementsystem-production-2b66.up.railway.app/)

---

## 📌 About the Project

The Employee Management System is a web application that provides basic employee management functionality using Java-based backend technologies.

The application allows users to create, view, update, and delete employee records. Employee information is stored in a MySQL database and managed using Hibernate ORM.

---

## ✨ Features

- Add new employees
- View employee records
- Edit employee information
- Delete employee records
- MySQL database integration
- Hibernate ORM
- Server-side rendering using Thymeleaf
- Responsive frontend
- Docker-based deployment
- Railway deployment

---

## 🛠️ Technologies Used

- **Java**
- **Jakarta Servlets**
- **Hibernate ORM**
- **Thymeleaf**
- **MySQL**
- **Apache Tomcat**
- **Maven**
- **HTML**
- **CSS**
- **Docker**
- **Railway**

---

## 🏗️ Application Flow

```text
User
 │
 ▼
Web Browser
 │
 ▼
Jakarta Servlet
 │
 ▼
DAO Layer
 │
 ▼
Hibernate ORM
 │
 ▼
MySQL Database

---

## 📂 Project Structure

```text
EmployeeManagementSystem/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── com.example/
│       │       ├── DAO/
│       │       │   └── EmployeeDAO.java
│       │       │
│       │       ├── Model/
│       │       │   └── Employee.java
│       │       │
│       │       ├── Servlet/
│       │       │   ├── AddEmployeeServlet.java
│       │       │   ├── DeleteEmployeeServlet.java
│       │       │   ├── EditEmployeeServlet.java
│       │       │   ├── EmployeeServlet.java
│       │       │   └── SaveEmployeeServlet.java
│       │       │
│       │       └── Util/
│       │           └── HibernateUtil.java
│       │
│       ├── resources/
│       │   ├── hibernate.cfg.xml
│       │   └── templates/
│       │       ├── employee.html
│       │       └── employee-form.html
│       │
│       └── webapp/
│           ├── css/
│           │   ├── style.css
│           │   ├── Style1.css
│           │   ├── employee.css
│           │   └── employee-form.css
│           │
│           ├── WEB-INF/
│           │   └── web.xml
│           │
│           └── index.jsp
│
├── pom.xml
├── Dockerfile
├── .gitignore
└── README.md
