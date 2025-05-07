
<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Doctor Details</h2>
    <form action="DoctorServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="doctId" class="form-label">Doctor ID</label>
            <input type="text" class="form-control" id="doctId" name="DoctorID" required>
        </div>
        <div class="mb-3">
            <label for="doctName" class="form-label">Doctor Name</label>
             <input type="text" class="form-control" id="doctName" name="DoctorName" required>
        </div>
        
        <div class="mb-3">
            <label for="specialization" class="form-label">Specialization</label>
            <select class="form-control" id="specialization" name="Specialization" required>
            <option value="">Select Type</option>
            <option value="Cardiologist">Cardiologist</option>
            <option value="Neurologist">Neurologist</option>
            <option value="Pediatrician">Pediatrician</option>
            <option value="Orthopedic">Orthopedic</option>
            <option value="Dermatologist">Dermatologist</option>
            <option value="Gynecologist">Gynecologist</option>
            <option value="General Physician">General Physician</option>
            </select>
       </div>
      
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="Email" required>
        </div>
        
        <div class="mb-3">
            <label for="deptID" class="form-label">Department ID</label>
            <input type="text" class="form-control" id="deptID" name="DepartmentID" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone</label>
            <input type="text" class="form-control" id="phone" name="Phone" required>
        </div>
        <button type="submit" class="btn btn-success">Submit</button>
        <button type="reset" class="btn btn-success">Reset</button>
    </form>
</div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


