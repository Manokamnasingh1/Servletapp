
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <style>
        /* Your CSS styles here */
    </style>
</head>
<body>
    <form id="empForm" action="hello" method="post">
        <h2>Employee Registration</h2>
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" min="18" max="65" required>

        <label for="department">Department:</label>
        <select id="department" name="department" required>
            <option value="">Select Department</option>
            <option value="HR">Finance</option>
            <option value="Marketing">Marketing</option>
        </select>

        <label for="joiningDate">Joining Date:</label>
        <input type="date" id="joiningDate" name="joiningDate" required>

        <button type="submit">Register Employee</button>
    </form>
</body>
</html>







