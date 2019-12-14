<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.Statement" %>
<%@page import="connect.ConnectionManager" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- meta data -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="서울뉴칼라스쿨">
    <meta name="keywords" content="서울뉴칼라스쿨, 뉴칼라, 세명컴퓨터고등학교, 인공지능소프트웨어과, 인공지능고등학교, 피테크, AI, PTech, P-Tech, IBM">
    <meta name="description" content="서울뉴칼라스쿨에 오신 것을 환영합니다.">
    <meta name="author" content="WATD">
    <!-- open graph -->
    <meta property="og:title" content="서울뉴칼라스쿨">
    <meta property="og:description" content="서울뉴칼라스쿨에 오신 것을 환영합니다.">
    <!-- cdn -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>                       <!-- jquery -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <!-- bootstrap css -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">      <!-- bootstrap theme -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <!-- bootstrap js -->
    <script src="js/jquery.counterup.js"></script>
    <script src="js/jquery.waypoints.js"></script>
        <!-- counterup js -->
    <!-- custom css -->
    <link rel="stylesheet" href="../css/main.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500&display=swap" rel="stylesheet">
    <script type = "text/javascript" src="../js/	LobbySrc.js"></script>
    <title>서울뉴칼라스쿨</title>
</head>
<body>
    <!--
        ALL CSS was written by Bootstrap4
    -->
    <header>
        <!-- <div class="header-notice bg-warning">
            <form action="" method="" class="col-xs-1 header-form">
                <select class="form-control form-control-sm" name="select-lang">
                    <option value="ko">한국어</option>
                    <option value="en">English</option>
                    <option value="jp">日本語</option>
                </select>
            </form>
            <p class="text-center notice-text">
                위 사이트는 크롬에 최적화되어 있습니다.
            </p>
        </div> -->
        <!-- 크롬에 최적화되어 있다는 문구 -->
        <!-- 폼 태그의 높이가 상당한 관계로 주석처리, 높이 조절 방법 탐색중 -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand">서울뉴칼라스쿨</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="nav navbar-nav">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">학교소개</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item" onclick = "schintro()">학교소개</a>
                        <a href="" class="dropdown-item" onclick = "principal()">학교장소개</a>
                        <a href="" class="dropdown-item" onclick = "shcsymbol()">학교상징</a>
                        <a href="" class="dropdown-item" onclick = "schfeat()">학교특징</a>
                        <a href="" class="dropdown-item" onclick = "newcolor()">뉴칼라란?</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">학교생활</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item" onclick = "admission()">2020년도 입학안내</a>
                        <a href="" class="dropdown-item" onclick = "transfer()">전학안내</a>
                        <!-- <a href="#" class="dropdown-item" onclick = "">공지사항</a> 잠깐만 보류-->
                        <a href="" class="dropdown-item" onclick = "curprocess()">교육과정</a>
                        <a href="" class="dropdown-item" onclick = "curactivity()">교과활동</a>
                        <a href="" class="dropdown-item" onclick = "external()">외부활동</a>
                        <a href="" class="dropdown-item" onclick = "qualifi()">자격검정</a>
                        <a href="" class="dropdown-item" onclick = "academic()">학사일정</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">학교뉴스</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item">언론보도</a>
                        <a href="" class="dropdown-item">교내뉴스</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Q&amp;A</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item">입·전학 Q&amp;A</a>
                        <a href="" class="dropdown-item">기타 Q&amp;A</a>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="main-video">
            <video controls muted autoplay loop poster="img/video/main-video">
                <source src="img/video/main-video.mp4" type="video/mp4">
            </video>
            <div class="bg-transparent video-hover text-white">
                <h1>서울뉴칼라스쿨에 오신 것을</h1>
                <h1>환영합니다</h1>
                <p><a href="#" class="btn btn-info mtn-md">학교 소개</a></p>
            </div>
        </div>
        <div class="container mb-2">
            <div class="card-deck">
                <div class="card">
                    <div class="card-header">
                        Q&amp;A
                        <!--게시판 최근으로 DB 연결해서 5개 띄우기 -->
                    </div>
                    <div class="card-body">
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                    </div>
                </div>
                <div class="card">
                    <!--
                        공지사항 메뉴
                        DB에서 공지사항을 불러온 후
                        <div class="text-left"><a href="주소">공지사항 내용</a></div>
                        으로 불러오면 됩니다.
                    -->
                        <!--게시판 최근으로 DB 연결해서 5개 띄우기 -->
                    <div class="card-header">
                        공지사항
                    </div>
                    <div class="card-body">
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="card-deck" style="height: 100px;">
                <div class="card">
                    <div class="card-header">
                        현재 입학생 수
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">54</h1>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        현재 재학생 수
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">52</h1>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        현재 졸업생 수
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">0</h1>
                    </div>
                </div>
                <script>
                    $('.counter').counterUp({
                        delay: 10,
                        time: 1000
                    });
                </script>
            </div>
        </div>
    </main>
</body>
</html>

