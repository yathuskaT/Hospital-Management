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
public class FeeServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String feeID = request.getParameter("Fee ID");
        String patientID = request.getParameter("PatientID");
        String amount = request.getParameter("Amount");
        String datepaid = request.getParameter("DatePaid");
        String descri = request.getParameter("Description");
       
        

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO fee (FeeID, PatientID, Amount, DatePaid,Description) VALUES (?, ?, ?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, feeID);
            ps.setString(2, patientID);
            ps.setString(3, amount);
            ps.setString(4,datepaid);
            ps.setString(5,descri );
            
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('fee Added Successfully');window.location='index.jsp'</script>");
            

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
