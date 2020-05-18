<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="wrapper">
<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card m-b-20">
				<div class="card-body">
					<h4 class="mt-0 font-30">匯入資料</h4>
					<p class="text-muted m-b-30"></p>
                    <div class="m-b-30" >
                        <div id="dropzone" class="dropzone" data-url="${url}"></div>
                     </div>
                     <div class="text-center m-t-15">
                         <button id="uploadButton" type="button" class="btn btn-primary waves-effect waves-light">匯入</button>
                     </div>
				</div><!-- end card-body -->
			</div><!-- end card -->
		</div><!-- end col -->
	</div><!-- end row -->
</div><!-- container fluid -->
</div><!-- wrapper -->

<!-- Form Upload -->
<script>
	Dropzone.autoDiscover = false;
	$(function() {
		var dropzone = new Dropzone("div#dropzone", {
			//dictDefaultMessage : "餵我吃",
			url : $("#dropzone").data("url"),
			addRemoveLinks : true,
			autoProcessQueue : false,
			parallelUploads : 10
		});
		
		$("#uploadButton").on("click", function(e) {
			dropzone.processQueue();
		});
	});
</script>