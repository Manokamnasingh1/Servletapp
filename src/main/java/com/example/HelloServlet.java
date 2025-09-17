package com.example;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloServlet extends HttpServlet {

    // Handles GET requests (optional, for testing)
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>Hello, Servlet!</h1>");
    }

    // Handles POST requests from the form
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Retrieve form data
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String ageStr = req.getParameter("age");
        String department = req.getParameter("department");
        String joiningDateStr = req.getParameter("joiningDate");

        try {
            int age = Integer.parseInt(ageStr);
            java.sql.Date joiningDate = java.sql.Date.valueOf(joiningDateStr);

            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to MySQL
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/employeedb", "root", "root");

            // Prepare SQL statement
            String sql = "INSERT INTO employees (name, email, age, department, joining_date) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setInt(3, age);
            stmt.setString(4, department);
            stmt.setDate(5, joiningDate);

            // Execute and respond
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h2>Employee registered successfully!</h2>");
            } else {
                out.println("<h2>Failed to register employee.</h2>");
            }

            // Clean up
            stmt.close();
            conn.close();

        } catch (NumberFormatException e) {
            out.println("<h2>Invalid age format.</h2>");
        } catch (IllegalArgumentException e) {
            out.println("<h2>Invalid date format.</h2>");
        } catch (Exception e) {
            out.println("<h2>Error occurred:</h2>");
            e.printStackTrace(out);
        }
    }
}

