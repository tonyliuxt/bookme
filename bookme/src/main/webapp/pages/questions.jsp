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
var global_height_gap = 220;

var global_pageList = [20,50,100,200];
var global_pageSize = 50;

	$(document).ready(function(){
		$(window).resize(function() {
			$('#dg').datagrid({
	    		height:$(window).innerHeight()-global_height_gap
			});
		});
		$(function(){
	    	$('#dg').datagrid({
	            onClickRow:function(){
	                var rows = $('#dg').datagrid('getSelections');
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
		$('#dg').datagrid('reload'); 
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
    <a href="<%=request.getContextPath()%>/manage">Remote Access Info</a>
    <a href="<%=request.getContextPath()%>/statics" class="visited">Remote Access Statics</a>
    <a href="<%=request.getContextPath()%>/questions" class="visited">Learner Permit Test</a>
    <a href="<%=request.getContextPath()%>/logout">Logout</a>
   </nav>
   
   <article id="content">
   
    <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
	<div style="padding-left:5px;padding-bottom:5px;cursor:hand;">
	Welcome, administrator! <BR>
	F:\eclipse\workspace\git\bookme\bookme\src\main\webapp\css\testimg\
	</div>
	</c:if>
    
	<table id="dg" title="Practice Questions" class="easyui-datagrid" style="width:100%;height:600px;"
            url="<%=request.getContextPath()%>/questions/list" 
            toolbar="#toolbar" pagination="true" 
            rownumbers="true" fitColumns="true" singleSelect="true">
        <thead>
            <tr>
                <th field="ctitle" width="80">C Question Title</th>
                <th field="etitle" width="80">E Question Title</th>
                <th field="coptions" width="80">coptions</th>
                <th field="eoptions" width="80">eoptions</th>
                <th field="cinstruction" width="80">Instruction</th>
                <th field="einstruction" width="80">Reference</th>
                <th field="answer" width="80">Answer Index</th>
                <th field="imgpath" width="50">Image Path</th>
            </tr>
        </thead>
    </table>
    <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newQuestions()">New Question</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editQuestions()">Edit Question</a>
        <!--  a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyQuestions()">Remove Question</a>-->
    </div>
    
    <div id="dlg" class="easyui-dialog" style="width:650px" closed="true" buttons="#dlg-buttons">
        <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
            <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc">Questions Information</div>
			<input type="hidden" name="id">
			<!--  -->
            <div style="margin-bottom:10px">
                <input name="ctitle" class="easyui-textbox" required="true" label="C_Title:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="etitle" class="easyui-textbox" required="true" label="E_Title:" style="width:100%">
            </div>

			<!--  -->
            <div style="margin-bottom:10px">
                <input name="coptions[0]" id="coptions0" class="easyui-textbox" required="true" label="C_Option[0]:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="coptions[1]" id="coptions1" class="easyui-textbox" label="C_Option[1]:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="coptions[2]" id="coptions2" class="easyui-textbox" label="C_Option[2]:" style="width:100%">
            </div>

			<!--  -->
            <div style="margin-bottom:10px">
                <input name="eoptions[0]" id="eoptions0"class="easyui-textbox" label="E_Option[0]:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="eoptions[1]" id="eoptions1" class="easyui-textbox" label="E_Option[1]:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="eoptions[2]" id="eoptions2" class="easyui-textbox" label="E_Option[2]:" style="width:100%">
            </div>

			<!--  -->
            <div style="margin-bottom:10px">
                <input name="imgpath" class="easyui-textbox" label="Image Path:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="cinstruction" class="easyui-textbox" label="C_Instruction:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="einstruction" class="easyui-textbox" label="E_Instruction:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="answer" class="easyui-textbox" label="Answer[0,1,2]:" style="width:100%">
            </div>

        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveQuestions()" style="width:90px">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
    </div>
    <script type="text/javascript">
        var url;
        function newQuestions(){
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','New Questions');
            $('#fm').form('clear');
            url = '<%=request.getContextPath()%>/questions/add';
        }
        function editQuestions(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','Edit Questions');
                $('#fm').form('load',row);
                
                $('#coptions0').textbox('setValue',row.coptions[0]);
                $('#coptions1').textbox('setValue',row.coptions[1]);
                $('#coptions2').textbox('setValue',row.coptions[2]);
                
                $('#eoptions0').textbox('setValue',row.eoptions[0]);
                $('#eoptions1').textbox('setValue',row.eoptions[1]);
                $('#eoptions2').textbox('setValue',row.eoptions[2]); 
                
                url = '<%=request.getContextPath()%>/questions/add';
            }
        }
        function saveQuestions(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(data){
                	var data = eval('(' + data + ')');
    				$.messager.show({
    	                title: 'Message',
    	                msg: data.result,
    					showType:'slide',
    					style:{ 
    						right:'',
    						top:document.body.scrollTop+document.documentElement.scrollTop,
    						bottom:''
    					}
    				});
                    $('#dlg').dialog('close');        // close the dialog
                    $('#dg').datagrid('reload');    // reload the Questions data
                }
            });
        }
        function destroyQuestions(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to destroy this Questions?',function(r){
                    if (r){
                        $.post('<%=request.getContextPath()%>/questions/del?id='+row.id,function(data){
                            $('#dg').datagrid('reload');    // reload the user data
                            $.messager.show({    // show error message
                                title: 'Message',
                                msg: data.result,
                                showType:'slide',
                				style:{
                					right:'',
                					top:document.body.scrollTop+document.documentElement.scrollTop,
                					bottom:''
                				}
                            });
                        },'json');
                    }
                });
            }
        }
    </script>

   </article>
   
   <%@ include file="/pages/common/common_footer.jspf"%>
  </div>  
 </body>   
</html>