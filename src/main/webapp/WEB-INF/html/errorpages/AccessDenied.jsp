<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
//設定秒數
var count = 5;
function countDown(){
	// 將秒數寫在指定元素中
	document.getElementById("timeBox").innerHTML= count;
	// 每次執行就減1
	count -= 1;
	// 當 count = 0 時跳轉頁面
	if (count == 0){
		location.href="/";
	}
	// 設定每秒執行1次
	setTimeout("countDown()",1000);
}
// 執行 countDown
countDown();
</script>
<title>你沒有權限喔</title>
</head>
<body>
你沒有權限訪問這裡喔！
<div id="timeBox"></div>
</body>
</html>