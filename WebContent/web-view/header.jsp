<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<% 
	String path = (String) request.getAttribute("path"); 
	String url = (String) request.getAttribute("url");
	String form = (String) request.getAttribute("form");
	System.out.println("url : " + url);
	/* System.out.println("path : " + path);
	System.out.println("form : " + form); */
%>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<title>Gold Pass Book</title>
<meta content="Gold Pass Book" name="Gold Pass Book" />
<meta content="Gold Pass Book" name="Yung" />
<link rel="shortcut icon" href="<%=request.getContextPath() %>/assets/images/favicon.ico">

<!-- C3 charts css -->
<link href="<%=request.getContextPath() %>/plugins/c3/c3.min.css" rel="stylesheet" type="text/css" />

<c:if test="${ fn:contains(path, 'list') }">
	<!-- DataTables -->
	<link href="<%=request.getContextPath() %>/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
	<!-- Responsive datatable examples -->
	<link href="<%=request.getContextPath() %>/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
</c:if>

<c:if test="${ fn:contains(path, 'upload') }">
	<!-- Dropzone css -->
	<link href="<%=request.getContextPath() %>/plugins/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
</c:if>

<link href="<%=request.getContextPath() %>/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath() %>/assets/css/icons.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet" type="text/css" />

<!-- jQuery  -->
<script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/jquery.slimscroll.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/waves.min.js"></script>
<script src="<%=request.getContextPath() %>/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

<!--C3 Chart-->
<script src="<%=request.getContextPath() %>/plugins/d3/d3.min.js"></script>
<script src="<%=request.getContextPath() %>/plugins/c3/c3.min.js"></script>
<script src="<%=request.getContextPath() %>/plugins/moment/moment.js"></script>

<c:if test="${ fn:contains(path, 'list') }">
	<!-- Required datatable js -->
	<script src="<%=request.getContextPath() %>/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/dataTables.bootstrap4.min.js"></script>
	<!-- Buttons examples -->
	<script src="<%=request.getContextPath() %>/plugins/datatables/dataTables.buttons.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/buttons.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/jszip.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/pdfmake.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/vfs_fonts.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/buttons.html5.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/buttons.print.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/buttons.colVis.min.js"></script>
	<!-- Responsive examples -->
	<script src="<%=request.getContextPath() %>/plugins/datatables/dataTables.responsive.min.js"></script>
	<script src="<%=request.getContextPath() %>/plugins/datatables/responsive.bootstrap4.min.js"></script>
	<!-- Datatable init js -->
	<script src="<%=request.getContextPath() %>/assets/pages/datatables.init.js"></script>
	<!-- Moment js -->
	<script src="<%=request.getContextPath() %>/plugins/moment/moment.js"></script>
</c:if>

<c:if test="${ fn:contains(path, 'upload') }">
   <!-- Dropzone js -->
   <script src="<%=request.getContextPath() %>/plugins/dropzone/dist/dropzone.js"></script>
</c:if>
<c:set var="page" value="${path}.jsp"/>