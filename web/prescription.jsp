<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prescription</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Prescription Details</h2>
    <form action="PrescriptionServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="preid" class="form-label">Prescription ID</label>
            <input type="text" class="form-control" id="preid" name="PrescriptionID" required>
        </div>
        <div class="mb-3">
            <label for="paid" class="form-label">Patient ID</label>
             <input type="text" class="form-control" id="patientID" name="PatientID" required>
        </div>
        
         <div class="mb-3">
            <label for="docID" class="form-label">Doctor ID</label>
             <input type="text" class="form-control" id="docID" name="DoctorID" required>
        </div>
        
        <div class="mb-3">
            <label for="predate" class="form-label">Date Prescribed</label>
            <input type="date" class="form-control" id="predate" name="DatePrescribed" required>
        </div>
        
       
        <div class="mb-3">
            <label for="medi" class="form-label">Medication</label>
            <textarea class="form-control" name="Medication" rows="4" placeholder="Paracetamol...." required></textarea>
        </div>
        
      
        <div class="mb-3">
            <label for="dos" class="form-label">Dosage</label>
            <textarea class="form-control" name="Dosage" rows="4" placeholder="500mg twice daily...." required></textarea>
        </div>
       
        <button type="submit" class="btn btn-dark">Submit</button>
        <button type="reset" class="btn btn-dark">Reset</button>
    </form>
        </div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


