<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <!-- -->
<!DOCTYPE HTML SYSTEM "about:legacy-compat">
<html>
<head>
<!-- GoogleWebフォントをインポート 実際の使用はCSSで指定します-->
<link href="https://fonts.googleapis.com/css?family=Kosugi+Maru&display=swap" rel="stylesheet">
<!-- CSSを読み込みます -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addstylescroll.css">

<!-- Slidebars CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slidebars.css">

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>


<meta charset="UTF-8">

<title>さんろぐ</title>
<!--レスポンシブ対応-->
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

</head>
<body>

<header>
	SUN*LOG<!-- ログイン状態の表示 -->
</header>
	<div canvas="conteiner" class="wrapper" id="scrollr-body">
		<div class="main-content">
		<!--この中でメニューのボタンとiframeを並べている-->
			<div class="menu">
				<p class="sb-toggle-left">CLICK</p>
			</div>
			<div class="maindiv">
				<iframe src="${pageContext.request.contextPath}/WelcomServlet" name="iframe-main" class="iframe1"></iframe>
			</div>
		</div>
	</div>
	<div off-canvas="sb-left left overlay">
	<!--左にでてくるスライドメニューのリスト-->
			<div class="left-content"><!--"left-content"をキーにjsファイルのメソッドが呼ばれます"-->
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br><!-- スライドメニューにログインの時だけ表示するものは
				インスタンスが生成されているかどうかの条件分岐：printメソッドで書きだす -->
				<ul>
					<li><a href="${pageContext.request.contextPath}/LoginServlet" target="iframe-main">ログイン</a></li>
					<li><a href="${pageContext.request.contextPath}/ShopSearchServlet"target="iframe-main">店舗検索</a></li>
					<li></li>
					<%--if(${login}!=null){
						out.print("<li>メニュー04</li>")
					}--%>
					<li>メニュー04</li>
					<li>メニュー05</li>
				</ul>
				<p class="sb-close">CLOSE</p>
			</div>
		</div>
	<!-- Slidebarsの実行-->
	<script src="${pageContext.request.contextPath}/js/slidebars.js"></script>
	<script src="${pageContext.request.contextPath}/js/sidemenu.js"></script>
</body>


</html>