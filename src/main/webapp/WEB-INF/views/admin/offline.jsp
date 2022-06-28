<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
<style>
 .pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
  .active{
      background-color: #cdd5ec;
  }
 
</style>
</head>
<body>
<form action="ofwrite">
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>날짜 </th>
				<th>성함 </th>
				<th>전화번호 </th>
				<th>시간 </th>
				<th>문의내역  </th>
			</tr>	
		</thead>
		<tbody>
			<c:forEach items="${list}" var="row">
	 			<tr>
	 				<td><a href="contentView2?o_number=${row.o_number}">${row.o_number}</a></td>
					 <td>${row.o_date}</td>
	 				 <td>${row.m_name}</td>
	 				<td>${row.o_phone}</td>
	 				 <td>${row.o_time}</td>
	 				  <td>${row.o_content}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<input type="submit" value="글쓰기"/>
</form>

    <div class="pageInfo_wrap" >
        <div class="pageInfo_area">
 			<ul id="pageInfo" class="pageInfo">
          <!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
                </c:if>
 				<!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
                </c:forEach>	
       	   		<!-- 다음페이지 버튼 -->
                <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
                </c:if>    
                
 			</ul>
        </div>
    </div>

<form id="moveForm" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
    <input type="hidden" name="amount" value="${pageMaker.cri.amount }">   

</form>
<script>
$(document).ready(function(){

	let moveForm = $("#moveForm");
	
	$(".move").on("click", function(e){
		moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
		moveForm.attr("action","/board/get");
		moveForm.submit();
	});
	
	$(".pageInfo a").on("click", function(e){
		 
	    e.preventDefault();
	    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	    moveForm.attr("action", "/ex/offlinelist");
	    moveForm.submit();
	    
	});
	
	
});

</script>

</body>
</html>