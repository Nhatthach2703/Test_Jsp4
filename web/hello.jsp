<%-- 
    Document   : hello
    Created on : Jan 16, 2024, 8:42:40 AM
    Author     : Xuan Vinh
--%>

<%@page import="Model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="StuServLet" method="get">
            <%
                if (request.getAttribute("studentInfo") != null) {
                Student s = (Student) request.getAttribute("studentInfo");
            %>
            <h2>Hello <%= s.getName()%>_<%= s.getCode()%>  </h2>
            <% 
                }
                else {
            %>
                    Enter name: <input type="text" name="name"/> <br/>
                    Enter code <input type="text" name="code"/> <br/>
                    <input type="submit" value="Submit"/>
            <% 
                } 
            %>
        </form>
    </body>
</html>
