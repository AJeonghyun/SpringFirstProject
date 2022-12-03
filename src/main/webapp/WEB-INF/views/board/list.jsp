<%--
  Created by IntelliJ IDEA.
  User: anjeonghyeon
  Date: 2022/11/25
  Time: 1:35 AM
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Title</title>
</head>
<style>
    #list {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    p.round1 {
        border: 2px solid green;
        border-radius: 5px;
        padding: 5px;
    }

    #list td, #list th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2; }
    #list tr:hover {background-color: #ddd; }

</style>
<script>
    function delete_ok(id) {
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='delete/'+id;
    }
</script>
<body>

<div class="container-fluid d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom ">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <span class="fs-2" onclick="location.reload()">자유게시판</span>
    </a>
    <ul class="nav nav-pills">
        <li class="nav-item"><a href="#" class="nav-link active " aria-current="page">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link">NoStlye</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Example</a></li>
        <li class="nav-item"><a href="#" class="nav-link">About</a></li>
    </ul>
</div>
<nav class="navbar navbar-light col-12">
    <div class="container-fluid">
        <a class="navbar-brand fs-2">게시판 목록</a>
        <form class="d-flex">
            <div class="dropdown me-2">
                <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown">Select id
                    <span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li><a href="#">5</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">3</a></li>
                </ul>
            </div>
            <input class="form-control me-3" type="search" placeholder="title">
            <button class="btn btn-outline-primary me-2" type="submit">Search</button>
            <button class="btn btn-success me-2" type="button" onclick="location.href='add'">Add</button>

        </form>
    </div>
</nav>

<div class="table-responsive col-12">
    <table id="list" class="table table-borderless">
        <thead class="table-dark" style="text-align: center">
        <tr>
            <th>Number</th>
            <th>Id</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Content</th>
            <th>Regdate</th>
            <th>Menu</th>
        </tr>
        </thead>
<tbody>
<c:forEach items="${list}" var="u" varStatus="status">
    <tr >
    <td class="align-middle">${fn:length(list)-status.index}</td>
    <td class="align-middle">${u.seq}</td>
    <td class="align-middle">${u.title}</>
    <td class="align-middle">${u.writer}</>
    <td class="align-middle">${u.content}</>
    <td class="align-middle">${u.regdate}</>
    <td class="align-middle">
        <a href="editpost/${u.seq}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
        </svg></a>
            <a href="javascript:delete_ok('${u.getSeq()}')"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
            </svg></a>
        </td>
    </tr>

</c:forEach>
</table>
</div>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>
