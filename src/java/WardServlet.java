import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/WardServlet"})
public class WardServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String wardID = request.getParameter("WardID");
        String wardName = request.getParameter("WardName");
        String type = request.getParameter("Type");
        String cap = request.getParameter("Capacity");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management", "root", "");

            String query = "INSERT INTO ward (WardID, WardName, Type, Capacity) VALUES (?, ?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1,wardID );
            ps.setString(2,wardName );
            ps.setString(3,type );
            ps.setInt(4, Integer.parseInt(cap));
            ps.executeUpdate();

            conn.close();
            response.getWriter().println("<script>alert('Ward Added Successfully');window.location='index.jsp'</script>");
            

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
