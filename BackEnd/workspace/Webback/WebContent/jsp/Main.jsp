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
    <meta name="title" content="���ﴺĮ����">
    <meta name="keywords" content="���ﴺĮ����, ��Į��, ������ǻ�Ͱ���б�, �ΰ����ɼ���Ʈ�����, �ΰ����ɰ���б�, ����ũ, AI, PTech, P-Tech, IBM">
    <meta name="description" content="���ﴺĮ���� ���� ���� ȯ���մϴ�.">
    <meta name="author" content="WATD">
    <!-- open graph -->
    <meta property="og:title" content="���ﴺĮ����">
    <meta property="og:description" content="���ﴺĮ���� ���� ���� ȯ���մϴ�.">
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
    <title>���ﴺĮ����</title>
</head>
<body>
    <!--
        ALL CSS was written by Bootstrap4
    -->
    <header>
        <!-- <div class="header-notice bg-warning">
            <form action="" method="" class="col-xs-1 header-form">
                <select class="form-control form-control-sm" name="select-lang">
                    <option value="ko">�ѱ���</option>
                    <option value="en">English</option>
                    <option value="jp">������</option>
                </select>
            </form>
            <p class="text-center notice-text">
                �� ����Ʈ�� ũ�ҿ� ����ȭ�Ǿ� �ֽ��ϴ�.
            </p>
        </div> -->
        <!-- ũ�ҿ� ����ȭ�Ǿ� �ִٴ� ���� -->
        <!-- �� �±��� ���̰� ����� ����� �ּ�ó��, ���� ���� ��� Ž���� -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand">���ﴺĮ����</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="nav navbar-nav">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">�б��Ұ�</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item" onclick = "schintro()">�б��Ұ�</a>
                        <a href="" class="dropdown-item" onclick = "principal()">�б���Ұ�</a>
                        <a href="" class="dropdown-item" onclick = "shcsymbol()">�б���¡</a>
                        <a href="" class="dropdown-item" onclick = "schfeat()">�б�Ư¡</a>
                        <a href="" class="dropdown-item" onclick = "newcolor()">��Į���?</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">�б���Ȱ</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item" onclick = "admission()">2020�⵵ ���оȳ�</a>
                        <a href="" class="dropdown-item" onclick = "transfer()">���оȳ�</a>
                        <!-- <a href="#" class="dropdown-item" onclick = "">��������</a> ��� ����-->
                        <a href="" class="dropdown-item" onclick = "curprocess()">��������</a>
                        <a href="" class="dropdown-item" onclick = "curactivity()">����Ȱ��</a>
                        <a href="" class="dropdown-item" onclick = "external()">�ܺ�Ȱ��</a>
                        <a href="" class="dropdown-item" onclick = "qualifi()">�ڰݰ���</a>
                        <a href="" class="dropdown-item" onclick = "academic()">�л�����</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">�б�����</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item">��к���</a>
                        <a href="" class="dropdown-item">��������</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Q&amp;A</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item">�ԡ����� Q&amp;A</a>
                        <a href="" class="dropdown-item">��Ÿ Q&amp;A</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="../html/register.html" class="nav-link">            <!-- �ӽ� �ּ�, �ݵ�� �����ٶ� -->
                    <svg class="bi bi-gear" width="1.2em" height="1.2em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10.837 3.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 016.377 5.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 01-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 011.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 012.692 1.115l.094.319c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 012.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 011.115-2.693l.319-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 01-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159a1.873 1.873 0 01-2.693-1.115l-.094-.319zm-2.633-.283c.527-1.79 3.064-1.79 3.592 0l.094.319a.873.873 0 001.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 00.52 1.255l.319.094c1.79.527 1.79 3.064 0 3.592l-.319.094a.873.873 0 00-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 00-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 00-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 00-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 00.52-1.255l-.16-.292c-.892-1.64.901-3.433 2.541-2.54l.292.159a.873.873 0 001.255-.52l.094-.319z" clip-rule="evenodd"></path>
                        <path fill-rule="evenodd" d="M10 7.754a2.246 2.246 0 100 4.492 2.246 2.246 0 000-4.492zM6.754 10a3.246 3.246 0 116.492 0 3.246 3.246 0 01-6.492 0z" clip-rule="evenodd"></path>
                    </svg>    <!-- ���� ������ -->
                    ����
                </a></li>      <!-- ���� ������ �ּ� -->
                <li class="nav-item"><a href="../html/Login.html" class="nav-link" >    <!-- �ӽ� �ּ�, �ݵ�� �����ٶ� -->
                    <svg class="bi bi-lock register" width="1.2em" height="1.2em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M13.655 9H6.333c-.264 0-.398.068-.471.121a.73.73 0 00-.224.296 1.626 1.626 0 00-.138.59V15c0 .342.076.531.14.635.064.106.151.18.256.237a1.122 1.122 0 00.436.127l.013.001h7.322c.264 0 .398-.068.471-.121a.73.73 0 00.224-.296 1.627 1.627 0 00.138-.59V10c0-.342-.076-.531-.14-.635a.658.658 0 00-.255-.237 1.123 1.123 0 00-.45-.128zm.012-1H6.333C4.5 8 4.5 10 4.5 10v5c0 2 1.833 2 1.833 2h7.334c1.833 0 1.833-2 1.833-2v-5c0-2-1.833-2-1.833-2zM6.5 5a3.5 3.5 0 117 0v3h-1V5a2.5 2.5 0 00-5 0v3h-1V5z" clip-rule="evenodd"></path>
                    </svg>   <!-- �α��� ������ -->
                    �α���
                </a></li>    <!-- �α��� ������ �ּ� -->
            </ul>
        </nav>
    </header>
    <main>
        <div class="main-video">
            <video controls muted autoplay loop poster="img/video/main-video">
                <source src="img/video/main-video.mp4" type="video/mp4">
            </video>
            <div class="bg-transparent video-hover text-white">
                <h1>���ﴺĮ���� ���� ����</h1>
                <h1>ȯ���մϴ�</h1>
                <p><a href="#" class="btn btn-info mtn-md">�б� �Ұ�</a></p>
            </div>
        </div>
        <div class="container mb-2">
            <div class="card-deck">
                <div class="card">
                    <div class="card-header">
                        Q&amp;A
                        <!--�Խ��� �ֱ����� DB �����ؼ� 5�� ���� -->
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
                        �������� �޴�
                        DB���� ���������� �ҷ��� ��
                        <div class="text-left"><a href="�ּ�">�������� ����</a></div>
                        ���� �ҷ����� �˴ϴ�.
                    -->
                        <!--�Խ��� �ֱ����� DB �����ؼ� 5�� ���� -->
                    <div class="card-header">
                        ��������
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
                        ���� ���л� ��
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">54</h1>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        ���� ���л� ��
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">52</h1>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        ���� ������ ��
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

