<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>

<!DOCTYPE html>
<html lang="ko" ng-app>

<head>
<meta charset="UTF-8">
<title>Default HTML</title>
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="css/board.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-2.2.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>

<script>

  $(document).ready(function() {
  		
  	$('#write_btn').click(function() {
  			
  		document.location = "boardList.jsp";
  			
  		});
  		
  });
  
   $(document).ready(function() {
  
	$('#boardList_btn').click(function() {
		
		document.location = "boardList.jsp";
		
	});
		
}); 
  
</script>

</head>

<body>


	<!-- 상단 메뉴바 -->
	<header>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="../index.html" id="logo" class="navbar-brand">7team</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="../index.html">Home</a></li>
						<li><a href="../aboutUs/aboutUs.html">About Us</a></li>
						<li><a href="../article/articleList.html">Article</a></li>
						<li><a href="boardList.html">board</a></li>
						<li><a href="../qna/qnaList.html">QnA</a></li>
						<li><a href="../login/signup.html">SignUp</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="../login/login.html"><span
								class="glyphicon glyphicon-log-in"> Login</span></a></li>
					</ul>
				</div>
			</div>
		</nav>

	</header>


	<!-- 페이지 타이틀 -->
	<div class="jumbotron text-center">
		<h1 id="title_name">FREE BOARD</h1>
		<p>당신의 창의적인 아이디어를 마음껏 적어주세요</p>
	</div>

	<section>
		<div class="container">
	
<%
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:mysql://localhost:3306/articledb";
	String user = "root";
	String password = "1234";
	
/* 	try {
		conn = DriverManager.getConnection(url, user, password);		
		stmt = conn.createStatement();
		String sql = "UPDATE articles SET num = ?, title = ?, writer = ?, readCount = ?";
		rs = stmt.executeQuery(sql);
		ResultSetMetaData rsm = rs.getMetaData();	 */	
           
%>

			<form action="" class="form-horizontal">
				<div class="form-group">
					<label for="title" class="col-sm-2">제목:</label>
					<div class="col-sm-10">
						<input type="title" class="form-control" id="title">
					</div>
				</div>

				<div class="form-group">
					<label for="writer" class="col-sm-2">작성자:</label>
					<div class="col-sm-10">
						<input type="writer" class="form-control" id="writer">
					</div>
				</div>

				<div class="form-group">
					<label for="content" class="col-sm-2">내용:</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="5" id="content"></textarea>
					</div>
				</div>

				<div class="buttons" align="right" id="buttons">
					<button type="button" class="btn btn-primary" id="write_btn">등록</button>
					<button type="button" class="btn btn-danger" id="boardList_btn">목록</button>
				</div>

			</form>
		</div>
	</section>
	<!-- footer -->
	<footer id="footer" class="container-fluid text-center">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<h2>BitCoin</h2>
				</div>
				<div class="col-sm-8">
					<p>가산디지털단지역 KOSTA 사무실 || 고객상담실 : 080 - 000 - 0000 || 대표이사 : 박성용</p>
					<p>통신판매업 신고번호 서울-11111호</p>
					<p>Copyright &copy; 2016 psy Co., ltd ALL RIGHTS RESERVED</p>
				</div>
				<div class="col-sm-2">
					<h4>Category</h4>
					<ul>
						<li><a href="skills.html">Board</a></li>
						<li><a href="gallery.html">Article</a></li>
						<li><a href="board.html">Board</a></li>
						<li><a href="shop.html">Q&amp;A</a></li>
						<li><a href="join.html">Join</a></li>
						<li><a href="login.html">Login</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!--############################# SCRIPT CODE #############################-->
	<script src="http://code.jquery.com/jquery-2.2.3.min.js"></script>
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>
