<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Lista de Proyectos</title>
<link rel="stylesheet" href="views/css/slick.grid.css" type="text/css"
	media="screen" charset="utf-8" />
<link rel="stylesheet" href="views/css/slick.pager.css" type="text/css"
	media="screen" charset="utf-8" />
<link rel="stylesheet"
	href="views/css/themes/<?php echo $_SESSION['theme'];?>/jquery-ui-1.8.1.custom.css" type="text/css"
	media="screen" charset="utf-8" />
<link rel="stylesheet" href="views/css/examples.css" type="text/css"
	media="screen" charset="utf-8" />
<link rel="stylesheet" href="views/css/slick.columnpicker.css"
	type="text/css" media="screen" charset="utf-8" />
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
</style>
</head>
<body>
<!-- titulo-->
<div class="ui-widget">
<div class="ui-widget-header ui-corner-top"><h3><span style="color: #666;">USUARIOS: </span>Lista de usuarios</h3></div>
<div class="options-panel" style="width: 250px;"><b>Buscar: </b><input type=text id="txtSearch" style="width: 200px;"></div>
</div>

<div style="width: 100%; float: left;" >
<div class="ui-widget-header" style="width: 100%"><b>Listado de Usuarios:</b>
<span style="float: right" class="ui-icon ui-icon-search"
	title="Toggle search panel" onclick="toggleFilterRow()"></span></div>
<div id="myGrid" style="width: 100%; height: 400px;"></div>
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
        var idProyecto;
		var dataView;
		var grid;
		var data = [];
		var selectedRowIds = [];

		var columns = [
			{id:"sel", name:"#", field:"num", behavior:"select", cssClass:"cell-selection", width:30, cannotTriggerInsert:true, resizable:false, unselectable:true },
			{id:"usuario", name:"Usuario", field:"usuario", editor:TextCellEditor, sortable:true},
			{id:"name", name:"Nombre", field:"name", width:200 , minWidth:120, cssClass:"cell-title", editor:TextCellEditor, validator:requiredFieldValidator, sortable:true},
			{id:"cargo", name:"Cargo", field:"cargo", minWidth:60, width:60, editor:DateCellEditor, sortable:true},

			
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

			if (searchString != "" && item["usuario"].indexOf(searchString) == -1 && item["name"].indexOf(searchString)==-1 )
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
			$.getJSON("main.php?controller=usuario&action=usuarios_json", function(dat){									
				$.each(dat, function(i,item){
				    var d = (data[i] = {});					
					d["id"] = item.idUsuario;
	                d["num"] = i+1;
					d["name"] = item.nombre;
					d["usuario"]='<b>'+item.usuario+'</b>';				
					d["cargo"]=item.cargo;
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

                // using native sort with comparer
                // preferred method but can be very slow in IE with huge datasets
                //dataView.sort(comparer,sortAsc);

                // using temporary Object.prototype.toString override
                // more limited and does lexicographic sort only by default, but can be much faster

                var percentCompleteValueFn = function() {
                    var val = this["interno"];
                    if (val < 10)
                        return "00000" + val;
                    else if (val < 100)
                        return "0000" + val;
					else if (val < 1000)
                        return "000" + val;
					else if (val < 10000)
                        return "00" + val;
					else if (val < 100000)
                        return "0" + val;
                    else
                        return val;
                }

                // use numeric sort of % and lexicographic for everything else
                dataView.fastSort((sortcol=="interno")?percentCompleteValueFn:sortcol,sortAsc);
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
			// wire up the search textbox to apply the filter to the model
			$("#txtSearch,#txtSearch2").keyup(function(e) {
                Slick.GlobalEditorLock.cancelCurrentEdit();
				// clear on Esc
				if (e.which == 27)
					this.value = "";
				searchString = this.value;//convetimos a mayusculas para la busqueda
				dataView.refresh();
			});
//formulario modal
			$("#formulario").dialog({
				autoOpen: false,
				height: 500,
				width: 600,
				modal: true,
				buttons: {
					'Registrar': function() {
						var bValid = true;
						allFields.removeClass('ui-state-error');									
						if (bValid) {
							
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
									idp=dataView.rows[idc].id;
									location.href="main.php?controller=usuario&action=editar&idUsuario="+idp;						
									}
									else
									{
									$('#dialog-message').dialog('open');	
									}
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
							idProyecto=dataView.rows[idc].id;
							$('#dialog-confirm :input:eq(0)').val(dataView.rows[idc].id);

							$("#dialog-confirm p").html("<span class='ui-icon ui-icon-alert' style='float:left; margin:0 7px 20px 0;'></span>Esta usted seguro de eliminar el Usuario: <br>"+dataView.rows[idc].name);
							$('#dialog-confirm').dialog('open');
									}
									else
									{
									$('#dialog-message').dialog('open');
									
									}
							}		
				});



$('#nuevo').click(function() {
location.href="main.php?controller=usuario&action=nuevoUsuario";				
});			
//confirmacion para elimianr
// $("#dialog-confirm").dialog({
// 			autoOpen: false,
// 			resizable: true,
// 			height:150,
// 			width:500,
// 			modal: true,
// 			buttons: {
// 				'Eliminar': function() {
// 					$(this).dialog('close');
// 					location.href="main.php?controller=usuario&action=eliminar&idu="+idUsuario;
// 				},
// 				'Cancelar': function() {
// 					$(this).dialog('close');
// 				}
// 			}
// });

			$("#dialog-confirm").dialog({
    autoOpen: false,
	modal: true,
	height:150,
	width:500,
	buttons: {
		'Eliminar Usuario': function() {
			$('#formEliminar').submit();
		},
		'Cancelar': function() {
			$(this).dialog('close');
		}
	}
});



//mensaje de aceptacion
$("#dialog-message").dialog({
		    autoOpen: false,
			modal: true,
			buttons: {
				'Aceptar': function() {
					$(this).dialog('close');
				}
			}
		});

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
			
});
</script>
<div id="selec">
<button id="nuevo" title="Crear un nuevo Usuario">Nuevo Usuario</button>
<button id="editar" title="Editar datos del Usuario">Editar Usuario</button>
<button id="eliminar" title="Eliminar Usuario">Eliminar Usuario</button>
</div>       
<div id="dialog-confirm" title="Eliminar un Usuario ?">
	<form action="main.php?controller=usuario&action=eliminarUsuario" method="post" id="formEliminar">
		<input type="hidden" id="idUsuario" name="idUsuario">
		<p><span class="ui-icon ui-icon-help" style="float:left; margin:0 7px 20px 0;"></span></p>
	</form>
</div>

<div id="dialog-message" title="Mensaje de error">
	<p>
		<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 50px 0;"></span>
Por favor seleccione un usuario, para poder realizar acción
	</p>
</div>
</body>
</html>
