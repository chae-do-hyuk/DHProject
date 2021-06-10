<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/owner/semi_board/Owner_Comment_Write_Board.css">
    <link rel="stylesheet" href="resources/css/owner/semi_board/main.css">
    <link rel="stylesheet" href="resources/css/owner/semi_board/bootstrap.min.css">

    <title>Document</title>
</head>
<body>
    <aside class="aside">
        <div class="aside_top2">BABMOKJA </div>
        <div class="aside_top">업체 댓글달기 </div>
    </aside>
  
    <section id="section">

        <div class="row">
          <span class="col-2 menu-item menu-item-selected">
            <img src="resources/image/owner/semi_board/item1.svg" />
            &nbsp;&nbsp;&nbsp;주문확인
          </span>
          <span class="col-2 menu-item  ">
            <img src="resources/image/owner/semi_board/item2.png" />
            &nbsp;&nbsp;&nbsp; 내 정보관리
          </span>
          <span class="col-2 menu-item">
            <img src="resources/image/owner/semi_board/item3.png" />
            
            &nbsp;&nbsp;&nbsp; <a class="text-dark" href="../../semi_board_sales/company/Owner_Sales_day_Board.html">내 업소 관리</a>
          </span>
          <span class="col-2 menu-item">
            <img class="img-fluid" src="resources/image/owner/semi_board/computer.png" />
            &nbsp;&nbsp;&nbsp;<a class="text-dark" href="../../front_semi_store/views/delivery.html">pc주문현황</a>
          </span>

          <span class="col-2 menu-item">
              <span class="imagesize"><img src="resources/image/owner/semi_board/item4.svg" /></span>
              &nbsp;&nbsp;&nbsp; <a class="text-dark" href="../company/Owner_Comment_Board.html">리뷰관리</a>
            </span>

            <span class="col-2 menu-item">
              <img src="resources/image/owner/semi_board/item4.svg" />
              &nbsp;&nbsp;&nbsp; <a class="text-dark" href="../company/Owner_Seggestion_Board.html">1:1 문의하기</a>
            </span>
          </div>
        <!-- 버튼 -->

        <div class="wrap">
          <div class="gap">
            <div class="content">
              <div class="title">
                <h2>글제목 예시입니다.</h2>
              </div>
              <div class="small-title">
                <p>글쓴이 <span>| 2021.04.21 11:11:11</span></p>
              </div>
              <div class="under-line"></div>
              <p class="container">안녕하세요 ooo입니다. 이런이런 사연이 있었는데 건의를 할려고 댓글을 남깁니다.</p>
              <div class="coment-count">
                <p>댓글 1개</p>
              </div>
              <div class="under-line"></div>
              <div class="coment clearfix">
                <div class="name">관리자</div>
                <div class="text-wrap">답변 댓글 예시입니다.</div>
                <div class="date-wrap">2021.04.21 11:11:11</div>
              </div>
              <div class="under-line line-gap"></div>
              <div class="under-line"></div>
              <form action="#" name="asd" method="get" class="clearfix">
                <div class="name">관리자</div>
                <textarea name="" id="" cols="30" rows="10"></textarea>
                <button><a href="Owner_Comment_Board.html">댓글작성</a></button>
              </form>
              <div class="under-line"></div>

            </div>
          </div>
        </div>


      </section>


    <footer>
        <address class="footer"> Copyright &copy; BABMOKJA All Right Reserved.</address>
    </footer>
</body>
</html>