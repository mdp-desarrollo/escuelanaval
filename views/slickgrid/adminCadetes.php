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
}
#selec{
	left:300px;
	position:absolute;
	top:50px;	
	}
p label{
	width:80px;
	float:left;
}

</style>
</head>
<body>
<!-- titulo-->
<div class="ui-widget">
<div class="ui-widget-header ui-corner-top"><h3>Lista de Cadetes Gesti&oacute;n. <?php echo $_SESSION['gestion'];?></h3></div>
<div class="options-panel" style="width: 250px;"><b>Buscar: </b><input type=text id="txtSearch" style="width: 200px;"></div>
</div>
<div style="width: 100%; float: left;" >
<div class="ui-widget-header" style="width: 100%">Listado de Cadetes:
<span style="float: right" class="ui-icon ui-icon-search"
	title="Toggle search panel" onclick="toggleFilterRow()"></span></div>
<div id="myGrid" style="width: 100%; height: 420px;"></div>
<div id="pager" style="width: 100%; height: 20px;"></div>
</div>

<div id="inlineFilterPanel"
	style="display: none; background: #dddddd; padding: 3px; color: black;">
Buscar por Nombre: <input type="text" id="txtSearch2"></div>

<script language="JavaScript" src="views/lib/firebugx.js"></script>

<script language="JavaScript" src="views/lib/jquery-1.4.2.min.js"></script>
<script language="JavaScript"
	src="views/lib/jquery-ui-1.8.1.custom.min.js"></script>
<script language="JavaScript" src="views/lib/jquery.rule-1.0.1.1-min.js"></script>
<script language="JavaScript"
	src="views/lib/jquery.event.drag.custom.js"></script>

<script language="JavaScript" src="views/slick.editors.js"></script>
<script language="JavaScript" src="views/slick.grid.js"></script>
<script language="JavaScript" src="views/slick.model.js"></script>
<script language="JavaScript" src="views/slick.pager.js"></script>
<script language="JavaScript" src="views/slick.columnpicker.js"></script>

<script>
		var dataView;
		var grid;
		var data = [];
		var d;
		var selectedRowIds = [];
		var idCadete=0; // id del cadete
		var idCadete2;
		var columns = [
			{id:"sel", name:"#", field:"num", behavior:"select", cssClass:"cell-selection", width:40, cannotTriggerInsert:true, resizable:false, unselectable:true },
			{id:"codigo", name:"Codigo", field:"codigo", sortable:true},
			{id:"paterno", name:"Paterno", field:"paterno", width:100 , minWidth:120, cssClass:"cell-title", validator:requiredFieldValidator, sortable:true},
			{id:"materno", name:"Materno", field:"materno", width:100 , minWidth:120, cssClass:"cell-title", validator:requiredFieldValidator, sortable:true},
			{id:"name", name:"Nombres", field:"name", width:120 , minWidth:120, cssClass:"cell-title", validator:requiredFieldValidator, sortable:true},			
			{id:"curso", name:"Curso", field:"curso", width:90, resizable:true,  sortable:true}
		];

		var options = {
			editable: false,			
			enableCellNavigation: true,
			asyncEditorLoading: true,
			forceFitColumns: true,
			syncColumnCellResize : true,
            secondaryHeaderRowHeight: 25
		};

		var sortcol = "paterno";
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

			if (searchString != "" && item["name"].indexOf(searchString) == -1 && item["codigo"].indexOf(searchString)==-1&& item["paterno"].indexOf(searchString) == -1&& item["materno"].indexOf(searchString) == -1&& item["curso"].indexOf(searchString) == -1)
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
			$.getJSON("main.php?controller=cadete&action=lista_json2", function(dat){									
				$.each(dat, function(i,item){
				    d = (data[i] = {});					
					d["id"] = item.id;
	                d["num"] = i;
					d["name"] = item.nombres;
					d["paterno"] = item.paterno;
					d["materno"] = item.materno;
					d["codigo"] = item.codigo;
					d["curso"] = item.curso;
				  });
				dataView.beginUpdate();
				dataView.setItems(data);
				dataView.setFilter(myFilter);
				//dataView.setPagingOptions({pageSize:25});
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

			//grid.onAddNewRow = addItem;
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
			//haciendo pruebas

            
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

                // using native sort with comparer
                // preferred method but can be very slow in IE with huge datasets
                //dataView.sort(comparer,sortAsc);

                // using temporary Object.prototype.toString override
                // more limited and does lexicographic sort only by default, but can be much faster

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
			/*var h_runfilters = null;

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

*/
			// wire up the search textbox to apply the filter to the model
			$("#txtSearch,#txtSearch2").keyup(function(e) {
                Slick.GlobalEditorLock.cancelCurrentEdit();
				// clear on Esc
				if (e.which == 27)
					this.value = "";
				searchString = this.value.toUpperCase();//convetimos a mayusculas para la busqueda
				dataView.refresh();
			});
/*	$("#selec").click(function(){
	  var rows = [];
	  var idc;
	  var idx=[];
                var rows = grid.getselectedRows();
				if(rows.length>1){
					alert("Seleccione solo un cadete");
					}
					else{
                for (var i = 0, l = rows.length; i < l; i++) {
                    idc=rows[i];					
                }
				
				var idx = dataView.rows[idc].id+" "+dataView.rows[idc].name;
				
var val= new Array();
val[0]=idx;
window.returnValue = val;
window.close();

				}

	
	});

	*/		//haber		
$(".boton").button();	
$("#link").click(function(){
 var rows = [];
	  var idc;
	  var idx=[];
                var rows = grid.getselectedRows();
				if(rows.length>1){
					$('#dialog-message').dialog('open');
					}
					else{
						if(rows.length>0){
                for (var i = 0, l = rows.length; i < l; i++) {
                    idc=rows[i];					
                }				
				var idx = dataView.rows[idc].id+" "+dataView.rows[idc].name;				
				var val= new Array();
				val[1]=dataView.rows[idc].id;
				location.href="main.php?controller=cadete&action=descripcion&idc="+val[1];
						}
						else
						{
						$('#dialog-message').dialog('open');
						
						}
				}		
	});
$("#editar").click(function(){
	  var rows = [];
	  var idc;
	  var idx=[];
            var rows = grid.getselectedRows();
				if(rows.length>1){
					$('#dialog-message').dialog('open');
					}
			else{
						if(rows.length>0){
            for (var i = 0, l = rows.length; i < l; i++) {
                idc=rows[i];					
            }
				idCadete=idc;
				idCadete2=dataView.rows[idc].num;				
				var idx = dataView.rows[idc].id+" "+dataView.rows[idc].name;				
				var curso=dataView.rows[idc].curso;
				/*var val= new Array();
				var name=dataView.rows[idc].name;
				var paterno=dataView.rows[idc].paterno;
				var mat=dataView.rows[idc].materno;				
				//val[1]=dataView.rows[idc].id;
				*/

				$('#dialog-form').dialog({title: 'EDITAR REGISTRO'});
				$("#formulario input:first").val(dataView.rows[idc].codigo);
				$("#formulario input:gt(1)").val(dataView.rows[idc].materno);
				$("#formulario input:eq(1)").val(dataView.rows[idc].paterno);
				$("#formulario #nombres").val(dataView.rows[idc].name);
				$("option").each(function (index, domEle) {
    				// domEle == this
					if(curso==$(this).text()){
    					$(this).attr("selected", "selected"); 				
						}								
	 			 });
															 
				
				$('#dialog-form').dialog('open');
							
						}
						else
						{
						$('#dialog-message').dialog('open');	}
				}
	});
$("#eliminar").click(function(){
var rows = [];
	  var idc;
	  var idx=[];
            var rows = grid.getselectedRows();
				if(rows.length>1){
					$('#dialog-message').dialog('open');
					}
					else{
						if(rows.length>0){
            for (var i = 0, l = rows.length; i < l; i++) {
                idc=rows[i];					
            }
				
				var idx = dataView.rows[idc].id+" "+dataView.rows[idc].name;				
				var val= new Array();
				val[0]=dataView.rows[idc].name;
				val[1]=dataView.rows[idc].id;
				$("#dialog-confirm p").html("<span class='ui-icon ui-icon-alert' style='float:left; margin:0 7px 20px 0;'></span>Esta usted seguro de eliminar la falta: <br>"+dataView.rows[idc].name);
				$('#dialog-confirm').dialog('open');
						}
						else
						{
						$('#dialog-message').dialog('open');
						
						}
				}		
	});
var nombres = $("#nombres"),
paterno = $("#paterno"),
materno = $("#materno"),
codigo = $("#codigo"),
allFields = $([]).add(nombres).add(paterno).add(materno).add(codigo);
//formulairo modal
$("#dialog-form").dialog({
	autoOpen: false,
	height: 320,
	width: 350,
	modal: true,
	title: 'REGISTAR UN NUEVO CADETE',
	buttons: {
		'Guardar': function() {
				
			var bValid = true;								
			if (bValid) {
				codigo=$("#formulario input:first").val();	
				materno=$("#formulario input:gt(1)").val();
				paterno=$("#formulario input:eq(1)").val();
				nombres=$("#formulario #nombres").val();
				if(idCadete==0){
					$.post("main.php?controller=cadete&action=newCadete", { paterno: paterno, materno: materno, nombres: nombres, codigo: codigo },
							function(data){
					     		alert("Data Loaded: " + data);
					   		});
				}
				else
				{
					$.post("main.php?controller=cadete&action=updateCadete", { idc: idCadete, paterno: paterno, materno: materno, nombres: nombres, codigo: codigo },
							function(data){
			     				alert("Data Loaded: " + data);
			   				});
		   			
				}

				
				//dataView.rows[idCadete].paterno='<b>HOLA</b>';
				//alert(slick.getViewport());
				//dataView.refresh();				
				$(this).dialog('close'); 
				
			}
		},
		'Cancelar': function() {
			$(this).dialog('close');
		}
	},
	close: function() {
		allFields.val('').removeClass('ui-state-error');
	}
});
//Nueva Falta						
$('#dialog-link')
			.button()
			.click(function() {
				idCadete=0;
				$("option:first").attr("selected", "selected");
				$("#formulario input:first").val("");
				$("#formulario input:gt(1)").val("");
				$("#formulario input:eq(1)").val("");
				$("#formulario #nombres").val("");
				$("#dialog-form").attr('title','Nueva Falta');
				$('#dialog-form').dialog('open');
});			
//confirmacion para elimianr
$("#dialog-confirm").dialog({
			autoOpen: false,
			resizable: true,
			height:150,
			width:500,
			modal: true,
			buttons: {
				'Eliminar': function() {
					$(this).dialog('close');
				},
				'Cancelar': function() {
					$(this).dialog('close');
				}
			}
});

$("#dialog-message").dialog({
		    autoOpen: false,
			modal: true,
			buttons: {
				'Aceptar': function() {
					$(this).dialog('close');
				}
			}
});	
//boton
$("#selec button:first").button({
    icons: {
        primary: 'ui-icon-document'
    }
}).next().button({
    icons: {
        primary: 'ui-icon-pencil'
    }
}).next().button({
    icons: {
        primary: 'ui-icon-trash'
    }
});
function editar(){
alert("asdjsahdk");
}
		});

		</script>
<div id="selec">
<button id="dialog-link">Nuevo Cadete</button>
<button id="editar">Editar Cadete</button>
<button id="eliminar">Eliminar Cadete</button>
</div>
<div class="demo">
<div id="dialog-form" title="REGISTRO CADETES">
<form id="formulario"><p>
<label>Curso: </label>
<select name="curso" id="curso" class="text ui-widget-content ui-corner-all">
<option value="1">PRIMER</option>
<option value="2">SEGUNDO</option>
<option value="3">TERCER</option>
<option value="4">CUARTO</option>
<option value="5">QUINTO</option>
</select>
</p>
<p>
<label>Codigo</label><input type="text" name="codigo" id="codigo" class="text ui-widget-content ui-corner-all" size="40">
</p>
<p>
<label for="paterno">Paterno: </label><input type="text" name="paterno" id="paterno" value="aler" size="40" class="text ui-widget-content ui-corner-all" >
</p>
<p>
<label>Materno: </label><input type="text" name="materno" id="materno" class="text ui-widget-content ui-corner-all" size="40">
</p>
<P>
<label>Nombres: </label><input type="text" name="nombres" id="nombres" class="text ui-widget-content ui-corner-all" size="40" >
</p>
<P>
<label>Fotografia: </label><img src="" id="foto" name="foto" />
</P>
</form>
</div>
</div> 
<div id="dialog-message" title="Mensaje de error">
	<p>
		<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 50px 0;"></span>
Por favor seleccione un cadete, para poder realizar la acción.
	</p>
</div>          
</body>
</html>
