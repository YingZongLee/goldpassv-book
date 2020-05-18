<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="wrapper">
<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="card m-b-20">
				<div class="card-body">
					<div id="chart"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="card m-b-20">
				<div class="card-body">
					<!-- <h4 class="mt-0 font-30">歷史價格</h4>
					<p class="text-muted m-b-30 "></p> -->
					<table id="datatable-buttons" data-url="${url}" class="table table-striped table-bordered dt-responsive nowrap" >
						<thead>
							<tr>
								<th>Date</th>
								<th>Dollar</th>
								<th>Weight</th>
								<th>Buying Price</th>
								<th>Selling Price</th>
								<th>Difference</th>
								<th></th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div><!-- end card-body -->
			</div><!-- end card -->
		</div><!-- end col -->
	</div><!-- end row -->
</div><!-- container fluid -->
</div><!-- wrapper -->

<!-- modal -->
<jsp:include page="../modal.jsp"></jsp:include>

<!-- Datatable -->
<script>
	$(function() {
		var table = $("#datatable-buttons").DataTable({
			dom: dTableInit.dom,
			language : dTableInit.language,
			buttons: dTableInit.buttons,
			ajax : dTableInit.ajax,
			columns : [
				{ data : null, render : function(row) {
					return moment(row.date, 'YYYYMMDD').format('YYYY-MM-DD');
				}},
				{ data : "dollar" },
				{ data : "weight" },
				{ data : "buyingPrice", render : $.fn.dataTable.render.number(',', '.', 0, '$') },
				{ data : "sellingPrice", render : $.fn.dataTable.render.number(',', '.', 0, '$') },
				{ data : null, render : function(row) {
					return $.fn.dataTable.render.number(',', '.', 0, '$').display(row.sellingPrice - row.buyingPrice);
				}},
				{ data : null, orderable : false, width : '5%', render : function() {
						return 	" <button type='button' class='btn btn-info waves-effect waves-light m-r-10 edit'>" +
									" <i class='fas fa-edit'> Edit</i></button>" +
									" <button type='button' class='btn btn-primary waves-effect waves-light m-r-10 delete'>" +
									" <i class='fas fa-trash-alt'> Delete</i></button>";
				}}
			]
		});
		
		table.order( [ 0, 'desc' ] ).draw();
		
		table.button().add(0, { text: "Upload", className: 'btn-outline-danger',
			action: function() {
				var fileUpload = $("<input type='file' name='file' />");
				fileUpload.click();
				fileUpload.on('change', function() {
					var formData = new FormData();
					formData.append('file', this.files[0]);
					$.ajax({
						url: 'gold-upload',
						type: 'post',
						data: formData,
						processData: false,
					  	contentType: false
					});
				});
			}
		});
		
		table.button().add(0, { text: 'Create', className: 'btn-outline-danger',
			action: function() {
				modalReload(false, 'create', '新增', {});
				$('#mForm :input[name="date"]').val(moment().format('YYYYMMDD'));
				$('#mForm :input[name="dollar"]').val('TWD');
				$('#mForm :input[name="weight"]').val(1);
			}
		});
		
		table.button().add(table.buttons().container()[0].children.length, {
			extend: 'colvis', className: 'btn-outline-danger', columns : ':lt(6)' } 
		);
		
		table.on('xhr', function(e, setting, json) {
			c3.generate({
				bindto: '#chart',
				title: 'Historical Data',
				data: {
					json: json,
					keys: { x: 'date', value: [ 'buyingPrice', 'sellingPrice' ] },
				},
				axis: {
					x: {
						label: { text: 'Date', position: 'outer-center' },
						type: 'category',
						height: 50,
						tick: { culling: true, rotate: 10, multiline: false }
					},
					y: {
						label: { text: 'Price', position: 'outer-middle' }, 
						tick: { format: d3.format('$,') }
					}
				}
			});
		});
		
		table.on('click', '.edit', function() {
			var data = table.row($(this).closest('tr')).data();
			modalReload(false, 'update', '修改', data);
		});
		
		table.on('click', '.delete', function() {
			var data = table.row($(this).closest('tr')).data();
			modalReload(true, 'delete', '刪除', data);
		});
		
		function modalReload(isInputRead, id, lebal, data) {
			$('#mForm :input[name*="Price"]').attr('readonly', isInputRead);
			$('.btn-memo-create').attr('id', id);
			$("#mLabel").text(lebal);
			$("#mForm :input").each(function() { this.value = data[this.name] === undefined ? '' : data[this.name]; });
			$("#mModal").modal( { backdrop : "static" } );
		}
		
	});
</script>