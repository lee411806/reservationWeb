<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- Bootstrap required tag -->

    <!-- Custom -->
    <link rel="stylesheet" type="text/css" href="./basic.css">

    <!-- Bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <link rel="shortcut icon" href="./images/ico/lotte-on.ico">

    <title>로그인</title>
</head>
<body>
<div class="card div-container">
    <!-- 페이지 제목 -->
    <div class="div-page-title">
        <div class="row justify-content-md-center">
            <h1>로그인</h1>
        </div>
    </div>

    <!-- 페이지 내용 -->
    <div class="div-page-contents">
        <!-- 로그인 입력 영역 -->
        <div class="row justify-content-md-center">
            <div class="col-1 div-input-label div-login-label">
                <label for="login-id-input">로그인</label>
            </div>
            <div class="col-4">
                <input type="text" class="form-control" id="login-id-input"/>
            </div>
        </div>

        <!-- 비밀번호 입력 영역 -->
        <div class="row justify-content-md-center">
            <div class="col-1 div-input-label div-login-label">
                <label for="login-password-input">비밀번호</label>
            </div>
            <div class="col-4">
                <input type="text" class="form-control" id="login-password-input"/>
            </div>
        </div>

        <!-- 아이디 저장하기 버튼 -->
        <!-- TODO: checkbox 감싸는 영역에 핸들러 달기 -->
        <div class="row justify-content-md-center">
            <div class="col-3 form-check div-checkbox-member">
                <input class="form-check-input input-checkbox-member" type="checkbox" value="" id="login-id-save-checkbox">
                <label class="form-check-label label-checkbox-member" for="login-id-save-checkbox">
                    아이디 저장하기
                </label>
            </div>
        </div>

        <!-- 로그인 or 회원가입 버튼 -->
        <div class="row justify-content-md-center">
            <div class="col-2">
                <button type="button" class="btn btn-primary btn-block">로그인</button>
            </div>
            <div class="col-2">
                <button type="button" class="btn btn-primary btn-block" onclick="location.href='join.jsp'">회원가입</button>
            </div>
        </div>

        <!-- 아이디, 비밀번호 찾기 버튼 -->
        <div class="row justify-content-md-center div-login-label">
            <div class="col-2 div-member">
                이미 회원이세요?
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col-2 center-block div-login-label div-member">
                아이디 찾기
            </div>
            <div class="col-2 div-login-label div-member">
                비밀번호 찾기
            </div>
        </div>

        <!-- 간편 로그인 -->
        <!-- 네이버, 카카오, 구글, 애플 -->
        <div class="row justify-content-md-center">
            <div class="col-2 div-login-label">
                간편 로그인
            </div>
        </div>

        <div class="row justify-content-md-center">
            <div class="col-1 div-login-label">
                <button class="easy-login-btn">
                    <img src="./images/google-login-icon.png" class="easy-login-icon" alt="구글">
                </button>
            </div>
            <div class="col-1 div-login-label">
                <button class="easy-login-btn">
                    <img src="./images/naver-login-icon.png" class="easy-login-icon" alt="네이버">
                </button>
            </div>
            <div class="col-1 div-login-label">
                <button class="easy-login-btn">
                    <img src="./images/kakao-login-icon.png" class="easy-login-icon" alt="카카오">
                </button>
            </div>
            <div class="col-1 div-login-label">
                <button class="easy-login-btn">
                    <img src="./images/apple-login-icon.png" class="easy-login-icon" alt="애플">
                </button>
            </div>
        </div>

    </div>
</div>
</body>
</html>