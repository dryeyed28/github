<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<%@include file="../template/header.jsp"%>

<script>
 
 		//login 
 			$(function(){
				var $idObj = $('input[name=id]');
				var	$btObj = $('button');
				var $chkObj = $('input[type=checkbox]');
				var $idValue = $('input[name=id]').val()
				var	itemValue = localStorange.getItem('id');
	 	
				
				if (itemValue !=null){
					$chkObj.prop('checked',true);
				} else{
					$chkObj.prop('checked', false);	
				}
				
			//checkbox checked
				
			$('form').submit(function(){ 
				
				if($chkObj.prop('checked')){
					localStorage.set('id',idValue);
				} else{
					localStorage.removeItem('id');
				}	

 				$.ajax({
 					data:
 						{'id':$('input[name=id]').val(),
 					 	'pwd':$('input[name=pwd]').val()
 					 	},
 					method : 'post',
 					url:'login.do'
 			
 					});
			});
			
 		});
 		
</script>

<head>
<!-- Page Title -->
<title>youthdepot</title>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="keywords" content="HTML5 Template" />
<meta name="description"
	content="Travelo - Travel, Tour Booking HTML5 Template">
<meta name="author" content="SoapTheme">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

<!-- Theme Styles -->
<link rel="stylesheet" href="../Resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../Resources/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../Resources/css/animate.min.css">

<!-- Current Page Styles -->
<link rel="stylesheet" type="text/css"
	href="../Resources/components/revolution_slider/css/settings.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../Resources/components/revolution_slider/css/style.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../Resources/components/jquery.bxslider/jquery.bxslider.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../Resources/components/flexslider/flexslider.css" media="screen" />


<!-- Main Style -->
<link id="main-style" rel="stylesheet" href="../Resources/css/style.css">

<!-- Updated Styles -->
<link rel="stylesheet" href="../Resources/css/updates.css">

<!-- Custom Styles -->
<link rel="stylesheet" href="../Resources/css/custom.css">

<!-- Responsive Styles -->
<link rel="stylesheet" href="../Resources/css/responsive.css">


<script type="text/javascript"
	src="../Resources/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="../Resources/js/jquery.noconflict.js"></script>
<script type="text/javascript"
	src="../Resources/js/modernizr.2.7.1.min.js"></script>
<script type="text/javascript"
	src="../Resources/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="../Resources/js/jquery.placeholder.js"></script>
<script type="text/javascript"
	src="../Resources/js/jquery-ui.1.10.4.min.js"></script>

<!-- Twitter Bootstrap -->
<script type="text/javascript" src="../Resources/js/bootstrap.js"></script>

<!-- load revolution slider scripts -->
<script type="text/javascript"
	src="../Resources/components/revolution_slider/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript"
	src="../Resources/components/revolution_slider/js/jquery.themepunch.revolution.min.js"></script>

<!-- load BXSlider scripts -->
<script type="text/javascript"
	src="../Resources/components/jquery.bxslider/jquery.bxslider.min.js"></script>

<!-- load FlexSlider scripts -->
<script type="text/javascript"
	src="../Resources/components/flexslider/jquery.flexslider-min.js"></script>

<!-- parallax -->
<script type="text/javascript"
	src="../Resources/js/jquery.stellar.min.js"></script>

<!-- waypoint -->
<script type="text/javascript" src="../Resources/js/waypoints.min.js"></script>

<script type="text/javascript" src="../Resources/js/theme-scripts.js"></script>
<script type="text/javascript" src="../Resources/js/scripts.js"></script>
</head>
<body class="soap-login-page style3 body-blank">
		<section id="content">
			<div class="container">
				<div id="main">
					<h1 class="logo block">
						<a href="index.html" title="Travelo - home"> 
						<img src="images/logo2.png" alt="Travelo HTML5 Template" />
						</a>
					</h1>
					<div class="welcome-text box" style="">환영합니다!</div>
					<p class="white-color block" style="font-size: 1.5em;">아이디와
						비밀번호를 입력해 주세요 .</p>
					<div
						class="col-sm-8 col-md-6 col-lg-5 no-float no-padding center-block">
						<form class="login-form">
							<div class="form-group">
								<input type="text" class="input-text input-large full-width"
									placeholder="아이디" name='id'>
							</div>
							<div class="form-group">
								<input type="password" class="input-text input-large full-width"
									placeholder="비밀번호" name='pwd'>
							</div>
							<div class="form-group">
								<label class="checkbox"> <input type="checkbox" value="">아이디
									저장하기
								</label>
							</div>
							<button type="submit" class="btn-large full-width yellow">로그인</button>
							<div class="search-id">
								<ul class="search-tabs clearfix">
									<li><a href="#id-search" data-toggle="tab">아이디 찾기</a></li>
									<li><a href="#pass_search" data-toggle="tab">비밀번호 찾기</a></li>
									<li><a href="#sign_up" data-toggle="tab">회원가입</a></li>
								</ul>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<%@include file="../template/footer.jsp"%>
</body>
</html>