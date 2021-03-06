<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BoB</title>
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/customer/main.css">
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/customer/reset.css"
	type="text/css" rel="stylesheet">
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/customer/button.css"
	type="text/css" rel="stylesheet">
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/customer/common_ah.css"
	type="text/css" rel="stylesheet">
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/customer/store_list.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3da12a7b5e4b9173c9bc28498213744b&libraries=services"></script>
<script>
function pagePickUp(){
	const root_url = "${ pageContext.servletContext.contextPath }/store/list";
	const url = new URL(document.URL);
	const urlType = "&type=1";
	
	const urlCate = url.searchParams.get("cate");
	const urlOrder = url.searchParams.get("order");
	const urlCurPage = url.searchParams.get("currentPage");
	
	var move_url = root_url + "?cate=" + urlCate + urlType + "&order=" + urlOrder + "&currentPage=" + urlCurPage;
	
	location.href = move_url;
}

function pageDeliver(){
	const root_url = "${ pageContext.servletContext.contextPath }/store/list";
	const url = new URL(document.URL);
	const urlType = "&type=2";
	
	const urlCate = url.searchParams.get("cate");
	const urlOrder = url.searchParams.get("order");
	const urlCurPage = url.searchParams.get("currentPage");
	
	var move_url = root_url + "?cate=" + urlCate + urlType + "&order=" + urlOrder + "&currentPage=" + urlCurPage;
	
	location.href = move_url;
}

function init(){
	const url = new URL(document.URL);
	var pick = document.getElementById("btn_pickUp");
	var deliver = document.getElementById("btn_deliver");
	
	const selectedType = url.searchParams.get("type");
	
	if(selectedType == "1"){
		console.log("debug 1");
		// ?????? ????????? ?????? css ??????
		pick.classList.add("on");
		// ?????? ????????? ?????? ?????? css ??????
		deliver.classList.add("off");
	}
	else if(selectedType == "2"){
		console.log("debug 2");
		// ?????? ????????? ?????? ?????? css ??????
		pick.classList.add("off");
		// ?????? ????????? ?????? css ??????
		deliver.classList.add("on");
	}
}

function click_rest(id){
	const tr = document.getElementById(id);
	const tr_address = document.getElementById("name_" + id);
	const address = tr_address.innerHTML ;
	
	kakao_api(address);
}

function kakao_api(address){
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};

	var map = new kakao.maps.Map(container, options);
	
	// ??????-?????? ?????? ????????? ???????????????
	var geocoder = new kakao.maps.services.Geocoder();

	// ????????? ????????? ???????????????	
	geocoder.addressSearch(address, function(result, status) {

		// ??????????????? ????????? ??????????????? 
			if (status === kakao.maps.services.Status.OK) {

			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

			// ??????????????? ?????? ????????? ????????? ???????????????
			var marker = new kakao.maps.Marker({
				map: map,
				position: coords
			});

			// ????????? ????????? ??????????????? ?????? ????????? ??????????????????
			map.setCenter(coords);
		} 
	});
}

function detailPage(){
	
	const root_url = "${ pageContext.servletContext.contextPath }/store/detail";
	
	const url = new URL(document.URL);
	
	const urlStoreId = url.searchParams.get("storeId");
	
	var move_url = root_url + "?storeId=" + urlStoreId;
	
	location.href = move_url;
	
}

function orderChange(order){
	
	const root_url = "${ pageContext.servletContext.contextPath }/store/list";
	const url = new URL(document.URL);
	
	const urlCate = url.searchParams.get("cate");
	const urlType = url.searchParams.get("type");
	
	if(order.selectedIndex == 1) {
		var urlOrder = "&order=congestion"
	} else if(order.selectedIndex == 2) {
		var urlOrder = "&order=star"
	} else if(order.selectedIndex == 3) {
		var urlOrder = "&order=name"
	}
	
	const urlCurPage = "&currentPage=1"
	
	var move_url = root_url + "?cate=" + urlCate +  "&type=" + urlType + urlOrder + urlCurPage;
	
	location.href = move_url;
}
</script>

</head>
<body onload="init();">
	<center>

		<!-- header -->
		<jsp:include page="/WEB-INF/views/common/customer/header.jsp" />

		<!-- body -->
		<div class="body">
			<br>

			<div class="how_eat">
				<span> 
					<button id="btn_pickUp" onclick="pagePickUp()" class="home_eat">??????</button>
				</span> 
				<span>
					<button id="btn_deliver" onclick="pageDeliver()" class="home_eat">??????</button>
				</span> 
				<span>
					<form>
						<select onchange="orderChange(this)" class="acolist">
							<option value="none" hidden="hidden">&nbsp&nbsp??? ????????????/?????????/????????? ??????</option>
							<option value="list_congestion">?????????</option>
							<option value="list_star">??????</option>
							<option value="list_name">??????</option>
						</select>
					</form>
				</span>
			</div>
 
			<div id="map" style="height:700px; border: 5px solid #ffcc00; margin-top: 115px; width: 710px; margin-right: -350px; float: right;"></div>

			<br><br><br><br><br><br>

			<c:forEach var="store" items="${ requestScope.selectedStore }" varStatus="status">
				<div class="store">
					<table>
						<tr>
							<td onclick="click_rest('tr_rest_${status.index}')" id="tr_rest_${status.index}"> 
								<img id="store_photo_choice" src="${ store.photo }">
							</td>
							<td>
								<div class="restaurants-info">
									<div class="restaurant-name" title="????????????">
										<c:out value="${ store.storeName }" />
									</div>
									<div class="congestion" title="?????????">
										<label id="congestion"> <c:out value="${ store.congestion }" /> </label>
									</div>
									<label id="name_tr_rest_${status.index}" disabled></label>
									<div class="stars_reviw">
										<span class="ico-star1">??? <c:out value="${ store.star }" /></span> 
										<span class="break-line"> | </span> 
										<span class="reviw-num">?????? <c:out value="${ store.reviewCnt }" /> ???</span>
									</div>
									<div class="choice">
										<button id="store_choice" onclick="detailPage()" class="store_choice">??????</button>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
			<br>
		</div>

		<%-- ????????? ?????? --%>
		<div class="Number">
			<c:choose>
			    <c:when test="${ empty requestScope.searchValue }">
				    <button id="startPage" class="page_Number"><<</button>
	
					<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
						<button disabled class="page_Number"><</button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
						<button id="prevPage" class="page_Number"><</button>
					</c:if>
		
					<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
						<c:if test="${ requestScope.pageInfo.pageNo eq p }">
							<button disabled class="page_Number"><c:out value="${ p }"/></button>
						</c:if>
						<c:if test="${ requestScope.pageInfo.pageNo ne p }">
							<button onclick="pageButtonAction(this.innerText);" class="page_Number"><c:out value="${ p }"/></button>
						</c:if>
					</c:forEach>
					
					<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
						<button disabled class="page_Number">></button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
						<button id="nextPage" class="page_Number">></button>
					</c:if>
					
					<button id="maxPage" class="page_Number">>></button> 
			     </c:when>
			    <c:otherwise>
   				    <button id="searchStartPage" class="page_Number"><<</button>
	
					<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
						<button disabled class="page_Number"><</button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
						<button id="searchPrevPage" class="page_Number"><</button>
					</c:if>
		
					<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
						<c:if test="${ requestScope.pageInfo.pageNo eq p }">
							<button disabled class="page_Number"><c:out value="${ p }"/></button>
						</c:if>
						<c:if test="${ requestScope.pageInfo.pageNo ne p }">
							<button onclick="seachPageButtonAction(this.innerText);" class="page_Number"><c:out value="${ p }"/></button>
						</c:if>
					</c:forEach>
					
					<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
						<button disabled class="page_Number">></button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
						<button id="searchNextPage" class="page_Number">></button>
					</c:if>
					
					<button id="searchMaxPage" class="page_Number">>></button> 
			    </c:otherwise>
			</c:choose>   
		</div>
		
		<script>
		const root_url = "${ pageContext.servletContext.contextPath }/store/list";
		
		const url = new URL(document.URL);
		const urlCate = url.searchParams.get("cate");
		const urlType = url.searchParams.get("type");
		const urlOrder = url.searchParams.get("order");
		
		const link = root_url + "?cate=" + urlCate + "&type=" + urlType + "&order=" + urlOrder;
		
		if(document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function() {
				location.href = link + "&currentPage=1";
			}
		}
		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link + "&currentPage=${ requestScope.pageInfo.pageNo - 1 }";
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "&currentPage=${ requestScope.pageInfo.pageNo + 1 }";
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "&currentPage=${ requestScope.pageInfo.maxPage }";
			}
		}
		
		function pageButtonAction(text) {
			location.href = link + "&currentPage=" + text;
		}
		
	</script>

		<br>

		<!-- footer -->
		<jsp:include page="/WEB-INF/views/common/customer/footer.jsp" />
	</center>

</body>
</html>