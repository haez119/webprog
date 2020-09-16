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
        String hireDate = request.getParameter("hireDate");
        String[] computer = request.getParameterValues("computer");
    %>
    <!-- 가져올 때는 전부 다 가져오니까 배열로???-->
    <h3>이름: <%=firstName%></h3>
    <h3>성: <%=lastName%></h3>
    <h3>입사일: <%=hireDate%></h3>
    <h3>컴퓨터: <%=computer[0]%></h3>
    <!-- 선택한 값만 가져오면 되니까 인덱스0 으로 가져오면 선택된 값만 가져옴?-->
    <!--1번 인덱스는 오류뜨네 가져올 값은 5개 가져온 값은1개 ?-->
</body>
</html>