

<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
<h1>글 삭제</h1>
${board.boardId} 글 의 정보를 삭제합니다.<p>
삭제후 데이터는 복구될 수 없습니다.<p>
${board.boardWriter} 작성자을 입력하세요.
<form action="./delete" method="post">
이메일 : <input type="text" name="writer">
<input type="hidden" name="boardid" value="${board.boardId}">
<input type="submit" value="삭제">
</form>
</body>
</html>