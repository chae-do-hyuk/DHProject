<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owner/semi_store_css/Owner_Sales_Month_Board.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owner/semi_store_css/main.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owner/semi_store/bootstrap.min.css">
    <title>매출 관리</title>

</head>
<body>
    <aside class="aside">
        <div class="aside_top2"><a href="${ pageContext.servletContext.contextPath }/main" 
        style="text-decoration: none;
   		color: black;
    	font-style: normal;
    	font-weight: bolder;}"> babmokja </a></div>
        <div class="aside_top">내 업소 관리 </div>
        <div class="aside_top3"><a href="${ pageContext.servletContext.contextPath }/menu/all">메뉴 관리</a></div>
        <div class="aside_top4"><a href="${ pageContext.servletContext.contextPath }/owner/sales/day">매출 관리</a></div>
    </aside>

    <section class="section">

      <div class="row">
            <span class="col-2 menu-item menu-item-selected">
                <img src="${ pageContext.servletContext.contextPath }/resources/image/owner/item1.svg" />
                &nbsp;&nbsp;&nbsp;<a href="${ pageContext.servletContext.contextPath }/order/confirm">주문확인</a>
              </span>
              <span class="col-2 menu-item  ">
                <img src="${ pageContext.servletContext.contextPath }/resources/image/owner/item2.png" />
                &nbsp;&nbsp;&nbsp; 내 정보관리
              </span>
              <span class="col-2 menu-item">
                <img src="${ pageContext.servletContext.contextPath }/resources/image/owner/item3.png" />
                
                &nbsp;&nbsp;&nbsp; <a class="text-dark" href="${ pageContext.servletContext.contextPath }/menu/all">내 업소 관리</a>
              </span>
              <span class="col-2 menu-item">
                <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/image/owner/computer.png" />
                &nbsp;&nbsp;&nbsp;<a class="text-dark" href="${ pageContext.servletContext.contextPath }/owner/delivery">PC주문현황</a>
              </span>
  
              <span class="col-2 menu-item">
                  <span class="imagesize"><img src="${ pageContext.servletContext.contextPath }/resources/image/owner/item4.svg" /></span>
                  &nbsp;&nbsp;&nbsp; <a class="text-dark" href="../../semi_board (업체용 게시판)/company/Owner_Comment_Board.html">리뷰관리</a>
                </span>
  
                <span class="col-2 menu-item">
                  <img src="${ pageContext.servletContext.contextPath }/resources/image/owner/item4.svg" />
                  &nbsp;&nbsp;&nbsp; <a class="text-dark" href="${ pageContext.servletContext.contextPath }/suggestion/list">1:1 문의하기</a>
                </span>
        </div>


        <div class="section_top">
            
       
        <div class="button01"><a href="${ pageContext.servletContext.contextPath }/owner/sales/day">오늘</a></div>
        <div class="button02">월별</div>

       
        <div class="space"></div>

        <!-- <div class="table_box"> -->

            <table> 
                <thead>
                    <tr>
                
                        <th class="section_contest section_contest_2">해당 월</th>
                        <th class="section_contest section_contest_3">총 주문건수</th>
                        <th class="section_contest section_contest_4">일별 판매금액</th>
                    </tr>
                </thead>
                <tbody>
					<c:forEach items="${requestScope.salesMonthList }" var = "monthSales">
                    <tr>
                      
                        <td class="section_contest_first section_contest_2" name="month">${monthSales.month } 월</td>
                        <td class="section_contest_first section_contest_3" name="count">${monthSales.count } 건</td>
                        <td class="section_contest_first section_contest_4" name="totalPrice">${monthSales.totalPrice }원</td>
                    </tr>
					</c:forEach>
                 
                </tbody>
            </table>


            <div class="center clearfix">
                <div class="button button_space">1</div>
                <div class="button button_space">2</div>
                <div class="button button_space">3</div>
                <div class="button button_space">4</div>
                <div class="button">5</div>
 <!--                <p class="total">-월달 총 [---,---,---]원<br>판매 하셨습니다.</p> -->
            </div>
            
        </div>
    </section>

    <footer>
        <address class="footer"> Copyright &copy; BABMOKJA All Right Reserved.</address>
    </footer>
</body>
</html>