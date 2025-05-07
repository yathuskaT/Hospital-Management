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
public class AdmissionServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String admiID = request.getParameter("AdmissionID");
        String patientID = request.getParameter("PatientID");
        String wardID = request.getParameter("WardID");
        String AdDate = request.getParameter("DateAdmitted");
        String disDate = request.getParameter("DateDischarged");
        String reason = request.getParameter("ReasonForAdmission");
        

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO admission (AdmissionID, PatientID, WardID, DateAdmitted,DateDischarged,ReasonForAdmission) VALUES (?, ?, ?, ?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, admiID);
            ps.setString(2, patientID);
            ps.setString(3, wardID);
            ps.setString(4,AdDate);
            ps.setString(5,disDate );
            ps.setString(6,reason );
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('Admission added Successfully!');window.location='index.jsp'</script>");
            

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
