<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
// Retrieve the expense data submitted from the index.jsp form
String category = request.getParameter("category");
String date = request.getParameter("date");
String name = request.getParameter("name");
String description = request.getParameter("description");
double amount = Double.parseDouble(request.getParameter("amount"));
// Define the database connection parameters
String url = "jdbc:mysql://localhost:3306/expenseManagerDB";
String username = "root";
String password = "";
// Create the database connection
Connection conn = null;
PreparedStatement stmt = null;
try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, username, password);
    // Prepare the SQL insert statement
    String sql = "INSERT INTO user_expense (id, category, date, expense_name, description, amount) " +
                 "VALUES (null, ?, ?, ?, ?, ?)";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, category);
    stmt.setString(2, date);
    stmt.setString(3, name);
    stmt.setString(4, description);
    stmt.setDouble(5, amount);
    // Execute the insert statement
    int rowsAffected = stmt.executeUpdate();
    out.println(rowsAffected + " row(s) inserted.");
} catch (ClassNotFoundException e) {
    e.printStackTrace();
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    // Close the database connection and statement
    try { if (stmt != null) stmt.close(); } catch (Exception e) {};
    try { if (conn != null) conn.close(); } catch (Exception e) {};
}
%>
