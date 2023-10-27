<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- Bootstrap required tag -->

    <!-- Custom -->
    <link rel="stylesheet" type="text/css" href="./basic.css">



    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <link rel="shortcut icon" href="./images/ico/lotte-on.ico">

    <title>회원가입</title>
</head>
<body>

<div class="card div-container">
    <!-- 페이지 제목 -->
    <div class="div-page-title">
        <div class="row justify-content-md-center">
            <h1>회원가입</h1>
        </div>
    </div>

    <!-- 페이지 내용 -->
    <div class="div-page-contents">
        <!-- 아이디 입력 영역 -->
        <div class="row justify-content-md-center">
            <div class="col-2 div-input-label">
                <label for="join-id-input">아이디</label>
            </div>
            <div class="col-3">
                <input type="text" class="form-control" id="join-id-input"/>
            </div>
            <div class="col-2">
                <button type="button" class="btn btn-primary btn-block">아이디 확인</button>
            </div>
        </div>

        <!-- 비밀번호 입력 영역 -->
        <div class="row justify-content-md-center">
            <div class="col-2 div-input-label">
                <label for="join-password-input">비밀번호</label>
            </div>
            <div class="col-5">
                <input type="text" class="form-control" id="join-password-input"/>
            </div>
        </div>


        <!-- 이름 입력 영역 -->
        <div class="row justify-content-md-center">
            <div class="col-2 div-input-label">
                <label for="join-name-input">이름</label>
            </div>
            <div class="col-5">
                <input type="text" class="form-control" id="join-name-input"/>
            </div>
        </div>

        <!-- 이메일 입력 영역 -->
        <div class="row form-group  justify-content-md-center">
            <div class="col-2 div-input-label">
                <label for="join-email-input">이메일</label>
            </div>
            <div class="col-5">
                <input type="email" class="form-control" id="join-email-input" aria-describedby="join-email-help" />
                <small id="join-email-help" class="form-text text-muted"></small>
            </div>
        </div>

        <!-- 회원가입 버튼 영역 -->
        <div class="row justify-content-md-center">
            <div class="col-4">
                <button type="button" class="btn btn-primary btn-block" onclick="location.href='login.jsp'">회원가입</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>