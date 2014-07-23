<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet" href="views/css/slick.grid.css" type="text/css"	media="screen" charset="utf-8" />
<link rel="stylesheet" href="views/css/slick.pager.css" type="text/css"	media="screen" charset="utf-8" />
<link rel="stylesheet" href="views/css/themes/<?php echo $_SESSION['theme'];?>/jquery-ui-1.8.1.custom.css" type="text/css"
	media="screen" charset="utf-8" />
<link rel="stylesheet" href="views/css/examples.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="views/css/slick.columnpicker.css" type="text/css" media="screen" charset="utf-8" />

<style>
img {
	border: none;
}

.cell-title {
	color: #000;
}

.cell-effort-driven {
	text-align: center;
}

.cell-selection {
	border-right-color: silver;
	border-right-style: solid;
	background-color: #F0F0F0;
	color: gray;
	text-align: right;
	font-size: 10px;
}

.slick-row.selected .cell-selection {
	background-color: transparent;
	/* show default selected row background */
}

a {
	border: none;
	text-decoration: none;
}

a:hover {
	text-decoration: none;
/*	border-bottom: dashed 1px;*/
	font-weight: bold;
/**/
label, input { display:block; }
		input.text { margin-bottom:10px; width:80%;  padding: .2em; }
		select.text { margin-bottom:9px; width:80%;  padding: .1em; }
		fieldset { padding:0; border:0; margin-top:25px; }
		h1 { font-size: 1.2em; margin: .6em 0; }
		#users-contain,#metas { width: 100%; margin: 10px 0; }
		#users-contain,#metas table { margin: 1em 0; border-collapse: collapse; width: 100%; }
		#users-contain,#metas table td, #users-contain,#metas table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
		.ui-dialog .ui-state-error { padding: .3em; }
		.validateTips { border: 1px solid transparent; padding: 0.3em; }
		#dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
		#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
		table.descripcion tr{
}
</style>
</head>
<body>
<div class="ui-widget">
 <div class="ui-state-highlight ui-corner-all" style="margin:5px; padding: 0 .2em;"> 
 <p><span class="ui-icon ui-icon-folder-open" style="float: left;"></span>
 <strong><?php echo $nombre ." / COD: ".$codigo ." / Curso: ".$curso." año"; ?></strong> </p>
 </div>
</div>        
<div id="tabs">
<ul>
	<li><a href="#tabs-1">Partes de Sancion(<?php echo $_SESSION['gestion']?>)</a></li>
	<li><a href="#tabs-2">Registrar PS</a></li>
   	<li><a href="#tabs-3">Meta mes</a></li>
   	<li><a href="#tabs-4">Problemas</a></li>
</ul>
<div id="tabs-1">

<div id="metas" class="ui-widget">
<table id="descripcion" class="ui-widget ui-widget-content" >
<thead>
<tr  class="ui-widget-header " ><th>fecha</th><th>Falta Cometida</th><th>Sancionante</th><th>Nº Parte</th><th>Clase</th><th>Reinc.</th><th>PDD</th><th>TSS</th><th>TTE</th></tr>
</thead>
<tbody>
<?php
$pd=0;
$tss=0;
$tte=0;
foreach($faltas as $f){
?>
<tr>
<td><?php echo $f->fechaFalta; ?></td>
<td><?php echo $f->falta; ?></td>
<td><?php echo $f->sancionante; ?></td>
<td><?php echo $f->numeroParte; ?></td>
<td><?php echo $f->clase; ?></td>
<td><?php echo $f->reincidencia; ?></td>
<td><?php echo $f->partesDemerito; ?></td>
<td><?php echo $f->tss; ?></td>
<td><?php echo $f->tte; ?></td>
</tr>
<?php	
$pd+=$f->partesDemerito;
$tss+=$f->tss;
$tee+=$f->tte;
}
?>
</tbody>
<tfoot>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><?php echo $pd; ?></td>
<td><?php echo $tss; ?></td>
<td><?php echo $tte; ?></td>
</tr>
</tfoot>
</table>
</div>

</div>
<!--meta gestion-->
<div id="tabs-2" >

<!-- titulo-->
<div id="faltas">
<div class="ui-widget">
<div class="options-panel" style="width: 250px;"><b>Buscar: </b><input type=text id="txtSearch" style="width: 200px;"></div>
</div>
<div style="width: 100%; float: left;" >
<div class="ui-widget-header" style="width: 100%">Listado de Cadetes:
<span style="float: right" class="ui-icon ui-icon-search"
	title="Toggle search panel" onclick="toggleFilterRow()"></span></div>
<div id="myGrid" style="width: 500px; height: 300px;"></div>
<div id="pager" style="width: 100%; height: 20px;"></div>
</div>

<div id="inlineFilterPanel"
	style="display: none; background: #dddddd; padding: 3px; color: black;">
Buscar por Nombre: <input type="text" id="txtSearch2"></div>
</div>

<a href="#" id="dialog_link" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-calendar"></span>Nueva Meta</a>
<p class="validateTips2"></p>
<div id="metas" class="ui-widget">
<table id="users" class="ui-widget ui-widget-content">
<thead>
<tr class="ui-widget-header ">
<th>Gestion</th><th>Presupuesto(Bs)</th><th>Base(%)</th><th>Meta(<?php echo $unidad; ?>)</th>
</tr>
</thead>
<tbody>
<?php 
$i=1;
//while ( $m = $metas->fetch ( PDO::FETCH_OBJ ) ) {
?>

<tr>
<td><?php	echo $m->gestion; ?></td>
<td><?php	echo $m->presupuesto; ?></td>
<td><?php	echo $m->base; ?></td>
<td><?php	echo $m->meta; ?></td>
</tr>
<?php
$i++;
//}
?>
</tbody>
</table>

</div>
<div class="demo">

<div id="dialog-form" title="Meta Gestion">
<p class="validateTips"></p>

    <input type="hidden" value="<?php echo $idProyecto;?>" id="idp">

	<form>
		<label for="gestion">Gestion:</label><select name="gestion" id="gestion" class="text ui-widget-content ui-corner-all">
        <?php 
		$actual=date("Y");
		for($i=0;$i<sizeof($anios);$i++){ 
		if($actual==$anios[$i]){	
		?>
<option value="<?php echo $anios[$i];?>" selected="SELECTED"><?php echo $anios[$i];?></option>	
<?php }
else{
?>
<option value="<?php echo $anios[$i];?>"><?php echo $anios[$i];?></option>	
<?php
}
 }?>
        </select><br/>
        <label for="presupuesto">Presupuesto(Bs):</label>
		<input type="text" name="presupuesto" id="presupuesto" class="text ui-widget-content ui-corner-all" />
		<label for="base">Linea Base(%):</label>
		<input type="text" name="base" id="base" value="" class="text ui-widget-content ui-corner-all" />
		<label for="meta">Meta (<?php echo $unidad;?>):</label>
		<input type="text" name="meta" id="meta" value="" class="text ui-widget-content ui-corner-all" />
	</form>
</div>
</div><!-- End demo -->
</div>

<div id="tabs-3">
<p>
Listar mestas por </p>
</div>
<div id="tabs-4">
<p>
</p>
</div>

</div>


<script language="JavaScript" src="views/lib/firebugx.js"></script>
<script language="JavaScript" src="views/lib/jquery-1.4.2.min.js"></script>
<script language="JavaScript" src="views/lib/jquery-ui-1.8.1.custom.min.js"></script>
<script language="JavaScript" src="views/lib/jquery.rule-1.0.1.1-min.js"></script>
<script language="JavaScript" src="views/lib/jquery.event.drag.custom.js"></script>

<script type="text/javascript" src="views/ui/i18n/jquery.ui.datepicker-es.js"></script>
<script type="text/javascript" src="views/js/jquery.tablesorter.min.js"></script>

<script language="JavaScript" src="views/slick.editors.js"></script>
<script language="JavaScript" src="views/slick.grid.js"></script>
<script language="JavaScript" src="views/slick.model.js"></script>
<script language="JavaScript" src="views/slick.pager.js"></script>
<script language="JavaScript" src="views/slick.columnpicker.js"></script>

<script>
		var dataView;
		var grid;
		var data = [];
		var selectedRowIds = [];

		var columns = [
			{id:"sel", name:"#", field:"num", behavior:"select", cssClass:"cell-selection", width:40, cannotTriggerInsert:true, resizable:false, unselectable:true },
			{id:"codigo", name:"Codigo", field:"codigo", editor:TextCellEditor, sortable:true},
			{id:"name", name:"Nombre completo", field:"name", width:300 , minWidth:120, cssClass:"cell-title", editor:TextCellEditor, validator:requiredFieldValidator, sortable:true},			
			{id:"Curso", name:"Curso", field:"curso", width:90, resizable:true,  sortable:true},
			{id:"opciones", name:"Opciones", field:"opciones", minWidth:60, width:60, editor:DateCellEditor, sortable:false},
			
		];

		var options = {
			editable: false,
			
			enableCellNavigation: true,
			asyncEditorLoading: true,
			forceFitColumns: true,
            secondaryHeaderRowHeight: 25
		};

		var sortcol = "name";
		var sortdir = 1;
		var percentCompleteThreshold = 0;
		var searchString = "";

		function requiredFieldValidator(value) {
			if (value == null || value == undefined || !value.length)
				return {valid:false, msg:"This is a required field"};
			else
				return {valid:true, msg:null};
		}

		function myFilter(item) {
			if (item["percentComplete"] < percentCompleteThreshold)
				return false;

			if (searchString != "" && item["name"].indexOf(searchString) == -1 && item["codigo"].indexOf(searchString)==-1)
				return false;

			return true;
		}

		function percentCompleteSort(a,b) {
			return a["percentComplete"] - b["percentComplete"];
		}

		function comparer(a,b) {
			var x = a[sortcol], y = b[sortcol];
			return (x == y ? 0 : (x > y ? 1 : -1));
		}		

		function addItem(columnDef,value) {
			var item = {"id": "new_" + (Math.round(Math.random()*10000)), "title":"New task", "duration":"1 day", "percentComplete":0, "start":"01/01/2009", "finish":"01/01/2009", "effortDriven":false};
			item[columnDef.field] = value;
			dataView.addItem(item);
		}


        function toggleFilterRow() {
            if ($(grid.getSecondaryHeaderRow()).is(":visible"))
                grid.hideSecondaryHeaderRow();
            else
                grid.showSecondaryHeaderRow();
        }


        $(".grid-header .ui-icon")
            .addClass("ui-state-default ui-corner-all")
            .mouseover(function(e) {
                $(e.target).addClass("ui-state-hover")
            })
            .mouseout(function(e) {
                $(e.target).removeClass("ui-state-hover")
            });

		$(function()
		{
			//Otra forma de conseguir los datos	
			$.getJSON("main.php?controller=cadete&action=lista_json", function(dat){									
				$.each(dat, function(i,item){
				    var d = (data[i] = {});					
					d["id"] = item.id;
	                d["num"] = i+1;
					d["name"] = item.nombre;
					d["codigo"] = item.codigo;
					d["curso"] = item.curso;
					d["opciones"] = "<a href='main.php?controller=cadete&action=descripcion&idc="+ item.id + "'><img src='views/images/kedit.png' title='Registrar Parte de Sanci&oacute;n'></a><a href='#' id='ver' title='"+ item.id + "'>Haber?</a>";


				  });
				dataView.beginUpdate();
				dataView.setItems(data);
				dataView.setFilter(myFilter);
				dataView.endUpdate();				
			});
			dataView = new Slick.Data.DataView();
			grid = new Slick.Grid($("#myGrid"), dataView.rows, columns, options);
			var pager = new Slick.Controls.Pager(dataView, grid, $("#pager"));
			var columnpicker = new Slick.Controls.ColumnPicker(columns, grid, options);

            // move the filter panel defined in a hidden div into an inline secondary grid header row
            $("#inlineFilterPanel")
                .appendTo(grid.getSecondaryHeaderRow())
                .show();

			grid.onAddNewRow = addItem;
			grid.onKeyDown = function(e) {
                // select all rows on ctrl-a
                if (e.which != 65 || !e.ctrlKey)
                    return false;

                var rows = [];
                selectedRowIds = [];

                for (var i = 0; i < dataView.rows.length; i++) {
                    rows.push(i);
                    selectedRowIds.push(dataView.rows[i].id);
                }

                grid.setselectedRows(rows);

                return true;
            };

			grid.onselectedRowsChanged = function() {
                selectedRowIds = [];
                var rows = grid.getselectedRows();
                for (var i = 0, l = rows.length; i < l; i++) {
                    selectedRowIds.push(rows[i].id);
                }
            };

			grid.onSort = function(sortCol, sortAsc) {
                sortdir = sortAsc ? 1 : -1;
                sortcol = sortCol.field;
                var percentCompleteValueFn = function() {
                    var val = this["percentComplete"];
                    if (val < 10)
                        return "00" + val;
                    else if (val < 100)
                        return "0" + val;
                    else
                        return val;
                }

                // use numeric sort of % and lexicographic for everything else
                dataView.fastSort((sortcol=="percentComplete")?percentCompleteValueFn:sortcol,sortAsc);
            };

			// wire up model events to drive the grid
			dataView.onRowCountChanged.subscribe(function(args) {
				grid.updateRowCount();
			});

			dataView.onRowsChanged.subscribe(function(rows) {
				grid.removeRows(rows);
				grid.render();

				if (selectedRowIds.length > 0)
				{
					// since how the original data maps onto rows has changed,
					// the selected rows in the grid need to be updated
					var rows = [];
					for (var i = 0; i < selectedRowIds.length; i++)
					{
						var idx = dataView.getRowById(selectedRowIds[i]);
						if (idx != undefined)
							rows.push(idx);
					}

					grid.setselectedRows(rows);
				}
			});
			dataView.onPagingInfoChanged.subscribe(function(pagingInfo) {
				var isLastPage = pagingInfo.pageSize*(pagingInfo.pageNum+1)-1 >= pagingInfo.totalRows;
				grid.setOptions({enableAddRow:isLastPage||pagingInfo.pageSize==0});
			});
			var h_runfilters = null;
			// wire up the slider to apply the filter to the model
			$("#pcSlider,#pcSlider2").slider({
				"range":	"min",
				"slide":	function(event,ui) {
                    Slick.GlobalEditorLock.cancelCurrentEdit();

					if (percentCompleteThreshold != ui.value)
					{
						window.clearTimeout(h_runfilters);
						h_runfilters = window.setTimeout(dataView.refresh, 10);
						percentCompleteThreshold = ui.value;
					}
				}
			});
			// wire up the search textbox to apply the filter to the model
			$("#txtSearch,#txtSearch2").keyup(function(e) {
                Slick.GlobalEditorLock.cancelCurrentEdit();
				// clear on Esc
				if (e.which == 27)
					this.value = "";
				searchString = this.value.toUpperCase();//convetimos a mayusculas para la busqueda
				dataView.refresh();
			});		
		$("#tabs").tabs();
		$("#metas table tbody tr:even").addClass("even");
		$(".boton").button();
		//formulario modal para meta gestion
		$("#dialog").dialog("destroy");					
		$("#faltas").dialog({
    		autoOpen: false,
			height: 400,
			width: 550,
			modal: true,
			buttons: {
			'Seleccionar': function() {
			var rows = [];
            var idc;
    	    var idx=[];
            var rows = grid.getselectedRows();
			if(rows.length>1&&rows.length==0){	alert("Seleccione solo un cadete");	}
			else{
                for (var i = 0, l = rows.length; i < l; i++) {
                    idc=rows[i];					
                }
				var idx = dataView.rows[idc].id+" "+dataView.rows[idc].name;
				alert(idx);
				$(this).dialog('close'); 
				}
					
				},
			'Cancelar': function() {
					$(this).dialog('close');
				}
			},
			close: function() {

			}
		});
		//Abrir el formulario modal
		$('#dialog_link')
			.button()
			.click(function() {
				$('#faltas').dialog('open');
			});
//fin ofrmulario
    /*    var inicio=$('#finicio').val();
		var pickerOpts1 = {
//			dateFormat: "dd/mm/2010",
			hideIfNoPrevNext:true,
		defaultDate: inicio
		};
	/*	$("#fecha_inicio").datepicker(pickerOpts1,$.datepicker.regional['es']);
		var final=$('#ffinal').val();
		var pickerOpts2 = {
		defaultDate: final
		};
	//	$("#fecha_final").datepicker(pickerOpts2,$.datepicker.regional['es']);
		*/$("#descripcion").tablesorter(); 
			
		})

		</script>
</body>
</html>
