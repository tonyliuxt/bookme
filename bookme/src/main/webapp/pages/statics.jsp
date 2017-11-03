<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
    <title>Liu's Driving School in Melbourne - Management</title> 
	<%@ include file="/pages/common/common_meta.jspf"%>
	<%@ include file="/pages/common/common_jsscripts.jspf"%>
	
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script> 
<script type="text/javascript">
window.onload = function() { 
	$("#chartContainer").CanvasJSChart({ 
		title: { 
			text: "Worldwide Smartphone sales by brand - 2012",
			fontSize: 24
		}, 
		axisY: { 
			title: "Products in %" 
		}, 
		legend :{ 
			verticalAlign: "center", 
			horizontalAlign: "right" 
		}, 
		data: [ 
		{ 
			type: "pie", 
			showInLegend: true, 
			toolTipContent: "{label} <br/> {y} %", 
			indexLabel: "{y} %", 
			dataPoints: [ 
				{ label: "Samsung",  y: 30.3, legendText: "Samsung"}, 
				{ label: "Apple",    y: 19.1, legendText: "Apple"  }, 
				{ label: "Huawei",   y: 4.0,  legendText: "Huawei" }, 
				{ label: "LG",       y: 3.8,  legendText: "LG Electronics"}, 
				{ label: "Lenovo",   y: 3.2,  legendText: "Lenovo" }, 
				{ label: "Others",   y: 39.6, legendText: "Others" } 
			] 
		} 
		] 
	}); 

	$("#subChartContainer").CanvasJSChart({ 
		title: { 
			text: "Worldwide Smartphone sales by brand - 2012",
			fontSize: 24
		}, 
		axisY: { 
			title: "Products in %" 
		}, 
		legend :{ 
			verticalAlign: "center", 
			horizontalAlign: "right" 
		}, 
		data: [ 
		{ 
			type: "pie", 
			showInLegend: true, 
			toolTipContent: "{label} <br/> {y} %", 
			indexLabel: "{y} %", 
			dataPoints: [ 
				{ label: "Samsung",  y: 30.3, legendText: "Samsung"}, 
				{ label: "Apple",    y: 19.1, legendText: "Apple"  }, 
				{ label: "Huawei",   y: 4.0,  legendText: "Huawei" }, 
				{ label: "LG",       y: 3.8,  legendText: "LG Electronics"}, 
				{ label: "Lenovo",   y: 3.2,  legendText: "Lenovo" }, 
				{ label: "Others",   y: 39.6, legendText: "Others" } 
			] 
		} 
		] 
	}); 
} 
</script>
</head>

<body>
  <div class="container">
   <%@ include file="/pages/common/common_header.jspf"%>
   
   <nav>
    <a href="<%=request.getContextPath()%>/manage">Remote Access Info</a>
    <a href="<%=request.getContextPath()%>/statics" class="visited">Remote Access Statics</a>
    <a href="<%=request.getContextPath()%>/questions">Learner Permit Test</a>
    <a href="<%=request.getContextPath()%>/logout">Logout</a>
   </nav>
   
   <article id="content">
   
    <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
		<div style="padding-left:5px;padding-bottom:5px;cursor:hand;">
		Welcome, administrator!
		</div>
	</c:if>
    
	<div id="chartContainer" style="width: 100%; height: 400px"></div> 
	
	<div id="subChartContainer" style="width: 100%; height: 400px"></div> 

   </article>
   
   <%@ include file="/pages/common/common_footer.jspf"%>
  </div>  
 </body>   
</html>