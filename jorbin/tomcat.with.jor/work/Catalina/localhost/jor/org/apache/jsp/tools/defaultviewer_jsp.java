package org.apache.jsp.tools;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;

public final class defaultviewer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
    _jspx_dependants.add("/WEB-INF/tlds/jatools.tld");
    _jspx_dependants.add("/tools/toolsbar.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fjatools_005freport_0026_005ftemplate_005fid;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fjatools_005fcontainer_0026_005fstyle_005fid_005fnobody;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fjatools_005freport_0026_005ftemplate_005fid = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fjatools_005fcontainer_0026_005fstyle_005fid_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fjatools_005freport_0026_005ftemplate_005fid.release();
    _005fjspx_005ftagPool_005fjatools_005fcontainer_0026_005fstyle_005fid_005fnobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>简表 5.0</title>\r\n");
      out.write("<OBJECT ID=\"_jatoolsPrinter\" style='display:none' CLASSID=\"CLSID:B43D3361-D975-4BE2-87FE-057188254255\" codebase=\"jatoolsPrinter/jatoolsPrinter.cab#version=5,0,0,0\"></OBJECT>\r\n");
      out.write("<script src=\"js/jquery.js\"></script>\r\n");
      out.write("<script src=\"js/toolsbar.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body style='overflow:hidden;margin:0;padding:30px 0 5px 0;'>\r\n");

String file = request.getParameter("file");
if(file != null && file.startsWith("contextRoot:"))
{

 String tplRoot=getServletConfig().getServletContext().getRealPath("/");
  
 if(!tplRoot.endsWith(File.separator))
 {
 	tplRoot+= File.separator;
 }
 
 tplRoot+=file.substring(file.indexOf(":")+1);
 file = tplRoot.replace('\\','/');
}



      out.write('\r');
      out.write('\n');
      //  jatools:report
      jatools.tags.ReportTag _report1 = null;
      jatools.tags.ReportTag _jspx_th_jatools_005freport_005f0 = (jatools.tags.ReportTag) _005fjspx_005ftagPool_005fjatools_005freport_0026_005ftemplate_005fid.get(jatools.tags.ReportTag.class);
      _jspx_th_jatools_005freport_005f0.setPageContext(_jspx_page_context);
      _jspx_th_jatools_005freport_005f0.setParent(null);
      _jspx_th_jatools_005freport_005f0.setId("_report1");
      _jspx_th_jatools_005freport_005f0.setTemplate(file);
      int _jspx_eval_jatools_005freport_005f0 = _jspx_th_jatools_005freport_005f0.doStartTag();
      if (_jspx_eval_jatools_005freport_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_jatools_005freport_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_th_jatools_005freport_005f0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_jatools_005freport_005f0.doInitBody();
        }
        _report1 = (jatools.tags.ReportTag) _jspx_page_context.findAttribute("_report1");
        do {
          out.write('\r');
          out.write('\n');
          out.write("\r\n");
          out.write("\r\n");
          out.write("<style>\r\n");
          out.write("<!--\r\n");
          out.write(" div#header{\r\n");
          out.write("  position:absolute; \r\n");
          out.write("  top:0;\r\n");
          out.write("  left:0;\r\n");
          out.write("  padding:3px 3px 3px 3px;\r\n");
          out.write("  width:100%;\r\n");
          out.write("  height:30px;\r\n");
          out.write(" }\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write(" \r\n");
          out.write(" .active-page{border:solid 2 blue}\r\n");
          out.write("\r\n");
          out.write("  body>div#header{\r\n");
          out.write("   position:fixed;\r\n");
          out.write("  }\r\n");
          out.write(" div#_container_div{\r\n");
          out.write("  height:100%;\r\n");
          out.write("  overflow:auto;\r\n");
          out.write(" }\r\n");
          out.write(" \r\n");
          out.write(" BUTTON {padding: 0px;margin:0px;}\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write(".toolbutton {width: 25px; height: 25px; background-repeat: no-repeat center center;margin:0px;padding-left:0px;padding-right:0px\">\r\n");
          out.write("-->\r\n");
          out.write("</style>\r\n");
          out.write("\r\n");
          out.write("<script>\r\n");
          out.write("\r\n");
          out.write("function doZoom(z) {\r\n");
          out.write("    if (z.indexOf('-') == -1) jatoolsbar.zoomTo(z);\r\n");
          out.write("    else if (z == '-100') jatoolsbar.fitWholePage();\r\n");
          out.write("    else if (z == '-200') jatoolsbar.fitPageWidth();\r\n");
          out.write("    zoomChooser.value = z;\r\n");
          out.write("}\r\n");
          out.write("\r\n");
          out.write("function zoom(how) {\r\n");
          out.write("\r\n");
          out.write("    val = null;\r\n");
          out.write("    items = new Array(15, 30, 50, 75, 100, 125, 200, 300, 350, 400);\r\n");
          out.write("    z = jatoolsbar.currentScale;\r\n");
          out.write("    f = false;\r\n");
          out.write("    if (how == '+') {\r\n");
          out.write("        z++;\r\n");
          out.write("        for (i = 0; i < items.length; i++) {\r\n");
          out.write("            if (items[i] > z) {\r\n");
          out.write("                z = items[i];\r\n");
          out.write("                f = true;\r\n");
          out.write("                break;\r\n");
          out.write("            }\r\n");
          out.write("        }\r\n");
          out.write("    } else {\r\n");
          out.write("        z--;\r\n");
          out.write("        for (i = items.length - 1; i >= 0; i--) {\r\n");
          out.write("            if (items[i] < z) {\r\n");
          out.write("                z = items[i];\r\n");
          out.write("                f = true;\r\n");
          out.write("                break;\r\n");
          out.write("            }\r\n");
          out.write("        }\r\n");
          out.write("    }\r\n");
          out.write("    if (f) {\r\n");
          out.write("        doZoom(z + '');\r\n");
          out.write("    }\r\n");
          out.write("}\r\n");
          out.write("var jatoolsbar = null;\r\n");
          out.write("$().ready(function () {\r\n");
          out.write("    var pageChanged = function () {\r\n");
          out.write("        $('#_page_info').html(jatoolsbar.currentPage + \"/\" + jatoolsbar.pageCount);\r\n");
          out.write("    };\r\n");
          out.write("    jatoolsbar = new Jatoolsbar({\r\n");
          out.write("        container: '#_container_div',\r\n");
          out.write("        listeners: [pageChanged]\r\n");
          out.write("    });\r\n");
          out.write("    \r\n");
          out.write("    jatoolsbar.firstPage();\r\n");
          out.write("\r\n");
          out.write("});\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("</script>\r\n");
          //  jatools:container
          jatools.tags.ContainerTag _container = null;
          jatools.tags.ContainerTag _jspx_th_jatools_005fcontainer_005f0 = (jatools.tags.ContainerTag) _005fjspx_005ftagPool_005fjatools_005fcontainer_0026_005fstyle_005fid_005fnobody.get(jatools.tags.ContainerTag.class);
          _jspx_th_jatools_005fcontainer_005f0.setPageContext(_jspx_page_context);
          _jspx_th_jatools_005fcontainer_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_jatools_005freport_005f0);
          _jspx_th_jatools_005fcontainer_005f0.setId("_container");
          _jspx_th_jatools_005fcontainer_005f0.setStyle("margin:0;zoom:100%;height:100%;width:100%;overflow:auto;border:medium none thin threedhighlight inset;background:#808080");
          int _jspx_eval_jatools_005fcontainer_005f0 = _jspx_th_jatools_005fcontainer_005f0.doStartTag();
          if (_jspx_th_jatools_005fcontainer_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            _005fjspx_005ftagPool_005fjatools_005fcontainer_0026_005fstyle_005fid_005fnobody.reuse(_jspx_th_jatools_005fcontainer_005f0);
            return;
          }
          _container = (jatools.tags.ContainerTag) _jspx_page_context.findAttribute("_container");
          _005fjspx_005ftagPool_005fjatools_005fcontainer_0026_005fstyle_005fid_005fnobody.reuse(_jspx_th_jatools_005fcontainer_005f0);
          out.write("\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("<div id='header' >\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("<button id='printbutton2' style='disabled:true' onclick ='jatoolsbar.print(false)' title='打印'  class=\"toolbutton\"  ><img src='tools/images/print.gif' /></button><button id='previewbutton' style='disabled:true' onclick ='jatoolsbar.printPreview()' title='打印预览...' class=\"toolbutton\"  ><img src='tools/images/preview.gif' /></button>&nbsp;&nbsp;<button onclick ='jatoolsbar.exportAs(\"xls\")' title='导出成Excel' class=\"toolbutton\" ><img src='tools/images/xls.gif' /></button><button onclick ='jatoolsbar.exportAs(\"pdf\")' title='导出成PDF' class=\"toolbutton\" ><img src='tools/images/pdf.gif' /></button><button onclick ='jatoolsbar.exportAs(\"rtf\")' title='导出成Word' class=\"toolbutton\" ><img src='tools/images/word.gif' /></button>&nbsp;&nbsp;<button onclick ='jatoolsbar.firstPage()' title='第一页' class=\"toolbutton\" ><img src='tools/images/first.gif' /></button><button onclick ='jatoolsbar.previousPage()' title='前一页' class=\"toolbutton\" ><img src='tools/images/previous.gif' /></button><span id='_page_info'></span><button onclick ='jatoolsbar.nextPage()' title='后一页' class=\"toolbutton\"><img src='tools/images/next.gif' /></button><button onclick ='jatoolsbar.lastPage()' title='最后一页' class=\"toolbutton\"  ><img src='tools/images/last.gif' /></button>&nbsp;&nbsp; <button onclick ='zoom(\"-\")' title='缩小' class=\"toolbutton\" ><img src='tools/images/zoomout.gif' /></button><button onclick ='zoom(\"+\")' title='放大' class=\"toolbutton\" ><img src='tools/images/zoomin.gif' /></button><select size=\"1\" name=\"zoomChooser\" onchange = 'doZoom(zoomChooser.value)'><option value=\"15\">15%</option><option value=\"30\">30%</option> <option value=\"50\">50%</option> <option value=\"75\">75%</option><option value=\"100\" selected>100%</option><option value=\"125\">125%</option> <option value=\"200\">200%</option> <option value=\"300\">300%</option> <option value=\"350\">350%</option> <option value=\"400\">400%</option> <option value=\"-100\">整页</option> <option value=\"-200\">页宽</option></select>&nbsp; <button onclick ='doZoom(\"100\")' title='原始大小' class=\"toolbutton\"  ><img src='tools/images/zoom100.gif' /></button><button onclick ='doZoom(\"-100\")' title='整页显示' class=\"toolbutton\"  ><img src='tools/images/wholepage.gif' /></button><button onclick ='doZoom(\"-200\")' title='按页宽显示' class=\"toolbutton\"  ><img src='tools/images/zoom2w.gif' /></button>\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("</div>\r\n");
          out.write("\r\n");
          out.write("\r\n");
          out.write("\r\n");
 _container.writeOut(); 
          out.write("\r\n");
          out.write("\r\n");
          out.write('\r');
          out.write('\n');
          int evalDoAfterBody = _jspx_th_jatools_005freport_005f0.doAfterBody();
          _report1 = (jatools.tags.ReportTag) _jspx_page_context.findAttribute("_report1");
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_jatools_005freport_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.popBody();
        }
      }
      if (_jspx_th_jatools_005freport_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _005fjspx_005ftagPool_005fjatools_005freport_0026_005ftemplate_005fid.reuse(_jspx_th_jatools_005freport_005f0);
        return;
      }
      _report1 = (jatools.tags.ReportTag) _jspx_page_context.findAttribute("_report1");
      _005fjspx_005ftagPool_005fjatools_005freport_0026_005ftemplate_005fid.reuse(_jspx_th_jatools_005freport_005f0);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
