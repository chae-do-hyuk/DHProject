<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owner/semi_board/Owner_Comment_Board.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owner/semi_board/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owner/semi_board/bootstrap.min.css">
    <title>Document</title>

    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
    <aside class="aside">
        <div class="aside_top2">BABMOKJA </div>
        <div class="aside_top">고객 댓글관리 </div>
    </aside>
  
    <section class="section">

        <div class="row">
            <span class="col-2 menu-item menu-item-selected">
              <img src="${pageContext.request.contextPath}/resources/image/owner/semi_board/item1.svg" />
              &nbsp;&nbsp;&nbsp;주문확인
            </span>
            <span class="col-2 menu-item  ">
              <img src="${pageContext.request.contextPath}/resources/image/owner/semi_board/item2.png" />
              &nbsp;&nbsp;&nbsp; 내 정보관리
            </span>
            <span class="col-2 menu-item">
              <img src="${pageContext.request.contextPath}/resources/image/owner/semi_board/item3.png" />
              
              &nbsp;&nbsp;&nbsp; <a class="text-dark" href="../../semi_board_sales/company/Owner_Sales_day_Board.html" >내 업소 관리</a>
            </span>
            <span class="col-2 menu-item">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/image/owner/semi_board/computer.png" />
              &nbsp;&nbsp;&nbsp;<a class="text-dark" href="../../front_semi_store/views/delivery.html">pc주문현황</a>
            </span>

            <span class="col-2 menu-item">
                <span class="imagesize"><img src="${pageContext.request.contextPath}/resources/image/owner/semi_board/item4.svg" /></span>
                &nbsp;&nbsp;&nbsp; <a class="text-dark" href="Owner_Comment_Board.html">리뷰관리</a>
              </span>

              <span class="col-2 menu-item">
                <img src="${pageContext.request.contextPath}/resources/image/owner/semi_board/item4.svg" />
                &nbsp;&nbsp;&nbsp; <a class="text-dark" href="Owner_Seggestion_Board.html">1:1 문의하기</a>
              </span>
        </div>
       
         
    
    <div class="top-1">
        
        <div class="top">
            만족도,제목,고객아이디
            <select class="form-select" >
              <option selected>카테고리 선택</option>
              <option value="1">만족도</option>
              <option value="2">제목</option>
              <option value="3">고객아이디</option>
            </select>
        </div>

        <div class="top">
            만족도,제목,고객아이디 입력
            <input class="form-control" type="text" >
            
        </div>
          
        <div class="top">
            <br>
            <button type="button" class="btn btn-outline-secondary">검색하기</button>
        </div>
    </div>

            <table> 
                <thead>
                    <tr class="contest_top">
                        <th class="section_contest section_contest_1">번호</th>
                        <th class="section_contest section_contest_2">만족도</th>
                        <th class="section_contest section_contest_3">제목</th>
                        <th class="section_contest section_contest_4">고객아이디</th>
                        <th class="section_contest section_contest_5">작성일</th>
                        <th class="section_contest section_contest_6">주문일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="section_contest_first section_contest_1">1</td>
                        <td class="section_contest_first section_contest_2">만족</td>
                        <td class="section_contest_first section_contest_3"><a href="Owner_Comment_Write_Board.html">글제목11</a></td>
                        <td class="section_contest_first section_contest_4">글쓴이</td>
                        <td class="section_contest_first section_contest_5">2021.04.21 11:11:11</td>
                        <td class="section_contest_first section_contest_6">2021.04.21 11:11:11</td>
                    </tr>
                    <tr>
                        <td class="section_contest_two section_contest_1">2</td>
                        <td class="section_contest_two section_contest_2">보통</td>
                        <td class="section_contest_two section_contest_3">글제목22</td>
                        <td class="section_contest_two section_contest_4">글쓴이</td>
                        <td class="section_contest_two section_contest_5">2021.04.21 11:11:11</td>
                        <td class="section_contest_first section_contest_6">2021.04.21 11:11:11</td>
                    </tr>
                    <tr>
                        <td class="section_contest_two section_contest_1">3</td>
                        <td class="section_contest_two section_contest_2">불만족</td>
                        <td class="section_contest_two section_contest_3">글제목33</td>
                        <td class="section_contest_two section_contest_4">글쓴이</td>
                        <td class="section_contest_two section_contest_5">2021.04.21 11:11:11</td>
                        <td class="section_contest_first section_contest_6">2021.04.21 11:11:11</td>
                    </tr>
                    <tr>
                        <td class="section_contest_two section_contest_1">4</td>
                        <td class="section_contest_two section_contest_2">만족</td>
                        <td class="section_contest_two section_contest_3">글제목44</td>
                        <td class="section_contest_two section_contest_4">글쓴이</td>
                        <td class="section_contest_two section_contest_5">2021.04.21 11:11:11</td>
                        <td class="section_contest_first section_contest_6">2021.04.21 11:11:11</td>
                    </tr>
                    <tr>
                        <td class="section_contest_two section_contest_1">5</td>
                        <td class="section_contest_two section_contest_2">만족</td>
                        <td class="section_contest_two section_contest_3">글제목55</td>
                        <td class="section_contest_two section_contest_4">글쓴이</td>
                        <td class="section_contest_two section_contest_5">2021.04.21 11:11:11</td>
                        <td class="section_contest_first section_contest_6">2021.04.21 11:11:11</td>
                    </tr>
                    <tr>
                        <td class="section_contest_two section_contest_1">6</td>
                        <td class="section_contest_two section_contest_2">만족</td>
                        <td class="section_contest_two section_contest_3">글제목66</td>
                        <td class="section_contest_two section_contest_4">글쓴이</td>
                        <td class="section_contest_two section_contest_5">2021.04.21 11:11:11</td>
                        <td class="section_contest_first section_contest_6">2021.04.21 11:11:11</td>
                    </tr>
                    <tr>
                        <td class="section_contest_two section_contest_1">7</td>
                        <td class="section_contest_two section_contest_2">만족</td>
                        <td class="section_contest_two section_contest_3">글제목77</td>
                        <td class="section_contest_two section_contest_4">글쓴이</td>
                        <td class="section_contest_two section_contest_5">2021.04.21 11:11:11</td>
                        <td class="section_contest_first section_contest_6">2021.04.21 11:11:11</td>
                    </tr>
                    
                </tbody>
            </table>

            <div class="center clearfix">
                <div class="button button_space">1</div>
                <div class="button button_space">2</div>
                <div class="button button_space">3</div>
                <div class="button button_space">4</div>
                <div class="button">5</div>

            </div>
            
    </section>

    </div>
    <footer>
        <address class="footer"> Copyright &copy; BABMOKJA All Right Reserved.</address>
    </footer>
</body>
</html>