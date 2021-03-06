(function() {
    function SlickGridPager(dataView, grid, $container)
    {
        var $status, $contextMenu;

        function init()
        {
            dataView.onPagingInfoChanged.subscribe(function(pagingInfo) {
                updatePager(pagingInfo);
            });

            constructPagerUI();
            updatePager(dataView.getPagingInfo());
        }

		function getNavState()
		{
			var cannotLeaveEditMode = !Slick.GlobalEditorLock.commitCurrentEdit();
			var pagingInfo = dataView.getPagingInfo();
			var lastPage = Math.floor(pagingInfo.totalRows/pagingInfo.pageSize);

            return {
                canGotoFirst:	!cannotLeaveEditMode && pagingInfo.pageSize != 0 && pagingInfo.pageNum > 0,
                canGotoLast:	!cannotLeaveEditMode && pagingInfo.pageSize != 0 && pagingInfo.pageNum != lastPage,
                canGotoPrev:	!cannotLeaveEditMode && pagingInfo.pageSize != 0 && pagingInfo.pageNum > 0,
                canGotoNext:	!cannotLeaveEditMode && pagingInfo.pageSize != 0 && pagingInfo.pageNum < lastPage,
                pagingInfo:		pagingInfo,
                lastPage:		lastPage
            }
        }

        function setPageSize(n)
        {
            dataView.setPagingOptions({pageSize:n});
        }

        function gotoFirst()
        {
            if (getNavState().canGotoFirst)
                dataView.setPagingOptions({pageNum: 0});
        }

        function gotoLast()
        {
            var state = getNavState();
            if (state.canGotoLast)
                dataView.setPagingOptions({pageNum: state.lastPage});
        }

        function gotoPrev()
        {
            var state = getNavState();
            if (state.canGotoPrev)
                dataView.setPagingOptions({pageNum: state.pagingInfo.pageNum-1});
        }

        function gotoNext()
        {
            var state = getNavState();
            if (state.canGotoNext)
                dataView.setPagingOptions({pageNum: state.pagingInfo.pageNum+1});
        }

        function constructPagerUI()
        {
            $container.empty();

            $status = $("<span class='slick-pager-status' />").appendTo($container);

            var $nav = $("<span class='slick-pager-nav' />").appendTo($container);
            var $settings = $("<span class='slick-pager-settings' />").appendTo($container);

            $settings
                    .append("<span class='slick-pager-settings-expanded' style='display:none'>Mostrar: <a data=0>Todo</a><a data='-1'>Auto</a><a data=25>25</a><a data=50>50</a><a data=100>100</a></span>");

            $settings.find("a[data]").click(function(e) {
                var pagesize = $(e.target).attr("data");
                if (pagesize != undefined)
                {
                    if (pagesize == -1)
                    {
                        var vp = grid.getViewport();
                        setPageSize(vp.bottom-vp.top);
                    }
                    else
                        setPageSize(parseInt(pagesize));
                }
            });

            $("<span class='ui-icon ui-icon-lightbulb' />")
                    .click(function() { $(".slick-pager-settings-expanded").toggle() })
                    .appendTo($settings);

            $("<span class='ui-icon ui-icon-seek-first' />")
                    .click(gotoFirst)
                    .appendTo($nav);

            $("<span class='ui-icon ui-icon-seek-prev' />")
                    .click(gotoPrev)
                    .appendTo($nav);

            $("<span class='ui-icon ui-icon-seek-next' />")
                    .click(gotoNext)
                    .appendTo($nav);

            $("<span class='ui-icon ui-icon-seek-end' />")
                    .click(gotoLast)
                    .appendTo($nav);

            $container.find(".ui-icon")
                    .addClass("ui-state-default ui-corner-all")
                    .mouseover(function(e) {
                        $(e.target).addClass("ui-state-hover")
                    })
                    .mouseout(function(e) {
                        $(e.target).removeClass("ui-state-hover")
                    });

            $container.children().wrapAll("<div class='slick-pager' />");
        }


        function updatePager(pagingInfo)
        {
            var state = getNavState();

            $container.find(".slick-pager-nav span").removeClass("ui-state-disabled");
            if (!state.canGotoFirst) $container.find(".ui-icon-seek-first").addClass("ui-state-disabled");
            if (!state.canGotoLast) $container.find(".ui-icon-seek-end").addClass("ui-state-disabled");
            if (!state.canGotoNext) $container.find(".ui-icon-seek-next").addClass("ui-state-disabled");
            if (!state.canGotoPrev) $container.find(".ui-icon-seek-prev").addClass("ui-state-disabled");


            if (pagingInfo.pageSize == 0)
                $status.text("Mostrando los " + pagingInfo.totalRows + " registros");
            else
                $status.text("Mostrando pag. " + (pagingInfo.pageNum+1) + " de " + (Math.floor(pagingInfo.totalRows/pagingInfo.pageSize)+1));
        }



        init();
    }

    // Slick.Controls.Pager
    $.extend(true, window, { Slick: { Controls: { Pager: SlickGridPager }}});
})();

