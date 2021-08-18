<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>

<% 

 String examplePath=getServletConfig().getServletContext().getRealPath("/");
  
 if(!examplePath.endsWith(File.separator))
 {
 	examplePath+= File.separator ;
 }
 
 examplePath+=("demos"+File.separator+"templates"+File.separator);

 examplePath = examplePath.replace('\\','/');


%>
<html>
<head><title>自定义动态列报表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
BODY {
	COLOR: #333333; 
	FONT-FAMILY: Arial,helvetica,Vernada; 
	FONT-SIZE: 14px; 
	TEXT-DECORATION: none
}
.text_navi {
	COLOR: #005dac
}
.text_navi:link {
	COLOR: #005dac; TEXT-DECORATION: underline
}
.text_navi:active {
	COLOR: #005dac; TEXT-DECORATION: underline
}
.text_navi:visited {
	COLOR: #005dac; TEXT-DECORATION: underline
}
.text_navi:hover {
	COLOR: #006633; TEXT-DECORATION: underline
}
.sche_03 {
	BACKGROUND-COLOR: #f5f5f5; COLOR: #050505; FONT-FAMILY: Arial,helvetica,Vernada; FONT-SIZE: 12px; LINE-HEIGHT: 17px
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
.input {
	FONT-FAMILY: Vernada,Arial,helvetica;
	FONT-SIZE: 12px; 
	VERTICAL-ALIGN: middle; 
	COLOR: #333333; 
}
	
-->
</style>

<SCRIPT LANGUAGE="JavaScript">
<!--

var url="../../reportviewer?file=<%=examplePath%>功能演示/特殊报表效果/动态列报表.xml";
function myopen()
{
     window.open(url,'','resizable,scrollbars,height=600,width=850');
}
	
function buildUrl()
{
    var _url ="../../reportviewer?file=<%=examplePath%>功能演示/特殊报表效果/动态列报表.xml";
    var myfields = "";
    var mytitles = "";
    
	var toElement = getElement("tofields");
	if (toElement.options.length>0){
		for(var i=0;i<toElement.options.length;i++){
		    var item = toElement.options[i].value.split(",");
		    myfields += myfields == ""? item[0]: (";"+item[0]);
		    mytitles += mytitles == ""? item[1]: (";"+item[1]);
		}
	}
	if(myfields.length>0)
	{
	   _url += "&myfields="+myfields+"&mytitles="+mytitles;
	      
	}
	return _url;
}

function getElement(obj){
	return document.getElementById(obj);
}
	
function deleteItem(){
	delElement=getElement("tofields");
	if(delElement.options.selectedIndex==-1){
		alert("请选择后再删除!")
		return false;
	}
	if(delElement.options.length==0){
		alert("选项为空!");
		return false;
	}
	
	if(delElement.options.length>=0)	{
		var	delIndex=delElement.options.selectedIndex;		
		delElement.options.remove(delIndex);
		
	}
	
	url = buildUrl();
    document.getElementById('urllabel').innerHTML=url;	
	
}

function addItem(){
	var fromElement=getElement("fromfields");
	if(fromElement.options.selectedIndex==-1){
		alert("请选择后再添加!")
		return false;
	}
	var toElement=getElement("tofields");
	var	selectedIndex=fromElement.options.selectedIndex;
	var fromValue=fromElement.options[selectedIndex].value;
	var i=0;
	

	if (toElement.options.length>0){
		for(i=0;i<toElement.options.length;i++){
			if(fromValue==toElement.options[i].value){
				alert("此项已经添加!");
				return false;	
			}
		}
	}
	
	var oOption = document.createElement("OPTION");
	toElement.options.add(oOption);
	oOption.innerText = fromValue;
	oOption.value = fromValue;
	
    url=buildUrl();
    document.getElementById('urllabel').innerHTML=url;


}
	


// -->

</SCRIPT>
</head>
<body>
<br>
选择需要显示的列：
<br>
<br>


<table border="0" cellspacing="0"  id="AutoNumber1" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" width="450" height="100">
  <tr>
    <td rowspan="4" width="193" height="100"><select size=5 name='fromfields' multiple class="sche_03" style='width:170'>
				<option value="NAME,国家">国家</option>
				<option value="CAPITAL,首都">首都</option>
				<option value="CONTINENT,所在洲">所在洲</option>		
				<option value="POPULATION,人口">人口</option>
				<option value="AREA,面积(平方公里)">面积(平方公里)</option>						
			</select></td>
    <td width="87" height="19" >
    &nbsp;</td>
    <td rowspan="4" width="170" height="100">
			<select name="tofields" size=5 MULTIPLE style="width:170">
		</td>
  </tr>
  <tr>
    <td width="87" height="25" >
    <INPUT class=input TYPE="image" NAME="" src="add.gif" OnClick="JavaScript:addItem()" width="62" height="19"></td>
  </tr>
  <tr>
    <td width="87" height="38">
    <INPUT class=input TYPE="image" NAME="" src="del.gif"  OnClick="JavaScript:deleteItem()" width="62" height="19"></td>
  </tr>
  <tr>
    <td width="87" height="18"></td>
  </tr>
</table>
<p>&nbsp;</p>
<table>

	
将要提交的url：<span class="text">
<p> <div id='urllabel'>../../reportviewer?file=<%=examplePath%>功能演示/特殊报表效果/动态列报表.xml&as=dhtml</span></div>
</p>
<p><font face="Arial, Helvetica, sans-serif">
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="text_navi" href="#" onClick="myopen();return false;">dhtml 演示</a></font></p>
</body>
