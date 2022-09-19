<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
el과 jstl<br>
el 화면 출력 방법<br>
jstl 데이터 처리 화면 구성 방법<br>
	
${num} 모델에 num이라는 키값이 들어 있다면 num 키게 들어 있는 값이 출력된다.<br>
${object.name} 객체.필드 형태로 객체 데이터 출력 모델에 담겨져 있는 데이터가 객체일 때 사용<br>
	
${10+20} 연산<br>

jstl 상단에 taglib가 있어야 동작한다.<br>

<c:set var="income" value="${400*3}" />
<c:out value="${income}"/>
<br>
if<br>
<c:if test="${income>800}">
	<P>${income }값은 8000이상</P>
</c:if>

choose<br>
<c:choose>
	<c:when test="${income<=1000}">
		1000보다 작음
	</c:when>
	<c:when test="${income<=2000}">
		2000보다 작음
	</c:when>
	<c:when test="${income<=3000}">
		3000보다 작음
	</c:when>
	<c:otherwise>
		모두 조건에 안맞음
	</c:otherwise>
</c:choose>

반복문<br>
<ol>
<c:forEach var="j" begin="1" end="3">
	<li>${j } <c:out value="${j}"/></li>
</c:forEach>
</ol>

<br><br><br>
name:${name}<br>
age:${age}<br>

human.name:${human.name}<br>
human.age:${human.age}<br>

<br>
<c:forEach var="item" items="${list}" varStatus="status"> 
<!-- items : ArrayList (휴먼 객체), Status : 상태 정보 얻기 -->
	index:${status.index} 현재 몇번째 휴면 객체인가 출력 <br>
	첫번째 휴먼객체인가?:${status.first} true false 값을 가짐<br>
	마지막 휴먼객체인가?:${status.last} true false 값을 가짐 <br>
	<!--${status.last} : 반복적으로 많은 객체를 가지는데, 테이블에 첫번째 데이터에만
	특별한 효과를 칠하거나 마지막 데이터에만 특별 효과를 칠하고 싶을 때 등 true false 값을 읽기 위함  -->
	
	${status.index}번째 휴먼객체 name:${item.name} <br>
	${status.index}번째 휴먼객체 age:${item.age} <br>

</c:forEach>
<c:forEach var = "cnt" begin="1" end="10" step="2" varStatus="status">
${status.index}:${status.count}:${status.first}:${status.last}:${cnt}<br>
</c:forEach>

<c:forEach var="item" items="${list}"
varStatus="status">
	${item } 
	<c:if test="${not status.last }">,</c:if>
</c:forEach>

<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
${city } <br>
</c:forTokens>

<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
${city } <br>
</c:forTokens>

<br><br>
<!--3자리 마다 컴마로 표시한 숫자  -->
<fmt:formatNumber value="1234567.89" />
<!--groupingUsed="false" 부분을 추가하면 3자리 마다 컴마로 표시 하지 않음 -->
<fmt:formatNumber value="1234567.89" groupingUsed="false"/>
<!--숫자를 퍼센트로 출력  1이 100% 이다. -->    
<fmt:formatNumber value="0.5" type="percent" />
<!-- 돈단위를 넣어서 출력  -->
<fmt:formatNumber value="10000" type="currency" />
<!-- 원하는 돈표시 선택  -->
<fmt:formatNumber value="10000" type="currency" currencySymbol="$"/>

<!--
 패턴대로 출력하는 방식 
#해당 자리가 없으면 출력하지 않음 0 해당 자리가 없으면 0으로 출력
  -->
<fmt:formatNumber value="1234567.8912345" pattern="#,#00.0#"/>
<fmt:formatNumber value="1234567.8912345" pattern=".000"/>
<fmt:formatNumber value="1234567.10" pattern=".00"/>
<fmt:formatNumber value="1234567.10" pattern=".0#"/>
<fmt:formatNumber value="1234567.0" pattern=".0"/>
<fmt:formatNumber value="1234567.0" pattern=".#"/>

<c:set var="now" value="<%=new java.util.Date()%>" />
<fmt:formatDate value="${now }" pattern="yyyy"/>
<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일  HH시 mm ss"/>
</body>
</html>
