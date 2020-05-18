<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/web-view/header.jsp" %>
</head>
<body>
<%@include file="/web-view/navbar.jsp" %>
	<jsp:include page="${page}" />
<%@include file="/web-view/footer.jsp" %>
</body>
</html>