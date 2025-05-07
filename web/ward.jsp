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
    <h2 class="text-center mb-4">Ward Details</h2>
    <form action="WardServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="wardId" class="form-label">Ward ID</label>
            <input type="text" class="form-control" id="wardId" name="WardID" required>
        </div>
        <div class="mb-3">
            <label for="type" class="form-label">Ward Type</label>
            <select class="form-control" id="type" name="Type" required>
            <option value="">-- Select Type --</option>
            <option value="ICU">ICU</option>
            <option value="General">General</option>
            <option value="Maternity">Maternity</option>
            <option value="Pediatric">Pediatric</option>
            <option value="Surgical">Surgical</option>
            <option value="Emergency">Emergency</option>
            </select>
       </div>
        <div class="mb-3">
            <label for="wardName" class="form-label">Ward Name</label>
            <input type="text" class="form-control" id="wardName" name="WardName" required>
        </div>
        <div class="mb-3">
            <label for="capacity" class="form-label">Capacity</label>
            <input type="text" class="form-control" id="cap" name="Capacity" required>
        </div>
        <button type="submit" class="btn btn-danger">Submit</button>
    </form>
</div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


