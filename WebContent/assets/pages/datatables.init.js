/*
 Author: YungLee
 File: Datatable js
 */
$(function() {
	function dTableInit() {
		var $dTable = $("#datatable-buttons");
		this.dom = "l<'row'<'col-md-6'B><'col-md-6'f>r>t<'row'<'col-md-6'i><'col-md-6'p>>",
		this.language =  {
			emptyTable : "查無資料",
			loadingRecords : "加載中...",
			processing : "查詢中...",
			search : "查詢: ",
			lengthMenu : "每頁 _MENU_ 筆",
			zeroRecords : "查無資料",
			paginate : {
				first : "第一頁",
				last : "最後一頁",
				next : "下一頁",
				previous : "前一頁"
			},
			info : "第 _PAGE_ 頁 / 總共 _PAGES_ 頁",
			infoEmpty : "查無資料",
			infoFiltered : "(過濾總筆數_MAX_ 筆)",
			buttons: {
				copy: '複製',
				excel: '匯出excel',
				pdf: '匯出PDF',
				csv: '匯出csv',
				colvis: '隱藏欄位',
				print: '列印'
			}
		},
		this.buttons =  [
			{ extend: 'pdf', className: 'btn-outline-danger' }, 
			{ extend: 'csv', className: 'btn-outline-danger' }, 
			{ extend: 'excel', className: 'btn-outline-danger' },
			{ extend: 'print', className: 'btn-outline-danger' }
		],
		this.ajax = {
			url : $dTable.data('url'),
			type : 'post',
			dataSrc : ''
		}
	}
	window.dTableInit = new dTableInit();
});