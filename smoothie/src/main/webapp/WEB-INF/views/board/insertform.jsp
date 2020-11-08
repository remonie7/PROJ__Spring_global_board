<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
<h1>글 입력</h1>
<form action="./insert" method="post">
<table border="1">
<tr>
	<th>ID</th>
	<td><input type="number" name="boardId" required></td>
</tr>
<tr>
	<th>SUBJECT</th>
	<td><input type="text" name="boardSubject"></td>
</tr>
<tr>
	<th>CONTENT</th>
	<td><input type="text" name="boardContent" required></td>
</tr>
<tr>
	<th>WRITER</th>
	<td><input type="text" name="boardWriter" required></td>
</tr>

<!--  
 
<tr>
	<th>DATETIME</th>
	<td><input type="date" name="boardDate" required></td>
</tr>
-->
<tr>
	<th>COUNTRY</th>
	<td><input type="text" name="boardCountry" required></td>
</tr>
<tr>
	<th>JOB</th>
	<td><input type="text" name="boardJob" required></td>
</tr>


<tr>
	<th>&nbsp;</th>
	<td>
		<input type="submit" value="저장"> 
		<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</body>
</html>