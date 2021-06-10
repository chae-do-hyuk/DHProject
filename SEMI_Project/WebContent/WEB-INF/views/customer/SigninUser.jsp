<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="js/join_check.js?v=<%=new java.util.Date().getTime()%>"></script>
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link rel="stylesheet" href="resources/css/customer/main.css">
    <link rel="stylesheet" href="resources/css/customer/signin_user.css">
</head>
<body>
   
      <center>
        <jsp:include page="/WEB-INF/views/common/customer/header.jsp" />
      </center>

  
        <div id= 'signin1' style="margin-top: 80px;">
          <h1>밥묵자 간편 회원가입</h1><br>
           <form name="form" id = "form" method="post" action="${ pageContext.servletContext.contextPath }/member/user/signin">
            <table style="margin-top:20px" >
             <tr>
              <th>아이디 </th>
               <td><input type="text" name ="userId" size = "25"style="font-size:13px;border-radius: 10px; border:1px solid gray;">
                 <input type="button" id="overlap" style="display:none;" >
                 <label for="overlap">중복확인</label>
               </td>
             </tr>
           
             <tr>
              <th>비밀번호 </th>
               <td><input type="password" name="userPwd" id="pw" onchange="check_pw()"name="pw" class="chk" size="25" placeholder="영문소문자와숫자만입력하세요" style="padding:4px;font-size:13px;border-radius: 10px;"> </td>
             </tr>
          
             <tr> 
              <th>비밀번호확인 </th>
               <td><input type="password"  name="userPwd" id="pw2"  onchange="check_pw()" name ="pw_ck" class= "chk" size="25" style="padding:4px;font-size:13px;border-radius: 10px;">
                <span id="check" ></span>
               </td>
             </tr>
          
             <tr>
              <th>이 름</th>
                <td><input type="text" id="name"name ="userName" size="25" style="padding:4px;font-size:13px;border-radius: 10px;"> </td>
             </tr>
          
             <tr> 
              <th>주민번호</th>
                <td><input type="text" name ="userNo"size="25"
                       maxlength="13" placeholder="숫자만입력하세요" style="padding:4px;font-size:13px;border-radius: 10px;"></td>
             </tr>

             <tr> 
               <th>휴대전화</th>
                <td><input type="text" name="userPhone" size="25"
                       maxlength="13" placeholder="숫자만입력하세요" style="padding:4px;font-size:13px;border-radius: 10px;"></td>
             </tr>
         
             <tr>
               <th>우편번호</th>
                 <td><input type="text" name="zip" size="25" style="padding:4px;font-size:13px;border-radius: 10px;"> 
                 <button type="button"  style="width:60px; background-color: #ffcc00; border: 1px solid #d9e1e8; height:32px; border-radius: 20px; font-weight: 600; font-size: 15px; cursor: pointer;" id="searchZipCode">검색</button></td>
             </tr>
          
             <tr>
               <th>주소</th>
                <td><input type="text"size="25" name="addr1" style="padding:4px;font-size:13px;border-radius: 10px;" readonly /> </td>
             </tr> 
             <tr>
               <th>상세주소</th>
                 <td><input type="text"size="25" name="addr2" style="padding:4px;font-size:13px;border-radius: 10px;"/> </td>
             </tr>

             <tr>
              <th>이메일</th>
                <td><input type="text" id="mail" name="userEmail" size="25" style="padding:4px;font-size:13px;border-radius: 10px;"></td>   
             </tr>
 
         </table>
           <br>
           <br>
            
            <input type="submit" class="btn" value="제 출" style="margin-bottom: 50px;">
            
            
        </form>
        </div>

   
                 
        <footer>
            <div id="footlim">
                <small>
                    <br>㈜ 지금 배고프조<br><br>
                    서울특별시 강남구 강남동 000, 타워 5층 | 사업자 등록번호: 000-00-00000 [사업자정보확인]<br>
                    통신판매업 신고번호: 2021-서울강남-04026 | 개인정보 담당자 : babmokja@babmokja.co.kr | 제휴문의 :
                    babmokja@babmokja.co.kr | 고객 만족센터 : babmokja@babmokja.co.kr<br><br>

                    (유)지금 배고프조는 통신판매중개자이며 통신판매의 당사자가 아닙니다. <br> 따라서 상품/ 거래정보 및 거래와 관련하여 밥먹자에 등록된 판매자의 고의
                    또는 과실로 소비자에게 발생하는 손해에 대해 (유)지금 배고프조는 책임을 지지 않습니다.<br>
                    상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. Copyright BABMOKJA. All
                    Rights Reserved.<br><br>

                    고객센터: 02-123-4567 (24시간, 연중무휴)
                    <br>
                    <address>
                        Copyright &copy; BABMOKJA All Right Reserved.</address>
                </small>
            </div>
        </footer>
<script>
  function check_pw(){
      var pw = document.getElementById('pw').value;
      var SC = ["!","@","#","$","%"];
      var check_SC = 0;

      if(pw.length < 6 || pw.length>16){
          window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
          document.getElementById('pw').value='';
      }
      for(var i=0;i<SC.length;i++){
          if(pw.indexOf(SC[i]) != -1){
              check_SC = 1;
          }
      
         if(check_SC == 1){
          document.getElementById('check').innerHTML='비밀번호에 특수문자가 포함되어 있습니다.';
          document.getElementById('check').style.color='red';  
        }
      }
      if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
          if(document.getElementById('pw').value==document.getElementById('pw2').value){
              document.getElementById('check').innerHTML='비밀번호가 일치'
              document.getElementById('check').style.color='blue';
             
          }
          else{
              document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
              document.getElementById('check').style.color='red';
              
             
          }
      }
  }
</script>
<script>
    var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
    if (!emailRegExp.test(mail)) {
               window.alert("이메일 형식이 올바르지 않습니다!");
               form.mail.value = "";
               form.mail.focus();
               return false;
    }
</script>
<script>
     const $searchZipCode = document.getElementById("searchZipCode");
     
     $searchZipCode.onclick = function() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        $('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
                        $('[name=addr1]').val(data.address);
                        $('[name=addr2]').val(data.buildingName);
                    }
                }).open();
            }      
</script> 

<script type="text/javascript"> 
    var a = document.getElementById("join");  
    a.addEventListener("submit" , function(e) {
        if(a.name.value.length == 0){
        	alert("이름을 입력해주세요 ")
        	e.preventDefault();
            a.name.focus();
            return ;
        }
    });
</script>    


</body>
</html>