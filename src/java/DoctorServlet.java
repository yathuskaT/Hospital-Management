import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/DoctorServlet"})
public class DoctorServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String doctID = request.getParameter("DoctorID");
        String doctName = request.getParameter("DoctorName");
        String specialization = request.getParameter("Specialization");
        String email = request.getParameter("Email");
        String deptID = request.getParameter("DepartmentID");
        String phone = request.getParameter("Phone");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO doctor (DoctorID, Name, Specialization, Email,DepartmentID, Phone  ) VALUES (?, ?, ?, ?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, doctID);
            ps.setString(2, doctName);
            ps.setString(3, specialization);
            ps.setString(4,email);
            ps.setString(5, deptID);
            ps.setInt(6, Integer.parseInt(phone));
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('Doctor Added Successfully');window.location='index.jsp'</script>");
            

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
