<%@ page language="java" %>
<html>
<head>
    <title>User Form</title>

    <script>
        function validateForm() {
            let name = document.forms["myForm"]["username"].value;
            let email = document.forms["myForm"]["email"].value;
            let desig = document.forms["myForm"]["designation"].value;

            if (name == "" || email == "" || desig == "") {
                alert("All fields are required!");
                return false;
            }

            // Email validation
            let pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (!email.match(pattern)) {
                alert("Enter valid email!");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

<h2>User Details Form</h2>

<form name="myForm" action="UserDataServlet" method="post" onsubmit="return validateForm()">
    
    Username: <input type="text" name="username"><br><br>
    
    Email: <input type="text" name="email"><br><br>
    
    Designation: <input type="text" name="designation"><br><br>
    
    <input type="submit" value="Submit">

</form>

</body>
</html>