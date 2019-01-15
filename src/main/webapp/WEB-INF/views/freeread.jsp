<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2019-01-09
  Time: 오후 4:08
  To change this template use File | Settings | File Templates.
--%>
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

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {
            height: 450px
        }

        /* Set gray background color and 100% height */

        /* Set black background color, white text and some padding */
        footer {
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

<div class="container-fluid text-center">
    <div class="row content">
        <div class="col-sm-2 sidenav">
        </div>

        <div class="col-sm-8">
            <form style="text-align: left">
                <div class="container">
                    <label style="margin-top: 15px">Title</label>
                    <div class="well well-sm" style="margin-bottom: 10px; margin-top:5px; ">${board.title}
                    </div>
                    <div>
                    <label style="margin-top: 10px;">Author</label>
                    <div class="well well-sm" style="width: 15%;">${board.name} </div>
                    <label style="margin-top: 10px;">Written Date</label>
                    <div class="well well-sm" style="width: 15%;">${board.regDate} </div>
                    <label style="margin-top: 10px;">View</label>
                    <div class="well well-sm" style="width: 15%;">${board.readCount} </div>
                    </div>


                    <div class="well well-lg">
                        ${board.content}
                    </div>
                </div>
            </form>

            <div>
                <button type="button" class="btn btn-outline-dark" style="margin-top: 25px; margin-bottom: 25px;"><a
                        href="/free/modify" style="text-decoration: none; color: black"> 수정</a>
                </button>
                <button type="button" class="btn btn-outline-dark" style="margin-top: 25px; margin-bottom: 25px;"><a
                        href="/free/list" style="text-decoration: none; color: black">목록</a></button>
                <button type="button" class="btn btn-outline-dark" style="margin-top: 25px; margin-bottom: 25px;"><a
                        href="/free/delete?id=${board.id}" style="text-decoration: none; color: black">삭제</a></button>

            </div>
        </div>
        <div class="col-sm-2 sidenav">
        </div>
    </div>
</div>

<footer class="container-fluid text-center">
    <p>counterchord89@gmail.com</p>
</footer>

</body>
</html>
