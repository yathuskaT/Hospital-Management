import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ReportServlet"})
public class ReportServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String repID = request.getParameter("ReportID");
        String patientID = request.getParameter("PatientID");
        String docID = request.getParameter("DoctorID");
        String repDate = request.getParameter("ReportDate");
        String reptype = request.getParameter("ReportType");
        String result = request.getParameter("Result");
        

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO report (ReportID, PatientID, DoctorID, ReportDate,ReportType,Result) VALUES (?, ?, ?, ?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, repID);
            ps.setString(2, patientID);
            ps.setString(3, docID);
            ps.setString(4,repDate);
            ps.setString(5,reptype );
            ps.setString(6,result );
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('Report Added Successfully');window.location='index.jsp'</script>");
            

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
