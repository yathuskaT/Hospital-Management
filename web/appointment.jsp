<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Appointment</h2>
    <form action="AppointmentServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="ApID" class="form-label">Appointment ID</label>
            <input type="text" class="form-control" id="appoiID" name="AppointmentID" required>
        </div>
        <div class="mb-3">
            <label for="PID" class="form-label">Patient ID </label>
             <input type="text" class="form-control" id="patientID" name="PatientID" required>
        </div>
        <div class="mb-3">
            <label for="DID" class="form-label">Doctor ID</label>
            <input type="text" class="form-control" id="docID" name="DoctorID" required>
      
       <div class="mb-3">
            <label for="APDate" class="form-label">Appointment Date</label>
            <input type="datetime-local" class="form-control" id="AppDate" name="AppointmentDate" required>
        </div>
   
        <div class="mb-3">
            <label for="Reason" class="form-label">Reason</label>
             <input type="text" class="form-control" id="reason" name="Reason" required>
        </div>
        <button type="submit" class="btn btn-warning">Submit</button>
        <button type="reset" class="btn btn-warning">Reset</button>
    </form>
</div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


