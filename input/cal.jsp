<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    #sun {
        color: red;
    }
    #ss {
        color: blue;
    }
    #customers tr:hover {background-color: yellow;}
    #cc th {
        padding-top: 12px;
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 12px;
        text-align: left;
        background-color: rgb(165, 249, 255);
        color: rgb(0, 0, 0);
        }
   
    tr th {
        padding-left: 20px;
        padding-right: 20px;
        text-align: left;
        color: black;
    }
    

</style>
<body>
    <table  id="customers" border="1">
    <%
     request.setCharacterEncoding("UTF-8");
    String month = request.getParameter("month");
    String year = request.getParameter("year");
    %>
        <tr id="cc">
            <th>월</th>
            <th>화</th>
            <th>수</th>
            <th>목</th>
            <th>금</th>
            <th id="ss">토</th>
            <th id="sun">일</th>
        </tr>
    
    <p></p>
     
        <tr>
            <% for(int i=1 ; i <=31 ; i++) { %>
                <% if(i % 7 == 6) { %>
                    <th id="ss"><%=i%></th>
                    <% } else if(i % 7 == 0) { %>
                        <th id="sun"><%=i%> </th>
                        <tr></tr>
                    <% } else { %>
                        <th><%=i%> </th>
                    <% } %>
                <% } %>
        </tr>
    </table>


   
</body>
</html>