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
public class AppointmentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String appoiID = request.getParameter("AppointmentID");
        String patientID = request.getParameter("PatientID");
        String docID = request.getParameter("DoctorID");
        String AppDate = request.getParameter("AppointmentDate");
        String reason = request.getParameter("Reason");
        

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO appointment (AppointmentID, PatientID, DoctorID, AppointmentDate,Reason) VALUES (?, ?, ?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, appoiID);
            ps.setString(2, patientID);
            ps.setString(3, docID);
            ps.setString(4,AppDate);
            ps.setString(5,reason );               
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('Appointment Added Successfully!');window.location='index.jsp'</script>");
            

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
