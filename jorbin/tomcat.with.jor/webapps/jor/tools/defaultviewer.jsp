<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
<%@ taglib uri="/WEB-INF/tlds/jatools.tld" prefix="jatools" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>简表 5.0</title>
<OBJECT ID="_jatoolsPrinter" style='display:none' CLASSID="CLSID:B43D3361-D975-4BE2-87FE-057188254255" codebase="jatoolsPrinter/jatoolsPrinter.cab#version=5,0,0,0"></OBJECT>
<script src="js/jquery.js"></script>
<script src="js/toolsbar.js"></script>
</head>
<body style='overflow:hidden;margin:0;padding:30px 0 5px 0;'>
<%
String file = request.getParameter("file");
if(file != null && file.startsWith("contextRoot:"))
{

 String tplRoot=getServletConfig().getServletContext().getRealPath("/");
  
 if(!tplRoot.endsWith(File.separator))
 {
 	tplRoot+= File.separator;
 }
 
 tplRoot+=file.substring(file.indexOf(":")+1);
 file = tplRoot.replace('\\','/');
}


%>
<jatools:report id="_report1" template="<%=file%>" >
<%@ include file='toolsbar.jsp'%>
</jatools:report>
</body>
</html>
