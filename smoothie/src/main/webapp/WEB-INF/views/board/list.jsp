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
<h1>글 목록 조회</h1>

<a href="<c:url value='/board/insert'/>">글쓰기</a>
 
<table border="5">
<tr>
	<th>ID</th>
	<th>SUBJECT</th>
	<!--<th>CONTENT</th>-->
	<th>WRITER</th>
	<th>DATETIME</th>
	<th>COUNTRY</th>
	<th>JOB</th>



</tr>
<c:forEach var="board" items="${boardList}">
<tr>
	<td><a href="<c:url value='/board/${board.boardId}'/>">${board.boardId}</a></td>
	<td><a href="<c:url value='/board/${board.boardId}'/>">${board.boardSubject}</a></td>
	<!--<td>${board.boardSubject}</td>  --> 
	<!--<td>${board.boardContent}</td>-->
	<td>${board.boardWriter}</td>
	<td>${board.boardDate}</td>
	<td>${board.boardCountry}</td>
	<td>${board.boardJob}</td>

</tr>
</c:forEach>
</table>
</body>
</html>