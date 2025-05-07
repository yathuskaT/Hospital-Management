
<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Department</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Department Details</h2>
    <form action="DepartmentServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="departmentId" class="form-label">Department ID</label>
            <input type="text" class="form-control" id="deptID" name="DepartmentID" required>
        </div>
    
        <div class="mb-3">
            <label for="departmentName" class="form-label">Department Name</label>
            <select class="form-control" id="deptName" name="DepartmentName" required>
            <option value="">-Select Type-</option>
            <option value="Cardiology">Cardiology</option>
            <option value="Neurology">Neurology</option>
            <option value="Orthopedic">Orthopedic</option>
            <option value="Pediatric">Pediatric</option>
            <option value="General Surgery">General Surgery</option>
            <option value="Emergency Medicine">Emergency Medicine</option>
            </select>
       </div>
        <div class="mb-3">
            <label for="headOfDepartment" class="form-label">Head of Department</label>
            <input type="text" class="form-control" id="hod" name="HeadOfDepartment" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>
