<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<style>
h1 {color:white; background:darkgray; font-size:30px;}
</style>
</head>
<body>
<h1>선택한 사원 정보 상세 조회</h1>



<table border="3">
<tr>
	<td>ID</td>
	<td>${board.boardId}</td>
</tr>
<tr>
	<td>SUBJECT</td>
	<td>${board.boardSubject}</td>
</tr>
<tr>
	<td>CONTENT</td>
	<td>${board.boardContent}</td>
</tr>
<tr>
	<td>WRITER</td>
	<td>${board.boardWriter}</td>
</tr>
<tr>
	<td>DATETIME</td>
	<td>${board.boardDate}</td>
</tr>
<tr>
	<td>COUNTRY</td>
	<td>${board.boardCountry}</td>
</tr>
<tr>
	<td>JOB</td>
	<td>${board.boardJob}</td>
</tr>

</table>

<a href="update?boardid=${board.boardId}">수정하기</a> 
  <a href="delete?boardid=${board.boardId}">삭제하기</a> 


<!--<a href="<c:url value='/board/delete/${board.boardId}'/>">삭제하기</a>-->

</body>
</html>