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
	
<script type="text/javascript">
	$(document).ready(function(){
		$(window).resize(function() {
			$('#dgAgm').datagrid({
	    		height:$(window).innerHeight()-global_height_gap
			});
		});
		$(function(){
	    	$('#dgAgm').datagrid({
	            onClickRow:function(){
	                var rows = $('#dgAgm').datagrid('getSelections');
	                var row = rows[rows.length - 1];
	                if (row){
	                    checkIpAddress(row.ipaddress);
	                }
	            },
	    		height:$(window).innerHeight()-global_height_gap,
	            pageList:global_pageList,
	            pageSize:global_pageSize
	        });
	    });
	});
	
	function reload() {
		$('#dgAgm').datagrid('reload'); 
	}
	
	function checkIpAddress(ipaddress){
		if(ipaddress != "" && ipaddress != undefined){
			window.open("http://ipinfo.io/"+ipaddress);
		}
	}
	
	function logout(){
		$.messager.confirm('Confirm','Are you sure to logout?',function(r){
			if(r){
				location.href = "<%=request.getContextPath()%>/logout";
			}
		});
	}
	function formatColumn(colName, value, row, index) {
	    return eval("row."+colName);
	}
</script>
</head>

<body onload="reload();">
  <div class="container">
   <%@ include file="/pages/common/common_header.jspf"%>
   
   <nav>
    <a href="<%=request.getContextPath()%>/manage" class="visited">Remote Access Info</a>
    <a href="<%=request.getContextPath()%>/logout">Logout</a>
   </nav>
   
   <article id="content">
   
    <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
	<div style="padding-left:5px;padding-bottom:5px;cursor:hand;">
	Welcome, administrator!
	</div>
	</c:if>
    
	<table id="dgAgm" class="easyui-datagrid" style="width:100%;height:600px;"
		url="<%=request.getContextPath()%>/manage/accesslist" idFiled="id" 
		toolbar="#toolbarAgm" pagination="true" rownumbers="true" fitColumns="true" singleSelect="true">
	<thead>
		<tr>
		    <th field="ipaddress" width="30">IP Address</th>
			<th field="ipinfoaa" width="30" formatter="(function(v,r,i){return formatColumn('ipinfo.city',v,r,i);})">City</th>
			<th field="firstdate" width="60">First Access</th>
			<th field="lastdate" width="50">Last Access</th>
			<th field="totalcount" width="50">Total Count</th>
		</tr>
	</thead>
	</table>

   </article>
   
   <%@ include file="/pages/common/common_footer.jspf"%>
  </div>  
 </body>   
</html>