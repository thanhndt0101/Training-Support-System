<%-- 
    Document   : cc
    Created on : Oct 22, 2022, 1:36:12 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table>
           <% response.setContentType("application/vnd.ms-excel");
              response.setHeader("Content-Disposition", "inline; filename=ListTrainee.xls"); %>
              <tr>
                   <td name="team_member" class="p-3 form-label" >ID</td>
                <td name="team_member" class="p-3 form-label" >Name</td>
                <td name="team_member" class="p-3 form-label" >Email</td>
                <td name="team_member" class="p-3 form-label" >Team</td>



              </tr>
            <c:forEach items="${sessionScope.data}" var="s" >
               <tr>
                   <td name="team_member" class="p-3 form-label" >${s.user.user_id}</td>
                <td name="team_member" class="p-3 form-label" >${s.user.full_name}</td>
                 <td name="team_member" class="p-3 form-label" >${s.user.email}</td>
                 

              </tr>
            </c:forEach>
        

    </table>

</body>
</html>
