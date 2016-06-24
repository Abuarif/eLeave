<%-- 
    Document   : login_handler
    Created on : 20-Jun-2016, 12:55:10
    Author     : RichTech01
--%>

<%@page import="DataAccess.StaffDA"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="Controller.Staff" %>

<%
    String SM_APPS_USERNAME = request.getParameter("username").toUpperCase();
    String SM_APPS_PASSWD = request.getParameter("password");
    
    String login = Staff.staffLogin(SM_APPS_USERNAME, SM_APPS_PASSWD);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Login</title>
    </head>
    <body> 
        <% 
            if (login.equals("success")) { 
                 %>
                <script type="text/javascript">
                    alert("Welcome, <%= SM_APPS_USERNAME %>.");
                    window.location = "dashboard.jsp";
                </script>
         <% }
            else { %>
                <script type="text/javascript">
                    alert("Invalid username or password");
                    window.location = "index.jsp";
                </script>
        <%  } %>
    </body>
</html>
