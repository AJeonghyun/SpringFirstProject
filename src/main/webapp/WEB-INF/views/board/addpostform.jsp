<%--
  Created by IntelliJ IDEA.
  User: anjeonghyeon
  Date: 2022/12/02
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<html>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<head>
    <title>Title</title>
</head>
<body>
<form action="addok" method="post">
  <table id="edit">
      <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
      <tr><td>글쓴이</td><td><input type="text" name="writer"></td></tr>
      <tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type="submit">등록하기</button>
</form>
</body>
</html>
