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
        String id = request.getParameter("id");
        String brDay = request.getParameter("brDay");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String mail = request.getParameter("mail");
        String[] phone = request.getParameterValues("phone");
        String t1 = request.getParameter("t1");
        String t2 = request.getParameter("t2");
        String[] jobs = request.getParameterValues("jobs");
        String[] hobby = request.getParameterValues("hobby");
        String self = request.getParameter("self");
    %>

    <h3>아이디: <%=id%></h3>
    <h3>생일: <%=brDay%></h3>
    <h3>성별: <%=sex%></h3>
    <h3>메일: <%=email%></h3>
    <h3>메일 수신여부: <%=mail%></h3>
    <h3>핸드폰: <%=phone[0] + "-" +t1 + "-" + t2%></h3>
    <h3>직업: <%=jobs[0]%></h3>
    <h3>취미: <% for(int i=0; i<hobby.length; i++) { %>
        <%=hobby[i] + " , "%>
        <% } %>
    </h3>
    <h3>자기소개: <%=self%></h3>

</body>
</html>