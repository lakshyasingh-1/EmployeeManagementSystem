
        package com.example.Servlet;

import com.example.DAO.EmployeeDAO;
import com.example.Model.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import org.thymeleaf.web.IWebExchange;
import org.thymeleaf.web.servlet.JakartaServletWebApplication;

import java.io.IOException;
import java.util.List;

@WebServlet("/employees")
public class EmployeeServlet extends HttpServlet {

    private EmployeeDAO employeeDAO;

    private TemplateEngine templateEngine;

    @Override
    public void init() {

        employeeDAO = new EmployeeDAO();

        templateEngine = new TemplateEngine();

        org.thymeleaf.templateresolver.ClassLoaderTemplateResolver resolver =
                new org.thymeleaf.templateresolver.ClassLoaderTemplateResolver();

        resolver.setPrefix("templates/");

        resolver.setSuffix(".html");

        resolver.setTemplateMode("HTML");

        resolver.setCharacterEncoding("UTF-8");

        templateEngine.setTemplateResolver(resolver);
    }


    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        List<Employee> employees =
                employeeDAO.getAllEmployees();

        IWebExchange webExchange =
                JakartaServletWebApplication
                        .buildApplication(getServletContext())
                        .buildExchange(request, response);

        WebContext context =
                new WebContext(
                        webExchange,
                        request.getLocale()
                );

        context.setVariable(
                "employees",
                employees
        );

        templateEngine.process(
                "employee",
                context,
                response.getWriter()
        );
    }


    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(
                request.getParameter("id")
        );

        String name = request.getParameter("name");

        String email = request.getParameter("email");

        String department = request.getParameter("department");

        double salary = Double.parseDouble(
                request.getParameter("salary")
        );

        Employee employee = new Employee();

        employee.setId(id);
        employee.setName(name);
        employee.setEmail(email);
        employee.setDepartment(department);
        employee.setSalary(salary);

        employeeDAO.saveEmployee(employee);

        response.sendRedirect(
                request.getContextPath() + "/employees"
        );
    }
}

