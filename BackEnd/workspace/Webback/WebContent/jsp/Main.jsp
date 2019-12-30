<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.Statement" %>
<%@page import="connect.ConnectionManager" %>
<%@page import="java.sql.*" %>
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
    <script type = "text/javascript" src="../js/LobbySrc.js"></script>
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
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="../html/register.html" class="nav-link">            <!-- 임시 주소, 반드시 수정바람 -->
                    <svg class="bi bi-gear" width="1.2em" height="1.2em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10.837 3.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 016.377 5.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 01-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 011.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 012.692 1.115l.094.319c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 012.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 011.115-2.693l.319-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 01-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159a1.873 1.873 0 01-2.693-1.115l-.094-.319zm-2.633-.283c.527-1.79 3.064-1.79 3.592 0l.094.319a.873.873 0 001.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 00.52 1.255l.319.094c1.79.527 1.79 3.064 0 3.592l-.319.094a.873.873 0 00-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 00-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 00-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 00-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 00.52-1.255l-.16-.292c-.892-1.64.901-3.433 2.541-2.54l.292.159a.873.873 0 001.255-.52l.094-.319z" clip-rule="evenodd"></path>
                        <path fill-rule="evenodd" d="M10 7.754a2.246 2.246 0 100 4.492 2.246 2.246 0 000-4.492zM6.754 10a3.246 3.246 0 116.492 0 3.246 3.246 0 01-6.492 0z" clip-rule="evenodd"></path>
                    </svg>    <!-- 가입 아이콘 -->
                    가입
                </a></li>      <!-- 가입 페이지 주소 -->
                <li class="nav-item"><a href="../html/Login.html" class="nav-link" >    <!-- 임시 주소, 반드시 수정바람 -->
                    <svg class="bi bi-lock register" width="1.2em" height="1.2em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M13.655 9H6.333c-.264 0-.398.068-.471.121a.73.73 0 00-.224.296 1.626 1.626 0 00-.138.59V15c0 .342.076.531.14.635.064.106.151.18.256.237a1.122 1.122 0 00.436.127l.013.001h7.322c.264 0 .398-.068.471-.121a.73.73 0 00.224-.296 1.627 1.627 0 00.138-.59V10c0-.342-.076-.531-.14-.635a.658.658 0 00-.255-.237 1.123 1.123 0 00-.45-.128zm.012-1H6.333C4.5 8 4.5 10 4.5 10v5c0 2 1.833 2 1.833 2h7.334c1.833 0 1.833-2 1.833-2v-5c0-2-1.833-2-1.833-2zM6.5 5a3.5 3.5 0 117 0v3h-1V5a2.5 2.5 0 00-5 0v3h-1V5z" clip-rule="evenodd"></path>
                    </svg>   <!-- 로그인 아이콘 -->
                    로그인
                </a></li>    <!-- 로그인 페이지 주소 -->
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

