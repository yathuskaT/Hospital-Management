import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/PatientServlet"})
public class PatientServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String PatientID = request.getParameter("PatientID");
        String patientName = request.getParameter("PatientName");
        String gen = request.getParameter("Gender");
        String dob = request.getParameter("DOB");
        String phone = request.getParameter("Phone");
        String email = request.getParameter("Email");
        String address = request.getParameter("Address");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO patient (PatientID, Name, Gender, DOB,Phone, Email, Address) VALUES (?, ?, ?, ?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, PatientID);
            ps.setString(2, patientName);
            ps.setString(3, gen);
            ps.setString(4,dob);
            ps.setString(5,phone );                
            ps.setString(6, email);
            ps.setString(7,address);
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('Patient Added Successfully');window.location='index.jsp'</script>");
            

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
