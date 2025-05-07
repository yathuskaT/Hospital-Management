
<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Patient Details</h2>
    <form action="PatientServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="paId" class="form-label">Patient ID</label>
            <input type="text" class="form-control" id="patientID" name="PatientID" required>
        </div>
        <div class="mb-3">
            <label for="paName" class="form-label">Patient Name</label>
             <input type="text" class="form-control" id="patientName" name="PatientName" required>
        </div>
        <div class="mb-3">
            <label for="gen" class="form-label">Gender</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="gen" name="Gender" value="Male">
                <label class="form-check-label"> Male </label>
        </div>
            
             <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="gen" name="Gender" value="Female">
                <label class="form-check-label"> Female </label>
        </div>
      
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="Email" required>
        </div>
        
        <div class="mb-3">
            <label for="dob" class="form-label">Date Of Birth</label>
            <input type="date" class="form-control" id="dob" name="DOB" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone</label>
            <input type="text" class="form-control" id="phone" name="Phone" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
             <input type="text" class="form-control" id="address" name="Address" required>
        </div>
        <button type="submit" class="btn btn-info">Submit</button>
        <button type="reset" class="btn btn-info">Reset</button>
    </form>
</div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


