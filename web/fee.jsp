<%@page language = "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fee</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container mt-5">
    <h2 class="text-center mb-4">Fee Details</h2>
    <form action="FeeServlet" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="feeId" class="form-label">Fee ID</label>
            <input type="text" class="form-control" id="feeID" name="Fee ID" required>
        </div>
        <div class="mb-3">
            <label for="patientid" class="form-label">Patient ID</label>
             <input type="text" class="form-control" id="patientID" name="PatientID" required>
        </div>
        
         <div class="mb-3">
            <label for="amount" class="form-label">Amount</label>
             <input type="text" class="form-control" id="amount" name="Amount" required>
        </div>
        
        <div class="mb-3">
            <label for="date" class="form-label">Date Paid</label>
            <input type="date" class="form-control" id="datepaid" name="DatePaid" required>
        </div>
        
        
        <div class="mb-3">
            <label for="des" class="form-label">Description</label>
            <input type="text" class="form-control" id="descri" name="Description" required>
        </div>
       
        <button type="submit" class="btn btn-secondary">Submit</button>
        <button type="reset" class="btn btn-secondary">Reset</button>
    </form>
</div>

            <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>


