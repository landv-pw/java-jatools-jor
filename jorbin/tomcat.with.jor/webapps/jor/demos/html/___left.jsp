<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*" %>
<% 

 String examplePath=getServletConfig().getServletContext().getRealPath("/");
  
 if(!examplePath.endsWith(File.separator))
 {
 	examplePath+= File.separator ;
 }
 
 examplePath+=("demos"+File.separator+"templates"+File.separator);
 examplePath = examplePath.replace('\\','/');


%>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="CHM Decoder by GridinSoft LLC   www.gridinsoft.com"><link rel="StyleSheet" href="___dtree.css" type="text/css" />
<script type="text/javascript" src="___dtree.js"></script>
<style>
body * {font-size:12px;}
</style>
</head>
<body>
<!-- Generated by CHM Decoder (http://www.gridinsoft.com) -->
<div class="dtree" style="height:101%;">
<p><a href="javascript: d.openAll();">open all</a> | <a href="javascript: d.closeAll();">close all</a></p>
<script type="text/javascript"><!--
d = new dTree("d","<%=examplePath%>");
d.openNode("简表(JOR)在线演示","");
	d.openNode("功能演示","");
		d.openNode("表格与交叉表","");
			d.add("每一分组占一页","../../reportviewer?file=","功能演示/表格与交叉表/每一分组占一页.xml");
			d.add("多数据集交叉表","../../reportviewer?file=","功能演示/表格与交叉表/多数据集交叉表.xml");
			d.add("行列并行分组交叉表","../../reportviewer?file=","功能演示/表格与交叉表/行列并行分组交叉表.xml");
			d.add("层次不等的交叉表","../../reportviewer?file=","功能演示/表格与交叉表/层次不等的交叉表.xml");
			d.add("按汇总值排序的交叉表","../../reportviewer?file=","功能演示/表格与交叉表/按汇总值排序的交叉表.xml");
			d.add("排名的交叉报表","../../reportviewer?file=","功能演示/表格与交叉表/排名的交叉报表.xml");
			d.add("多级交叉表","../../reportviewer?file=","功能演示/表格与交叉表/多级交叉表.xml");
			
			d.add("占比","../../reportviewer?file=","功能演示/表格与交叉表/占比.xml");
			d.add("比去年增长","../../reportviewer?file=","功能演示/表格与交叉表/比去年增长.xml");
			d.add("去年同期比","../../reportviewer?file=","功能演示/表格与交叉表/去年同期比.xml");
			d.add("排行榜","../../reportviewer?file=","功能演示/表格与交叉表/排行榜.xml");
		d.closeNode();
		d.openNode("脚本","");
			d.add("斑马条","../../reportviewer?file=","功能演示/脚本/斑马条.xml");
			d.add("本页小计与累计","../../reportviewer?file=","功能演示/脚本/本页小计与累计.xml");
			d.add("用脚本进行复杂统计","../../reportviewer?file=","功能演示/脚本/用脚本进行复杂统计.xml");
			d.add("颜色告警","../../reportviewer?file=","功能演示/脚本/颜色告警.xml");
			d.add("引入自定义脚本函数","../../reportviewer?file=","功能演示/脚本/引入自定义脚本函数.xml");
		d.closeNode();
		d.openNode("特殊报表效果","");
			d.add("分栏报表","../../reportviewer?file=","功能演示/特殊报表效果/分栏报表.xml");
			d.add("空行补足表格","../../reportviewer?file=","功能演示/特殊报表效果/空行补足表格.xml");
			d.add("超链接主报表","../../reportviewer?file=","功能演示/特殊报表效果/超链接主报表.xml");
			d.add("套打","../../reportviewer?file=","功能演示/特殊报表效果/套打.xml");
			d.add("编码字典","../../reportviewer?file=","功能演示/特殊报表效果/编码字典.xml");
					
		d.closeNode();
		d.openNode("java对象数据源","");
			d.add("tablemodel数据源","../../reportviewer?file=","功能演示/java对象数据源/tablemodel数据源.xml");
			d.add("resultset数据源","../../reportviewer?file=","功能演示/java对象数据源/resultset数据源.xml");
			d.add("嵌套的java对象数据源","../../reportviewer?file=","功能演示/java对象数据源/嵌套的java对象数据源.xml");
		d.closeNode();
		
	d.openNode("统计图、条形码与图片","");
			d.add("交叉表到k线图","../../reportviewer?file=","功能演示/统计图、条形码与图片/交叉表到k线图.xml");
			d.add("条状图到饼图","../../reportviewer?file=","功能演示/统计图、条形码与图片/条状图到饼图.xml");
			d.add("面积图到普通报表","../../reportviewer?file=","功能演示/统计图、条形码与图片/面积图到普通报表.xml");
		
			d.add("标签报表.条形码","../../reportviewer?file=","功能演示/统计图、条形码与图片/标签报表.条形码.xml");
			d.add("背景图片","../../reportviewer?file=","功能演示/统计图、条形码与图片/背景图片.xml");
					d.add("显示数据库图片字段","../../reportviewer?file=","功能演示/统计图、条形码与图片/显示数据库图片字段.xml");
		d.closeNode();
		
		
	d.closeNode();	
	d.openNode("其他行业报表","");
		d.add("政府统计表","../../reportviewer?file=","其他行业报表/政府统计表.xml");
		d.add("政府月报","../../reportviewer?file=","其他行业报表/政府月报.xml");
		d.add("外贸清单","../../reportviewer?file=","其他行业报表/外贸清单.xml");
		d.add("外贸发票","../../reportviewer?file=","其他行业报表/外贸发票.xml");
		d.add("外贸托委书","../../reportviewer?file=","其他行业报表/外贸托委书.xml");
		d.add("外贸报关单","../../reportviewer?file=","其他行业报表/外贸报关单.xml");
		d.add("销售客户档案","../../reportviewer?file=","其他行业报表/销售客户档案.xml");
		d.add("教育就业率","../../reportviewer?file=","其他行业报表/教育就业率.xml");
		d.add("财务资产负债表","../../reportviewer?file=","其他行业报表/财务资产负债表.xml");
		d.add("财务利润表","../../reportviewer?file=","其他行业报表/财务利润表.xml");
		d.add("保险汇总单","../../reportviewer?file=","其他行业报表/保险汇总单.xml");
		d.add("保险月报表","../../reportviewer?file=","其他行业报表/保险月报表.xml");
		d.add("保险业绩表","../../reportviewer?file=","其他行业报表/保险业绩表.xml");	
	d.closeNode();
d.closeNode();	

document.write(d);


//-->
</script>
</div>
<p \><hr size="1" \>
<font class="dtree">杰创软件拥有版权</font>
</body>
</html>
