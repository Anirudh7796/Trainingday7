<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
 
    // Hardcoded credentials (For real-world use, fetch from a database)
    if("admin".equals(username) && "admin@123".equals(password)) {
        session.setAttribute("user", username); // Store user in session
        response.sendRedirect("welcome.jsp"); // Redirect to success page
    } else {
        response.sendRedirect("error.jsp"); // Redirect to error page
        }
%>