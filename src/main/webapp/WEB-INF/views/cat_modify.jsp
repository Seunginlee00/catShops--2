<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${cmdtos}" var="row">
		<img src="${pageContext.request.contextPath}/${row.c_r_image}" alt="" /><br/>
		 <form action="catModifyOk" method="post">
		 	이름: <input type="text" name = "name" value= ${row.c_name} readonly="readonly"/><br/>
			<c:if test="${row.c_type eq '코리안 숏헤어 '}">
				<select name="type">
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
			<c:if test="${row.c_type eq '아니비시안 '}">
				<select name="type">
					<option value="아니비시안 ">아니비시안  </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
			<c:if test="${row.c_type eq '러시안 블루  '}">
				<select name="type">
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
			<c:if test="${row.c_type eq '터키쉬 앙고라 '}">
				<select name="type">
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
			<c:if test="${row.c_type eq '페르시안  '}">
				<select name="type">
					<option value="페르시안  ">페르시안  </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
			<c:if test="${row.c_type eq '메인쿤'}">
				<select name="type">
					<option value="메인쿤">메인쿤 </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
			<c:if test="${row.c_type eq '뱅갈 '}">
				<select name="type">
					<option value="뱅갈 ">뱅갈 </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
			<c:if test="${row.c_type eq '샴 '}">
				<select name="type">
					<option value="샴 ">샴 </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>			
		 	<c:if test="${row.c_type eq '노르웨이숲 '}">
				<select name="type">
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="샴 ">샴 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>	
			<c:if test="${row.c_type eq '렉돌  '}">
				<select name="type">
					<option value="코리안 숏헤어 ">코리안 숏헤어 </option>
					<option value="아니비시안 ">아니비시안  </option>
					<option value="러시안 블루  ">러시안 블루 </option>
					<option value="터키쉬 앙고라 ">터키쉬 앙고라  </option>
					<option value="페르시안  ">페르시안  </option>
					<option value="메인쿤">메인쿤 </option>
					<option value="뱅갈 ">뱅갈 </option>
					<option value="샴 ">샴 </option>
					<option value="노르웨이숲 ">노르웨이 숲 </option>
					<option value="렉돌  ">렉돌 </option>
				</select> <br/>		
			</c:if>
		나이: <input type="text"  name="age" value=${row.c_age } /> 살<br/>
								
		반려동물 성별  <br/>
			<c:if test="${row.c_sex eq 'F'}">
				남자 : <input type="radio" name="sex" value="M"/>
				여자  :<input type="radio" name="sex" value="F" checked="checked"/><br/>
			</c:if>
			<c:if test="${row.c_sex eq 'M'}">
				남자 : <input type="radio" name="sex" value="M" checked="checked"/>
				여자  :<input type="radio" name="sex" value="F" /><br/>
			</c:if>
		몸무게: <input type="text" name="weight" value=${row.c_weight } /> kg<br/>
		반려동물 중성화 여부 <br/>
			<c:if test="${row.c_neutering eq 'Y'}">
				했음 : <input type="radio" name="neutering" value="Y" checked="checked"/>
			하지 않음  : <input type="radio" name="neutering" value="M"/><br/>
			</c:if>
			<c:if test="${row.c_neutering eq 'N'}">
				했음 : <input type="radio" name="neutering" value="Y"/>
			하지 않음  : <input type="radio" name="neutering" value="N" checked="checked"/><br/>
			</c:if>							
			
			<input type="hidden" name="id" value= ${row.m_id} />	
		<button type="submit" class="btn btn-default">수정하기</button>
		 </form>
		 
		 <form action="catImgModify" method="post">
		 	<input type="hidden" name="name" value= ${row.c_name} />
		 	<input type="hidden" name="id" value= ${row.m_id } />
		 	<input type="submit" value="이미지 수정하기">
		 </form>
		 
		 <form action="catDeleteOk" method="post">
		 	<input type="hidden" name="name" value= ${row.c_name} />
		 	<input type="hidden" name="id" value= ${row.m_id } />
		 	<input type="submit" value="삭제하기">
		 </form>
		 -------------------------------------------------------<br/>
	</c:forEach>
	
</body>
</html>