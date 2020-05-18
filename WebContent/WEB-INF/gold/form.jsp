<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form class="form-horizontal pr-50" id="mForm">
	<!-- 表單內容 -->
	<div class="form-group">
		<label class="control-label col-sm-2" for="type">Date</label>
		<div class="col-sm-10">
			<input type="text" name="date" class="form-control" readonly>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="type">Dollar</label>
		<div class="col-sm-10">
			<input type="text" name="dollar" class="form-control" readonly>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="code">Weight</label>
		<div class="col-sm-10">
			<input type="text" name="weight" class="form-control" readonly>
		</div>
	</div>
	<div class="form-group">
		<label for="detail" class="control-label col-sm-2">Buying Price</label>
		<div class="col-sm-10">
			<input type="text" name="buyingPrice" class="form-control">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="userId">Selling Price</label>
		<div class="col-sm-10">
			<input type="text" name="sellingPrice" class="form-control">
		</div>
	</div>
</form>