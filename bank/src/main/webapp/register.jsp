<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <link rel="stylesheet" type="text/css" href="./css/register.css">

</head>
<body>
	<img src="./image//bank3.png" style="height: 85vh;">
    <form id="registrationForm" action="CustomerRegistrationServlet" method="post" onsubmit="return validateForm()">
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required>
        
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>
        
        <label for="mobileNo">Mobile No:</label>
        <input type="text" id="mobileNo" name="mobileNo" required>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        
        <label for="accountType">Account Type:</label>
        <select id="accountType" name="accountType" required>
            <option value="Saving">Saving</option>
            <option value="Current">Current</option>
        </select>
        
        <label for="initialBalance">Initial Balance:</label>
        <input type="number" id="initialBalance" name="initialBalance" min="1000" required>
        
        <label for="date_of_birth">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth" required>
        
        <div style="display: flex;" class="radio-group">
            <label class="radio-label">ID Proof:</label>
            <input type="radio" id="aadhar" name="idProof" value="Aadhar" required>
            <label for="aadhar">Aadhar</label>
            <input type="radio" id="pan" name="idProof" value="PAN" required>
            <label for="pan">PAN</label>
        </div>
        
        <input type="submit" value="Register">
    </form>
    
    <script>
        function validateForm() {
            var fullName = document.getElementById("fullName").value;
            var address = document.getElementById("address").value;
            var mobileNo = document.getElementById("mobileNo").value;
            var email = document.getElementById("email").value;
            var initialBalance = document.getElementById("initialBalance").value;
            var date_of_birth = document.getElementById("date_of_birth").value;

            // Validation for Full Name: Should only contain alphabets and spaces
            var nameRegex = /^[A-Za-z\s]+$/;
            if (!nameRegex.test(fullName)) {
                alert("Full Name should only contain alphabets and spaces.");
                return false;
            }

            // Validation for Mobile No: Should contain only digits and be 10 digits long
            var mobileRegex = /^\d{10}$/;
            if (!mobileRegex.test(mobileNo)) {
                alert("Mobile No should contain 10 digits. Check and try again!!");
                return false;
            }

            // Validation for Date of Birth: Should not be after the present date
            var currentDate = new Date();
            var date_of_birthDate = new Date(date_of_birth);
            if (date_of_birthDate > currentDate) {
                alert("Invalid Date of Birth");
                return false;
            }

            // Additional validation can be added here, such as checking the format of email, initial balance, etc.

            // Basic validation for empty fields
            if (fullName == "" || address == "" || mobileNo == "" || email == "" || initialBalance == "" || date_of_birth == "") {
                alert("All fields are required!");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>