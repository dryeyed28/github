<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.html</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	var $idObj = $('input[type=text]'); //type속성이 text인 input객체를 dom트리에서 찾기
	var $btObj = $('button'); //button객체찾기
	var $chkObj = $('input[type=checkbox]');//type속성이 checkbox인 input객체찾기
	
	var itemValue = localStorage.getItem('id');
	
	if(itemValue != null){
		$chkObj.prop('checked', true);
	}else{
		$chkObj.prop('checked', false);
	}
	//idObj.value = itemValue;
	$idObj.val(itemValue);
	$('form').submit(function(){
		var idValue = $idObj.val();
		//chkObj가 체크된 경우에는
		if($chkObj.prop('checked')){
		  localStorage.setItem('id', idValue);		
		}else{//chkObj가 체크안된 경우에는
		  localStorage.removeItem('id');
		}		
		$.ajax({
			data:
			    {'id':$('input[name=id]').val(),
				 'pwd':$('input[name=pwd]').val()
				},
			method:'POST',
			url: 'login.do',
			success: function(data){
				//$('section').html(data);				
				data = data.trim();
				if(data == '1'){
					//$('section').html('로그인 성공');
					//location.href="index.jsp";
					location.href="<%=request.getContextPath()%>";
				}else if(data == '-1'){
					window.alert('로그인 실패');
				}
			}
		});
		
		return false; //기본이벤트처리 막기
	});
	
});
</script>
<style>
form{
width:50%;
margin: auto;
}
label{
display:inline-block;
width:30%;
}

</style>
</head>
<body>
<form>   <!--  form method='post' action='http://www.naver.com' -->
  <label>ID</label><input type='text' required name='id'><br>
  <label>PASSWORD</label><input type='password' required name='pwd'><br>
  <input type='checkbox'>ID저장<br>
  <button>로그인</button>
</form>
</body>
</html>