<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admission </title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Admission Details</h2>
    <form action="AdmissionServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="adid" class="form-label">Admission ID</label>
            <input type="text" class="form-control" id="admiID" name="AdmissionID" required>
        </div>
        <div class="mb-3">
            <label for="paid" class="form-label">Patient ID</label>
             <input type="text" class="form-control" id="patientID" name="PatientID" required>
        </div>
        
         <div class="mb-3">
            <label for="ward" class="form-label">Ward ID</label>
             <input type="text" class="form-control" id="WardID" name="WardID" required>
        </div>
        
        <div class="mb-3">
            <label for="ad" class="form-label">Date Admitted</label>
            <input type="date" class="form-control" id="adDate" name="DateAdmitted" required>
        </div>
        
        <div class="mb-3">
            <label for="dis" class="form-label">Date Discharged</label>
            <input type="date" class="form-control" id="disDate" name="DateDischarged" required>
        </div>
        
        
        <div class="mb-3">
            <label for="reason" class="form-label">Reason For Admission</label>
            <input type="text" class="form-control"  id="reason" name="ReasonForAdmission" required>
        </div>
       
        <button type="submit" class="btn btn-secondary">Submit</button>
        <button type="reset" class="btn btn-secondary">Reset</button>
    </form>
        </div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


