package students;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/logi")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/new_project";
    private static final String user = "root";
    private static final String password = "Surbhit@1";

    public login() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to login page
        request.getRequestDispatcher("/WEB-INF/students/student_login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");

        try {
            // Load MySQL driver explicitly
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection using try-with-resources
            try (Connection connection = DriverManager.getConnection(url, user, password)) {
                // Query to verify user credentials
                String sqlQuery = "SELECT * FROM student_reg WHERE phone = ? AND dob = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery)) {
                    preparedStatement.setString(1, phone);
                    preparedStatement.setString(2, dob);

                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        if (resultSet.next()) {
                            // Login successful
                            String studentName = resultSet.getString("name");
                            response.getWriter().println("Welcome, " + studentName + "!");
                        } else {
                            // Invalid credentials
                            response.getWriter().println("Invalid phone number or date of birth. Please try again.");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
