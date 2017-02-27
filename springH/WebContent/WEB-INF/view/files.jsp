<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script>
$(document).ready(function() {
	$.changeSelectedNav("nav-files-id");
});
</script>
<div>
<form>
<table>
<tr><td></td><td><input type="submit" value="一键删除"/></td></tr>
<c:forEach var="fileName" items="${fileNameList}" varStatus="status">
<tr><td><input type="checkbox" value="${fileName}" name="fileNames"/></td><td>${status.index}</td><td>${fileName}</td><td><a href="">删除</a></td></tr>
</c:forEach>
</table>
</form>
</div>