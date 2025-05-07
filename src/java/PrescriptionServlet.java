import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/AppointmentServlet"})
public class PrescriptionServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String preID = request.getParameter("PrescriptionID");
        String patientID = request.getParameter("PatientID");
        String docID = request.getParameter("DoctorID");
        String preDate = request.getParameter("DatePrescribed");
        String medi = request.getParameter("Medication");
        String dos = request.getParameter("Dosage");
        

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO prescription (PrescriptionID, PatientID, DoctorID, DatePrescribed,Medication,Dosage) VALUES (?, ?, ?, ?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, preID);
            ps.setString(2, patientID);
            ps.setString(3, docID);
            ps.setString(4,preDate);
            ps.setString(5,medi );
            ps.setString(6,dos );
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('Prescription added Successfully!');window.location='index.jsp'</script>");
            

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }
}
