<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh; /* full screen */
            display: flex;
            justify-content: center; /* horizontal center */
            align-items: center;     /* vertical center */
            background-color: #f4f4f4;
        }
        form {
            background: white;
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 15px;
        }
        label { display: block; margin-top: 10px; }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
        }
        button {
            margin-top: 15px;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
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
            <option value="HR">HR</option>
            <option value="IT">IT</option>
            <option value="Finance">Finance</option>
            <option value="Marketing">Marketing</option>
        </select>

        <label for="joiningDate">Joining Date:</label>
        <input type="date" id="joiningDate" name="joiningDate" required>

        <button type="submit">Register Employee</button>
    </form>

    <script>
        document.getElementById("empForm").addEventListener("submit", function() {
            const employee = {
                name: document.getElementById("name").value,
                email: document.getElementById("email").value,
                age: document.getElementById("age").value,
                department: document.getElementById("department").value,
                joiningDate: document.getElementById("joiningDate").value
            };
            localStorage.setItem("employeeData", JSON.stringify(employee));
            console.log("Saved to localStorage:", employee);
        });
    </script>
</body>
</html>







