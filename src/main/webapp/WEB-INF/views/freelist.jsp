<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /*!* Set height of the grid so .sidenav can be 100% (adjust as needed) *!*/
        /*.row.content {*/
        /*height: 450px*/
        /*}*/

        /*!* Set gray background color and 100% height *!*/
        /*.sidenav {*/
        /*padding-top: 20px;*/
        /*background-color: #f1f1f1;*/
        /*height: 100%;*/
        /*}*/

        /* Set black background color, white text and some padding */
        footer {
            margin: 25px;
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }
    </style>
</head>
<body>
<div>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Logo</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="#">홈으로</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li class="active"><a href="/free/list">자유게시판</a></li>
                    <li><a href="#">질문게시판</a></li>
                    <li><a href="#">익명게시판</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="container-fluid text-center">
    <div class="row content">
        <div class="col-sm-2 sidenav">
        </div>

        <div class="col-sm-8">
            <table class="table table-striped table-hover text-left">
                <thead>
                <tr>
                    <th>No.</th>
                    <th>Title</th>
                    <th>ID</th>
                    <th>Date</th>
                    <th>View</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${boards}" var="board">
                    <tr>
                        <td>${board.id}</td>
                        <td><a href="/free/read?id=${board.id}">${board.title}</a></td>
                        <td>${board.name}</td>
                        <td>${board.regDate}</td>
                        <td>${board.readCount}</td>

                    </tr>
                </c:forEach>

                <%--<c:forEach items="${boards}" var="board">--%>
                    <%--<tr>--%>
                        <%--<td>${board.id}</td>--%>
                        <%--<td><a href='/free/read?id=${board.id}'>${board.title}</a></td>--%>
                        <%--<td>${board.name}</td>--%>
                        <%--<td>${board.regdate}</td>--%>
                        <%--<td>67</td>--%>
                    <%--</tr>--%>
                <%--</c:forEach>--%>

                </tbody>
            </table>
            <hr>
            <div class="justify-content-center">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <a class="page-link" href="#">&laquo</a>
                        </li>
                        <%--<li class="page-item"><a class="page-link" href="/free/list?page=2">2</a></li>--%>
                        <%--<c:forEach items="${boards}" var="board">--%>
                        <%--<li class="page-item"><a class="page-link" href="/free/list">${board.page}</a></li>--%>
                        <%--</c:forEach>--%>
                        <li class="page-item">
                            <a class="page-link" href="#">&raquo</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <%--<div class="justify-content-center">--%>
                <%--<nav aria-label="Page navigation example">--%>
                    <%--<ul class="pagination">--%>
                        <%--<li class="page-item disabled">--%>
                            <%--<a class="page-link" href="#">&laquo</a>--%>
                        <%--</li>--%>
                        <%--<li class="page-item"><a class="page-link" href="/free/list">1</a></li>--%>
                        <%--<li class="page-item"><a class="page-link" href="#">2</a></li>--%>
                        <%--<li class="page-item"><a class="page-link" href="#">3</a></li>--%>
                        <%--<li class="page-item">--%>
                            <%--<a class="page-link" href="#">&raquo</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</nav>--%>
            <%--</div>--%>
            <div>
                <button type="button" class="btn btn-outline-dark"><a href="/free/write"
                                                                      style="text-decoration: none; color: black">글쓰기</a>
                </button>
            </div>
            <form id="custom-search-form" class="form-search form-horizontal justify-content-center"
                  style="margin-top: 15px;">
                <div class="input-append span12">
                    <input type="text" class="search-query" placeholder="검색">
                    <button type="submit" class="btn"><i class="icon-search"></i></button>
                </div>
            </form>
        </div>
        <div class="col-sm-2 sidenav">
        </div>
    </div>

    <footer class="container-fluid text-right">
        <p>counterchord89@gmail.com</p>
    </footer>
</div>
</body>
</html>

