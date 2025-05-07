<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Management</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
        body {
        
        .dashboard-card {
            padding: 30px;
            border-radius: 15px;
            min-height: 40vh;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            background-color: #ffffff;
           
        }
        .btn-dashboard {
            width: 100%;
            margin-bottom: 40px;
            padding: 15px;
            font-size: 20px;
            font-weight: bold;
        }
    </style>

    </head>
    <body>
        <div class="container mt-5">
        <div class="dashboard-card">
            <h2 class="text-center text-primary mb-4">Hospital Management system Dashboard</h2>
            <div class="row">
                <div class="col-md-4">
                    <a href="department.jsp" class="btn btn-outline-primary btn-dashboard">Department </a>
                </div>
                <div class="col-md-4">
                    <a href="doctor.jsp"  class="btn btn-outline-success btn-dashboard">Doctor</a>
                </div>
                <div class="col-md-4">
                    <a href="patient.jsp"  class="btn btn-outline-info btn-dashboard">Patient</a>
                </div>
                <div class="col-md-4">
                    <a href="admission.jsp"  class="btn btn-outline-secondary btn-dashboard">Admission</a>
                </div>
                <div class="col-md-4">
                    <a href="appointment.jsp"  class="btn btn-outline-warning btn-dashboard">Appointment</a>
                </div>
                <div class="col-md-4">
                    <a href="ward.jsp"  class="btn btn-outline-danger btn-dashboard">Ward</a>
                </div>
                <div class="col-md-4">
                    <a href="prescription.jsp" class="btn btn-outline-dark btn-dashboard">Prescription</a>
                </div>
                <div class="col-md-4">
                    <a href="fee.jsp"  class="btn btn-outline-secondary btn-dashboard">Bill Payment</a>
                </div>
               <div class="col-md-4">
                   <a href="report.jsp"  class="btn btn-outline-success btn-dashboard">Report</a>
                </div>
            </div>
        </div>
    </div>
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    </body>
</html>

