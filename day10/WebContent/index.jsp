<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>index.html</title>
<style>
*{
  margin: 0px;
  padding: 0px;
}
body {
  position: absolute; 
  height: 100%;  
  width:100%;
}
header, section, aside, footer{
  box-sizing: border-box;
}
header, footer{
  width:100%;  
  height:15%;
}
section, aside{
  height:70%; 
  float:left;
}
header{
  background:pink;
}  
section{  
  width:75%;
}
aside{
  width:25%;  
  background: green;
}
footer{
  clear:both;
  background:yellow;
}
.member_sub{
  display:none;  
  position: absolute;
  list-style: none;
}
nav>ul>li{
  display:inline-block;  
}
nav li:hover{
  background: gray;    
}
.member:hover .member_sub { 
  /*.member에 마우스가 올라간경우 후손중  .member_sub선택 */
  display: block;  
}
nav a{
  text-decoration: none;  
  color: black;
  
    
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$('section').on('click', 'button#emptycart', function(){
		$.ajax({
			url:'emptycart.do',
			success:function(data){
				console.log('emptycart success data='+data);
				var $triggerObj = $("nav>ul li.viewcart");
				$triggerObj.trigger('click');
			}			
		});
		return false;
	});
	
	
	$('section').on('click', 'button#addorder', function(){
		$.ajax({
			url:'addorder.do',
			success:function(data){
				console.log(data);
				if(data.trim()=='0'){
					var $triggerObj = $("nav>ul li.login");
					$triggerObj.trigger('click');
				}else if(data.trim()=='-1'){
					alert("오류발생!");
				}else if(data.trim()=='1'){	
					var $triggerObj = $("nav>ul li.vieworder");
					$triggerObj.trigger('click');					
				}
			}			
		});
		return false;
	});
	$('nav>ul li').click(function(){
		//현재객체의 형제객체들		
		$(this).siblings().find('a').css('background-color','pink').css('color', 'black').css('font-weight', 'normal');
		
		//클릭된 li의 자식a태그
		$(this).children('a').css('background-color','yellow').css('color','blue').css('font-weight', 'bold');
		var classValue = $(this).attr('class');
		$('section').empty();		
		switch(classValue){
		case 'board':
			$('section').empty();	
			$.ajax({
				method:'GET',
				url:'board.jsp',
				success:function(data){
					$('section').html(data);
				}
			});
			break;
		case 'signup':
			$('section').empty();	
			$.ajax({
				method:'POST',
				url: 'signup.html',
				success: function(data){
					$('section').html(data);
				}
			});
			break;
		case 'product_list':
			$('section').empty();	
			$.ajax({
				method:'POST',
				url: 'productlist.do',
				success: function(data){
					$('section').html(data);
				}
			});
			break;
		case 'login':
			$('section').empty();	
			$.ajax({
				method:'POST',
				url:'login.jsp', //'login.html',
				success:function(data,textStatus, jqXHR){
					$('section').html(data);
				},
				error:function(){
					$('section').html('오류발생!');
				}
			});
			break;
		case 'logout':
			$('section').empty();	
			location.href="logout.do";
			break;
		case 'viewcart':
			$('section').empty();	
			$.ajax({
				url:'viewcart.do',
				success:function(data){
					$('section').empty();
					var jsonObj = JSON.parse(data);
					
					if(jsonObj.status=='1'){
						$('section').append("<h2>장바구니내용</h2>");
						var $tableObj = $('<table style="border:1px solid;border-collapse: collapse;width:80%"><tr><th>번호</th><th>상품명</th><th>가격</th><th>수량</th><th>합계</th></tr></table>');
						var totalPrice=0;
						var $trObj, $tdObj;
						$.each(jsonObj.items, function(index,item){	
						 $trObj= $('<tr style="border:1px solid;"></tr>');
						 $tdObj = $('<td>'+item.code+'</td>');
						 $trObj.append($tdObj);
						
						 $tdObj = $('<td>'+item.name+'</td>');
						 $trObj.append($tdObj);
						
						 $tdObj = $('<td>'+item.price+'</td>');
						 $trObj.append($tdObj);
						
						 $tdObj = $('<td>'+item.quantity+'</td>');
						 $trObj.append($tdObj);
						 
						 $tdObj = $('<td style="text-align: right;">'+(item.price*item.quantity)+'</td>');
						 $trObj.append($tdObj);
						 $tableObj.append($trObj);
						 
						 totalPrice += item.price*item.quantity;
					    });
						$trObj= $('<tr style="border:1px solid;"></tr>');
						var $tdObj = $('<td colspan="5" style="text-align: right;font-weight:bold;color:red;">'+totalPrice+'</td>');
						$trObj.append($tdObj);
						$tableObj.append($trObj);
						 $('section').append($tableObj);
						 $('section').append('<button id="emptycart">장바구니비우기</button>');
						 $('section').append('<button id="addorder">주문하기</button>');
							  
					}else{
						$('section').append("<h2>장바구니가 비었습니다.</h2>");						   
					}//end if
				}//end success
			});//end ajax
			break;	
		case 'vieworder':
			$('section').empty();	
			$.ajax({
				url: 'vieworder.do',
				success:function(data){
					$('section').html(data.trim());
				}
			});
			break;
		case 'board':
			$('section').empty();
			$.ajax({
				url: 'repboardlist.do',
				data: page=2,
				success: function(data){
					$('section').html(data.trim());
				}
			});
		}//end switch
		return false;
	});//end (nav>ul li').click
});
</script>
</head>
<body>
  <header>
    <nav>
      <ul>
        <%String loginInfo =
           (String)session.getAttribute("loginInfo");
          if(loginInfo == null){
        %>
        <li class='login'><a href="#">로그인</a></li>
        <%}else{ %>
        <li class='logout'><a href="#">로그아웃</a></li>
        <li class='vieworder'><a href="#">주문내역보기</a></li>
        <%} %>
        <li class="member">회원
          <ul class="member_sub">
            <li class='signup'><a href="#">가입</a></li>
            <li class='update'><a href="#">회원정보수정</a></li>
          </ul>
        </li>
        <li class='product_list'><a href="#">상품</a></li>   
        <li class='viewcart'><a href="#">장바구니보기</a></li>   
        <li class='board'><a href="#">게시판</a></li>
        <li><a href="info.html">공지사항</a></li>
      </ul>
    </nav>
  </header>
  <section>
    <article>글1
      <figure style="border:1px solid">
        <img src="googlelogo.png" style="width:100px;height:100px">
        <figcaption>구글로고</figcaption>
      </figure>
    </article>
    <article>글2
      DIV태그의 변형으로 header, section, aside, footer태그 등이 있다
      SPAN태그의 변형으로 <mark>mark태그</mark>가 있다
    </article>
    <article>글3</article>    
  </section>
  
  <aside>aside</aside>
  <footer>
     <address>서울시 구로구 구로동 싸이언스밸리1차</address> 
  </footer>
</body>
</html>