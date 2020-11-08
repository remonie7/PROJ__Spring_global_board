<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
</head>
<body>
<h1>사원정보 수정</h1>
<form action="./update" method="post">
<table border="1">


<tr>
	<th>ID</th>
	<td><input type="number" name="boardId" value="${board.boardId}" readonly></td>
</tr>


 
<tr>
	<th>SUBJECT</th>
	<td><input type="text" name="boardSubject" value="${board.boardSubject}"></td>
</tr>
<tr>
	<th>CONTENT</th>
	<td><input type="text" name="boardContent" value="${board.boardContent}"></td>
</tr>
<tr>
	<th>WRITER</th>
	<td><input type="text" name="boardWriter" value="${board.boardWriter}"></td>
</tr>
<tr>
	<th>COUNTRY</th>
	<td><input type="text" name="boardCountry" value="${board.boardCountry}"></td>
</tr>

<tr>
	<th>JOB</th>
	<td><input type="text" name="boardJob" value="${board.boardJob}"></td>
</tr>

<tr>
	<th>&nbsp;</th>
	<td>
		<input type="submit" value="수정"> 
		<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</body>
</html>