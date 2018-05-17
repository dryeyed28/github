<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<%@include file="../template/aside.jsp"%>

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<script>
$(document).ready(function() {
    /* var sendFile = function (file, el) {
          var form_data = new FormData();
          form_data.append('file', file);
          $.ajax({
            data: form_data,
            type: "POST",
            url: '/file',
            cache: false,
            contentType: false,
            enctype: 'multipart/form-data',
            processData: false,
            success: function(url) {
                    $('#summernote').summernote('insertImage', url);
                $('#imageBoard > ul').append('<li><img src="'+ url +'" width="480" height="auto"/></li>');
            }
          });
        } */
    $('#summernote').summernote({
        height: 300,
        minHeight: null,
        maxHeight: null,
        focus: true,
        callbacks: {
          onImageUpload: function(files, editor, welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
              sendFile(files[i], this);
            }
          }
        }
      });
});
</script>

<div id="page-wrapper">
  <div class="row">
	<div class="col-lg-12">
		<div class="container" style="padding-top: 100px;">
		  <form class="boardSubmit" method="post" enctype="multipart/form-data">
		    <table class="table table-bordered" style="width: 100%;">
		      <tr>
		        <th>글 제목</th>
		        <td><input type="text" name="title" class="form-control" /></td>
		      </tr>
		      <tr>
		        <th>글 내용</th>
		        <td><textarea class="form-control" id="summernote"
		                      name="content" placeholder="content" maxlength="140" rows="7"></textarea>
		        </td>
		      </tr>
		      <tr>
		        <th>파일</th>
		        <td>
		          <div class="fileForm">
		            <input type="file" name="uploadFiles"/>
		          </div>
		        </td>
		      </tr>
		      <tr>
		        <th>공지</th>
		        <td><label><input type="checkbox"/> 이 글을 공지글로 설정합니다.</label></td>
		      </tr>
		    </table>
		    <button class="btn btn-primary">확인</button>
		    <button class="btn btn-primary">취소</button>
		  </form>
		</div>
	</div>
  </div>
</div>
