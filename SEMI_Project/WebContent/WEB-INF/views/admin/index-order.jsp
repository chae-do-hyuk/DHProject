<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <title>주문 내역</title>
  
  <link href="/SEMI_Project/resources/css/admin/bootstrap.min.css" rel="stylesheet">
  <link href="/SEMI_Project/resources/css/admin/main.css" rel="stylesheet">
  
 </head>
  <body>
    
    <div class="container-fluid root">
      <div class="row main">
        <nav class="col-md-2 d-none d-md-block bg-yellow sidebar sidebar-bapmakja">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item logo">
                
                <a href="${pageContext.servletContext.contextPath}/link/admin/login" class="link-dark">babmokja</a>
              </li>
              <li class="nav-item title">
                주문 내역  
              </li>
            </ul>
            
            
          </div>
        </nav>
        
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          
          <div class="row">
            <span class="col-2 menu-item menu-item-selected  ">
              <img src="/SEMI_Project/resources/image/admin/item1.png" />
              &nbsp;&nbsp;&nbsp; 주문확인
            </span>
            <span class="col-2 menu-item  ">
              <a href="${pageContext.servletContext.contextPath}/admin/customer" class="link-dark"><img src="/SEMI_Project/resources/image/admin/item2.png" />
                &nbsp;&nbsp;&nbsp; 고객관리</a>
            </span>
            <span class="col-2 menu-item">
              <a href="${pageContext.servletContext.contextPath}/admin/owner" class="link-dark"><img src="/SEMI_Project/resources/image/admin/item3.png" />
              
                &nbsp;&nbsp;&nbsp; 업소관리</a> 
            </span>
            <span class="col-2 menu-item">
              <a href="${pageContext.servletContext.contextPath}/admin/customer/board" class="link-dark"><img src="/SEMI_Project/resources/image/admin/item4.png" />
                &nbsp;&nbsp;&nbsp;  게시판</a>
            </span>
          </div>
          
          <br>
          <br>
          <br>
          
          <div class="row">
            <div class="table-responsive col-10 offset-md-1">
              <form id="loginForm" action="${ pageContext.servletContext.contextPath }/admin/search" method="get">
	              <div class="row">
	                
	                
	                <c:choose>
				    <c:when test="${ !empty requestScope.searchValue }">
   					    <div class="col-3">
	                  주문번호,고객명,가게명
	                  <select class="form-select" id="searchCondition" name="searchCondition" >
	                    <option value="orderNo" <c:if test="${requestScope.searchCondition eq 'orderNo'}">selected</c:if>>주문번호</option>
		                <option value="cusName"<c:if test="${requestScope.searchCondition eq 'cusName'}">selected</c:if>>고객명</option>
		                <option value="stoName"<c:if test="${requestScope.searchCondition eq 'stoName'}">selected</c:if>>가게명</option>
	                  </select>
	                </div>
	                <div class="col-3">
	                  주문번호,고객명,가게명 입력
	                  <input class="form-control" type="search" id="searchValue" name="searchValue" value="${ requestScope.searchValue }" >
	                </div>
				    </c:when>
				    <c:otherwise>
						    <div class="col-3">
		                  주문번호,고객명,가게명
		                  <select class="form-select" id="searchCondition" name="searchCondition" >
		                    <option value="orderNo">주문번호</option>
		                    <option value="cusName">고객명</option>
		                    <option value="stoName">가게명</option>
		                  </select>
		                </div>
		                <div class="col-3">
		                  주문번호,고객명,가게명 입력
		                  <input class="form-control" type="search" id="searchValue" name="searchValue" >
		                </div>
				    </c:otherwise>
				</c:choose>
				
				
	                
	                
	                
	                <div class="col-3">
	                  <br>
	                  <button type="submit" class="btn btn-outline-secondary">검색하기</button>
	                </div>
	              </div>
             </form> 
              
              
              <br>
              <table class="table table-striped table-sm  text-center">
                <thead>
                  <tr>
                    <th>주문번호</th>
                    <th>고객명</th>
                    <th>가게명</th>
                    <th>주문일시</th>
                    <th>가격</th>
                    <th>전화번호(업체)</th>
                    <th>전화번호(고객)</th>
                    <th>상세보기</th>
                  </tr>
                </thead>
                <tbody>
                  
                  	<c:forEach var="board" items="${ requestScope.orderList }">
					<tr>
						<td><c:out value="${ board.orderNum }"/></td>
						<td><c:out value="${ board.cusName }"/></td>
						<td><c:out value="${ board.stoName }"/></td>
						<td><c:out value="${ board.orDate }"/></td>
						<td><c:out value="${ board.price }"/></td>
						<td><c:out value="${ board.cusPhone }"/></td>
						<td><c:out value="${ board.stoPhone }"/></td>
						<td><a href="${pageContext.servletContext.contextPath}/admin/order/detail?ordernum=${ board.orderNum }"  class="link-dark">상세보기</a></td>
					</tr>
					</c:forEach>
                </tbody>
              </table>
              <br>
              <div class="text-center">
           
                	
                <c:choose>
			    <c:when test="${ empty requestScope.searchValue }">
				    <button id="startPage" class="btn btn-warning"><<</button>
	
					<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
						<button class="btn btn-warning" disabled><</button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
						<button class="btn btn-warning" id="prevPage"><</button>
					</c:if>
		
					<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
						<c:if test="${ requestScope.pageInfo.pageNo eq p }">
							<button class="btn btn-warning" disabled><c:out value="${ p }"/></button>
						</c:if>
						<c:if test="${ requestScope.pageInfo.pageNo ne p }">
							<button class="btn btn-warning" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
						</c:if>
					</c:forEach>
					
					<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
						<button class="btn btn-warning" disabled>></button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
						<button class="btn btn-warning" id="nextPage">></button>
					</c:if>
					
					<button class="btn btn-warning" id="maxPage">>></button> 
			     </c:when>
			    <c:otherwise>
   				    <button class="btn btn-warning" id="searchStartPage"><<</button>
	
					<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
						<button class="btn btn-warning" disabled><</button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
						<button class="btn btn-warning" id="searchPrevPage"><</button>
					</c:if>
		
					<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
						<c:if test="${ requestScope.pageInfo.pageNo eq p }">
							<button class="btn btn-warning" disabled><c:out value="${ p }"/></button>
						</c:if>
						<c:if test="${ requestScope.pageInfo.pageNo ne p }">
							<button class="btn btn-warning" onclick="seachPageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
						</c:if>
					</c:forEach>
					
					<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
						<button class="btn btn-warning" disabled>></button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
						<button class="btn btn-warning" id="searchNextPage">></button>
					</c:if>
					
					<button class="btn btn-warning" id="searchMaxPage">>></button> 
			    </c:otherwise>
			</c:choose>   
              </div>
              
            </div>
          </div>
        </main>
      </div>
      
      <div class="footer text-right align-middle" style="background-color:#EF9309;">
        <a class="text-dark footer-text text-decoration-none">Copyright &copy; BABMOKJA All Right Reserved.&nbsp;</a>
      </div>
      
    </div>
    
    <script>
		const link = "${ pageContext.servletContext.contextPath }/admin/order";
		const searchLink = "${ pageContext.servletContext.contextPath }/admin/search";
		const detail = "${ pageContext.servletContext.contextPath }/admin/order/detail";
			
		if(document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function() {
				location.href = link + "?currentPage=1";
			}
		}
		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }";
			}
		}
		

		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }";
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.pageInfo.maxPage }";
			}
		}
		
		if(document.getElementById("searchStartPage")) {
			const $searchStartPage = document.getElementById("searchStartPage");
			$searchStartPage.onclick = function() {
				location.href = searchLink + "?currentPage=1&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
			}
		}
		
		if(document.getElementById("searchPrevPage")) {
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function() {
				location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
			}
		}
		
		if(document.getElementById("searchNextPage")) {
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function() {
				location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
			}
		}
		
		if(document.getElementById("searchMaxPage")) {
			const $searchMaxPage = document.getElementById("searchMaxPage");
			$searchMaxPage.onclick = function() {
				location.href = searchLink + "?currentPage=${ requestScope.pageInfo.maxPage }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
			}
		}
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}
		function seachPageButtonAction(text) {
			location.href = searchLink + "?currentPage=" + text + "&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	</script>
  </body></html>