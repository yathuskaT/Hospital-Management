<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Report</h2>
    <form action="ReportServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="repid" class="form-label">Report ID</label>
            <input type="text" class="form-control" id="repID" name="ReportID" required>
        </div>
        <div class="mb-3">
            <label for="patid" class="form-label">Patient ID</label>
             <input type="text" class="form-control" id="patientID" name="PatientID" required>
        </div>
        
         <div class="mb-3">
            <label for="doctid" class="form-label">Doctor ID</label>
             <input type="text" class="form-control" id="docID" name="DoctorID" required>
        </div>
        
        <div class="mb-3">
            <label for="repo" class="form-label">Report Date</label>
            <input type="date" class="form-control" id="repDate" name="ReportDate" required>
        </div>
        
        <div class="mb-3">
            <label for="specialization" class="form-label">Report Type</label>
            <select class="form-control" id="reptype" name="ReportType" required>
            <option value="">Select Type</option>
            <option value="Blood Test">Blood Test</option>
            <option value="X-Ray">X-Ray</option>
            <option value="MRI">MRI</option>
            <option value="CT Scan">CT Scan</option>
            <option value="ECG">ECG</option>
            </select>
        </div>
        
        <div class="mb-3">
            <label for="result" class="form-label">Result</label>
            <textarea class="form-control" name="Result" rows="4" placeholder="Blood glucose is normal, No fracture detected...." required></textarea>
        </div>
       
        <button type="submit" class="btn btn-success">Submit</button>
        <button type="reset" class="btn btn-success">Reset</button>
    </form>
</div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


