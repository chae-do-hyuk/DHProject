<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>사장님 메인 사이트</title>

    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owner/semi_store/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owner/semi_store/common.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owner/semi_store/button.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owner/semi_store/main_store.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<div class="header">
            <span>babmokja</span>
            <li id="qus_btn"><a href="${ pageContext.servletContext.contextPath }//suggestion/list">1대1 문의하기</a></li>
            <li id="info_enroll"><a href="../../semi_board/company/sign_up_info.html"> 입점 안내</a></li>
            <p>사장님 사이트</p>
    </div>

        <div class="wrap">
            <div class="main_menu">

                <li><a href="${ pageContext.servletContext.contextPath }/order/confirm"><img src="${ pageContext.servletContext.contextPath }/resources/image/owner/semi_store/주문확인.png" alt="주문확인">주문확인</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/"><img src="${ pageContext.servletContext.contextPath }/resources/image/owner/semi_store/내정보관리.png" alt="내정보관리">내 정보관리</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/menu/all"><img src="${ pageContext.servletContext.contextPath }/resources/image/owner/semi_store/내업소관리.png" alt="내업소관리">내 업소관리</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/owner/delivery"><img src="${ pageContext.servletContext.contextPath }/resources/image/owner/semi_store/PC주문관리.png" alt="PC주문관리">PC 주문관리</a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/owner/move/comment"><img src="${ pageContext.servletContext.contextPath }/resources/image/owner/semi_store/리뷰관리.png" alt="리뷰관리">리뷰관리</a></li>

            </div>

            <div class="side_word"> 
                <div class="word1">배달,픽업,자리예약까지 한번에!</div>
                <div class="word2">강남지역 주문 플랫폼</div>
                <div class="word3">밥묵자</div>
            </div>

            <c:if test="${ empty sessionScope.ownerDTO }">
            <form action="${ pageContext.servletContext.contextPath }/owner/login" method="post" >
            <div class="login">
                <input type="text" class="id" name="memberId" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;아이디를 입력해주세요"><br>
                <input type="password" class="pw" name="pw" placeholder="&nbsp;&nbsp;&nbsp;비밀번호를 입력해주세요"><br>

                <button type="submit" id="login_btn">로그인</button>
                <div class="sign_up_btn">
                    <li><a href="${ pageContext.servletContext.contextPath }/owner/move/signin">회원가입</a></li>
                </div>

            </div>
                </form>
                </c:if>
                
                
            <div class="login">
            <c:if test="${ !empty sessionScope.ownerDTO }">
            	<br>
            	<h4 style="font-size:20px; font-weight:bold">&nbsp;&nbsp;&nbsp;<c:out value="${ sessionScope.ownerDTO.name }"/>님 환영합니다.</h4>
            	<br>
            	<button type="submit" id="login_btn" onclick="location.href='${ pageContext.servletContext.contextPath }/owner/modify'">정보수정</button>
                <div class="sign_up_btn" style=>
                    <li><a href="${ pageContext.servletContext.contextPath }/owner/logout">로그아웃</a></li>
                </div>
            
            </c:if>
            </div>
        
        </div>

       <script>

           $(document).ready(function(){
               $('.header#info_enroll').click(function(){
                    alert("로그인 후 이용해주세요!");
               });
           });
       </script>
	

</body>
</html>