<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
<!--
 div#header{
  position:absolute; 
  top:0;
  left:0;
  padding:3px 3px 3px 3px;
  width:100%;
  height:30px;
 }


 
 .active-page{border:solid 2 blue}

  body>div#header{
   position:fixed;
  }
 div#_container_div{
  height:100%;
  overflow:auto;
 }
 
 BUTTON {padding: 0px;margin:0px;}


.toolbutton {width: 25px; height: 25px; background-repeat: no-repeat center center;margin:0px;padding-left:0px;padding-right:0px">
-->
</style>

<script>

function doZoom(z) {
    if (z.indexOf('-') == -1) jatoolsbar.zoomTo(z);
    else if (z == '-100') jatoolsbar.fitWholePage();
    else if (z == '-200') jatoolsbar.fitPageWidth();
    zoomChooser.value = z;
}

function zoom(how) {

    val = null;
    items = new Array(15, 30, 50, 75, 100, 125, 200, 300, 350, 400);
    z = jatoolsbar.currentScale;
    f = false;
    if (how == '+') {
        z++;
        for (i = 0; i < items.length; i++) {
            if (items[i] > z) {
                z = items[i];
                f = true;
                break;
            }
        }
    } else {
        z--;
        for (i = items.length - 1; i >= 0; i--) {
            if (items[i] < z) {
                z = items[i];
                f = true;
                break;
            }
        }
    }
    if (f) {
        doZoom(z + '');
    }
}
var jatoolsbar = null;
$().ready(function () {
    var pageChanged = function () {
        $('#_page_info').html(jatoolsbar.currentPage + "/" + jatoolsbar.pageCount);
    };
    jatoolsbar = new Jatoolsbar({
        container: '#_container_div',
        listeners: [pageChanged]
    });
    
    jatoolsbar.firstPage();

});


</script>
<jatools:container id="_container" style='margin:0;zoom:100%;height:100%;width:100%;overflow:auto;border:medium none thin threedhighlight inset;background:#808080' />



<div id='header' >


<button id='printbutton2' style='disabled:true' onclick ='jatoolsbar.print(false)' title='打印'  class="toolbutton"  ><img src='tools/images/print.gif' /></button><button id='previewbutton' style='disabled:true' onclick ='jatoolsbar.printPreview()' title='打印预览...' class="toolbutton"  ><img src='tools/images/preview.gif' /></button>&nbsp;&nbsp;<button onclick ='jatoolsbar.exportAs("xls")' title='导出成Excel' class="toolbutton" ><img src='tools/images/xls.gif' /></button><button onclick ='jatoolsbar.exportAs("pdf")' title='导出成PDF' class="toolbutton" ><img src='tools/images/pdf.gif' /></button><button onclick ='jatoolsbar.exportAs("rtf")' title='导出成Word' class="toolbutton" ><img src='tools/images/word.gif' /></button>&nbsp;&nbsp;<button onclick ='jatoolsbar.firstPage()' title='第一页' class="toolbutton" ><img src='tools/images/first.gif' /></button><button onclick ='jatoolsbar.previousPage()' title='前一页' class="toolbutton" ><img src='tools/images/previous.gif' /></button><span id='_page_info'></span><button onclick ='jatoolsbar.nextPage()' title='后一页' class="toolbutton"><img src='tools/images/next.gif' /></button><button onclick ='jatoolsbar.lastPage()' title='最后一页' class="toolbutton"  ><img src='tools/images/last.gif' /></button>&nbsp;&nbsp; <button onclick ='zoom("-")' title='缩小' class="toolbutton" ><img src='tools/images/zoomout.gif' /></button><button onclick ='zoom("+")' title='放大' class="toolbutton" ><img src='tools/images/zoomin.gif' /></button><select size="1" name="zoomChooser" onchange = 'doZoom(zoomChooser.value)'><option value="15">15%</option><option value="30">30%</option> <option value="50">50%</option> <option value="75">75%</option><option value="100" selected>100%</option><option value="125">125%</option> <option value="200">200%</option> <option value="300">300%</option> <option value="350">350%</option> <option value="400">400%</option> <option value="-100">整页</option> <option value="-200">页宽</option></select>&nbsp; <button onclick ='doZoom("100")' title='原始大小' class="toolbutton"  ><img src='tools/images/zoom100.gif' /></button><button onclick ='doZoom("-100")' title='整页显示' class="toolbutton"  ><img src='tools/images/wholepage.gif' /></button><button onclick ='doZoom("-200")' title='按页宽显示' class="toolbutton"  ><img src='tools/images/zoom2w.gif' /></button>



</div>



<% _container.writeOut(); %>

