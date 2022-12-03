<%--
  Created by IntelliJ IDEA.
  User: anjeonghyeon
  Date: 2022/12/02
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Edit form</title>
</head>
<body>
<form:form modelAttribute="boardVO" method="post" action="editok">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr><td>제목</td><td><form:input path="title"/></td></tr>
    <tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
    <tr><td>제목</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
  </table>
  <input type="submit" value="수정하기"/>
  <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>