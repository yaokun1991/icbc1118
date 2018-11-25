<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD//XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<title>九九乘法表</title>
<script src="../js/jquery-1.4.4.min.js"></script>
<script>
	$(function(){
		$.ajax({
			type : 'post',
			url : "${pagecontext.request.getcontextpath}/findAll",
			dataType : "json",
			data : {},
			success : function(data) {
				alert(data);
			}

		})
	})
	
	function getModelList() {
		var brandId = $("select[name=brandId]").val();
		$("select[name=modelId]").empty(); //清空
		$.ajax({
			url : '/getModelList.do',
			type : "post",
			data : {
				brandId : brandId
			},
			cache : false,
			error : function() {
			},
			success : function(data) {
				var modelList = data.modelList;
				if (modelList && modelList.length != 0) {
					for (var i = 0; i < modelList.length; i++) {
						var option = "<option value=\"" + modelList[i].modelId
								+ "\"";
						if (_LastModelId
								&& _LastModelId == modelList[i].modelId) {
							option += " selected=\"selected\" "; //默认选中
							_LastModelId = null;
						}
						option += ">" + modelList[i].modelName + "</option>"; //动态添加数据
						$("select[name=modelId]").append(option);
					}
				}
			}
		});
	}
</script>

</head>


<body>
	<br />
	<div style="position: relative;">
		<span style="margin-left: 100px; width: 18px; overflow: hidden;">
			<select id="change" name="property"
			style="width: 118px; margin-left: -100px"
			onchange="this.parentNode.nextSibling.value=this.value">
		</select>
		</span> <input name="box"
			style="width: 100px; position: absolute; left: 0px;">
	</div>


	aaaa
	<div style="position: relative;">
		<span style="margin-left: 100px; width: 18px; overflow: hidden;">
			<select style="width: 118px; margin-left: -100px"
			onchange="this.parentNode.nextSibling.value=this.value">
				<option value="德国">德国</option>
				<option value="挪威">挪威</option>
				<option value="瑞士">瑞士</option>
		</select>
		</span> <input name="box"
			style="width: 100px; position: absolute; left: 0px;">
	</div>



	<select id="select1">
		<option value="-1">请选择</option>
	</select>

	<form id="form1" name="form1" method="post" action="result.jsp">
		<table width="350" border="1" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#aaccdd" bordercolor="#cccccc">
			<tr>
				<td width="101">startNumber:</td>
				<td width="113"><label> <input name="s" type="text"
						id="textfield" size="15" maxlength="8" height="20" />
				</label></td>
				<td width="68">&nbsp;<br /></td>
			</tr>
			<tr>
				<td>endNumber</td>
				<td><label> <input name="e" type="text" id="textfield2"
						size="15" maxlength="8" height="20" />
				</label></td>
				<td>&nbsp;<br /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><label> <input type="submit" name="button"
						id="button" value="submit" /> <input name="button2" type="reset"
						id="button2" value="reset" />
				</label></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</form>
</body>
</html>