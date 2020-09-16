<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String eMail = request.getParameter("eMail");
    %>
    <table border="1">
        <caption><입력된 값></caption>
        <tr>
            <th>이름</th>
            <th style="width: 100px;" ><%=firstName%></th>
        </tr>
        <tr>
            <th>성</th>
            <th style="width: 100px;"><%=lastName%></th>
        </tr>
        <tr>
            <th>이메일</th>
            <th style="width: 100px;"><%=eMail%></th>
        </tr>

    </table>

</body>
</html>