function Jatoolsbar(cfg) {
    this.ct = $(cfg.container);
    this.pageCount = $('div.pcls', this.ct).length;
    this.listeners = cfg.listeners;
    this.currentPage = -1;
    this.setCurrentPage = function (p) {
        if (p > 0 && p <= this.pageCount && p != this.currentPage) {
            this.currentPage = p;
            this.pageChanged();
        }
    };
    this.previousPage = function () {
        this.setCurrentPage(this.currentPage - 1);
    };
    this.nextPage = function () {
        this.setCurrentPage(this.currentPage + 1);
    };
    this.lastPage = function () {
        this.setCurrentPage(this.pageCount);
    };
    this.firstPage = function () {
        this.setCurrentPage(1);
    };
    this.activePage = null;
    this.pageChanged = function () {
        $(this.activePage).removeClass('active-page');
        this.activePage = $('#_page_' + this.currentPage, this.ct).addClass('active-page');
        this.scrollToVisible(this.activePage);
        $.each(this.listeners || [], function (i, lst) {
            lst.call()
        });
    };
    this.scrollToVisible = function (e) {
        var z = e.parent().css('zoom');
        if (z && z != 'normal') {
            z = parseInt(z.substr(0, z.length - 1)) / 100.0;
        } else z = 1.0;
        var m = e.css('margin');
        if (m) {
            m = parseInt(m);
        } else m = 0;
        e.parent().scrollTop((e[0].offsetTop - m) * z).scrollLeft((e[0].offsetLeft - m) * z);
    }
    this.currentScale = 100;
    this.step = 10;
    this.max = 500;
    this.min = 10;
    this.zoomIn = function () {

        this.zoomTo(this.currentScale + this.step);
    };
    this.zoomOut = function () {
        this.zoomTo(this.currentScale - this.step);
    };
    this.zoomNo = function () {
        this.zoomTo(100);
    };
    this.fitPageWidth = function () {
    	debugger;
        if (this.activePage) {
            var e = this.activePage,
                z = this.activePage.parent().css('zoom');
            if (z) {
                z = parseInt(z.substr(0, z.length - 1)) / 100.0;
            } else z = 1.0;
            
            var m = e.parent().css('margin');
            if (m) {
                m = parseInt(m);
            } else m = 0;
            this.zoomTo(e.parent().parent().width() * 100 / (e.width() + 3 * m));
            this.scrollToVisible(e);
        }
    };
    this.fitWholePage = function () {
        if (this.activePage) {
            var e = this.activePage;
            var z = e.parent().css('zoom');
            if (z) {
                z = parseInt(z.substr(0, z.length - 1)) / 100.0;
            } else z = 1.0;
            var m = e.css('margin');
            if (m) {
                m = parseInt(m);
            } else m = 0;
            zx = e.parent().width() * 100 / (e.parent().width() + 3 * m);
            zy = e.parent().parent().height() * 100 / (e.height() + 3 * m);
            if (zx < zy) this.zoomTo(zx);
            else this.zoomTo(zy);
            this.scrollToVisible(e);
        }
    };
    this.zoomTo = function (z) {
        if (this.ct && z >= this.min && z <= this.max) {
            this.ct.css('zoom', z + "%");
            this.currentScale = z;
        }
    }
    this.asDoc = function () {
        //<div id='jsettings' orientation='1' pageWidth='2100' pageHeight='7860' />
        //
        if (!this.doc) {
            var d = $('#jsettings', this.ct);
            this.doc = {
                settings: {
                    pageWidth: parseInt(d.attr('pageWidth')),
                    pageHeight: parseInt(d.attr('pageHeight')),
                    orientation: parseInt(d.attr('orientation'))
                },
                marginIgnored: true,
                documents: document,
                copyrights: '杰创软件拥有版权 www.jatools.com' //��Ȩ��������
            };
        }
        return this.doc;
    }
    this.print = function (prompt) {
        _jatoolsPrinter.print(this.asDoc(), prompt);
    };
    this.printPreview = function () {
        _jatoolsPrinter.printPreview(this.asDoc());
    };
    this.exportAs = function (as) {
        window.location = "jatoolsreport?_action_type=export&do_export=1&_job_session_id=" + $('#jsettings', this.ct).attr('jobSessionId') + "&as=" + as;
    };
    

}

