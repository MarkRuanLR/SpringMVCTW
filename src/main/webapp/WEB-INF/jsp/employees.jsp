<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <style>
        #table-employees {
            margin: 0 auto;
            width: 70%;
            border: #000000 2px solid;
            font-size: 1.6em;
            border-collapse: collapse;
        }
        .th-employees {
            background: #000000;
            color: #ffffff;
        }
        .th-employees th, .tr-employees td {
            border: #000000 2px solid;
            text-align:center;
            vertical-align:middle;
        }
        .gray {
            background: #CCCCCC;
        }
    </style>
</head>
<body>
<table id="table-employees" cellspacing="0" cellpadding="0">
    <tr class="th-employees" >
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
    <c:forEach items="${message}" var="employee" varStatus="status">
        <c:if test="${status.index%2 !=0}">
            <tr class="tr-employees">
                <td>${employee.getId()}</td>
                <td>${employee.getName()}</td>
                <td>${employee.getAge()}</td>
                <td>${employee.getGender()}</td>
            </tr>
        </c:if>
        <c:if test="${status.index%2==0}">
            <tr class="tr-employees gray">
                <td>${employee.getId()}</td>
                <td>${employee.getName()}</td>
                <td>${employee.getAge()}</td>
                <td>${employee.getGender()}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>


</body>
</html>
