<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div class="col-lg-12">
		<div class="container" style="padding-top: 100px;">
		  <form class="boardSubmit">
		    <table class="table table-bordered">
		      <tr>
		        <th>게시판 이름</th>
		        <td><input type="text" name="title" class="form-control" /></td>
		      </tr>
		      <tr>
		        <th>분류</th>
		        <td>
		          <label><input type="radio" name="board" value="운영"/> 운영</label>
		          <label><input type="radio" name="board" value="일반"/> 일반</label>
		        </td>
		      </tr>
		    </table>
		    <button class="btn btn-primary">확인</button>
		    <button class="btn btn-primary">취소</button>
		  </form>
		</div>
	</div>

