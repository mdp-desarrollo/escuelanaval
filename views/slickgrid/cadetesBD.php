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
label { width: 150px; float: left; font-family:Arial, Helvetica, sans-serif;
			font-size:11px;
			text-align:right; 
		}
label.error { float: none; color: red; padding-left: .5em; vertical-align: top; }
</style>
</head>
<body>
<!-- titulo-->
<div class="ui-widget">
<div class="ui-widget-header ui-corner-top"><h3><span style="color: #333; font-size:14px;">CADETES QUE FUERON DADOS DE BAJA: </span>Todas las Gestiones </h3></div>
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
		var selectedRowIds = [];

		var columns = [
			{id:"sel", name:"#", field:"num", behavior:"select", cssClass:"cell-selection", width:40, cannotTriggerInsert:true, resizable:false, unselectable:true },
			{id:"codigo", name:"Codigo", field:"codigo", width:40,editor:TextCellEditor, sortable:true},
			{id:"name", name:"Nombre completo", field:"name", width:160 , minWidth:120, cssClass:"cell-title", editor:TextCellEditor, validator:requiredFieldValidator, sortable:true},			
			{id:"curso", name:"Curso", field:"curso", width:40, resizable:true,  sortable:true},
			{id:"falta", name:"Falta Cometida", field:"falta", width:250, resizable:true,  sortable:true},
			{id:"clase", name:"Clase", field:"clase", width:20, resizable:true,  sortable:true},
			{id:"numero", name:"N&uacute;mero", field:"numero", width:40, resizable:true,  sortable:true},
			{id:"gestion", name:"Gesti&oacute;n", field:"gestion", width:40, resizable:true,  sortable:true},
			{id:"fecha", name:"Fecha Registro", field:"fecha", width:50, resizable:true,  sortable:true}
		];

		var options = {
			editable: false,
			enableAddRow: false,
			enableCellNavigation: true,
			asyncEditorLoading: true,
			forceFitColumns: true,
            secondaryHeaderRowHeight: 30,
            
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
			$.getJSON("main.php?controller=cadete&action=listaBajas_json", function(dat){									
				$.each(dat, function(i,item){
				    var d = (data[i] = {});					
					d["id"] = item.idBaja;
	                d["num"] = i+1;
					d["name"] = item.nombre;
					d["codigo"] = item.codigo;
					d["curso"] = item.curso;
					d["falta"] = item.falta;
					d["clase"] = item.clase;
					d["fecha"] = item.fechaIngreso;
					d["idCadete"]=item.idCadete;
					d["idRegistro"]=item.idRegistro;
					d["idFalta"]=item.idRegistro;
					d["numero"]=item.numero;
					d["gestion"]=item.gestion;
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
        primary: 'ui-icon-copy'
    }
}).next().button({
    icons: {
        primary: 'ui-icon-circle-arrow-s'
    }
}).next().button({
    icons: {
        primary: 'ui-icon-circle-minus'
    }
}).next().button({
    icons: {
        primary: 'ui-icon-circle-close'
    }
});
//fijar castigo
$("#dialog-fijarCastigo").dialog({
    autoOpen: false,
	modal: true,
	height:480,
	title: 'FIJAR CASTIGO:',
	width:650,
	buttons: {
		'Fijar Castigo': function() {
			$(this).dialog('close');
		},
		'Cancelar': function() {
			$(this).dialog('close');
		}
	}
});
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
				//location.href="main.php?controller=cadete&action=descripcion&idc="+val[1];
						$('#dialog-fijarCastigo :input:eq(0)').val(dataView.rows[idc].idRegistro);
						$('#dialog-fijarCastigo :input:eq(1)').val(dataView.rows[idc].idFalta);
						var input=$('#dialog-fijarCastigo :input:eq(2)');
						input.val(dataView.rows[idc].name);
						var f = new Date();
						var dia=f.getDate();						
						var mes=f.getMonth()+1;
						var anio=f.getFullYear();
						if(dia<10){
							dia='0'+dia;
						}
						if(mes<10){
							mes='0'+mes;
						}
						var hoy=dia+'/'+mes+'/'+anio;
						$('#dialog-fijarCastigo :input:eq(3)').val(hoy);
						$('#dialog-fijarCastigo :input:eq(6)').val(dataView.rows[idc].falta);
						$('#dialog-fijarCastigo :input:eq(8)').val(dataView.rows[idc].clase);
						$('#dialog-fijarCastigo').dialog('open');
						}
						else
						{
						$('#dialog-message').dialog('open');						
						}
				}
		});
$("#dialog-darBaja").dialog({
    autoOpen: false,
	modal: true,
	height:300,
	width:650,
	buttons: {
		'DAR DE BAJA': function() {
			$('#formDarBaja').submit();
		},
		'CANCELAR': function() {
			$(this).dialog('close');
		}
	}
});
$("#baja").click(function(){
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
				//location.href="main.php?controller=cadete&action=descripcion&idc="+val[1];
						$('#dialog-darBaja :input:eq(0)').val(dataView.rows[idc].id);
						$('#dialog-darBaja :input:eq(1)').val(dataView.rows[idc].idRegistro);
						var curso=dataView.rows[idc].curso.split("-");
						$('#dialog-darBaja #data').html('<p>Cadete: '+dataView.rows[idc].name+'</p>'+'<p>Curso: '+curso[1]+'</p>'+'<p>Falta: '+dataView.rows[idc].falta+'</p>'+'<p>Clase: '+dataView.rows[idc].clase+'</p>');
						$('#dialog-darBaja').dialog('open');
						}
						else
						{
						$('#dialog-message').dialog('open');
						}
				}
		});
//ANULAR FALTA
$("#dialog-anularFalta").dialog({
    autoOpen: false,
	modal: true,
	height:250,
	width:500,
	buttons: {
		'Anular Falta': function() {
			$('#formAnularFalta').submit();
		},
		'Cancelar': function() {
			$(this).dialog('close');
		}
	}
});
$("#alta").click(function(){
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
				//location.href="main.php?controller=cadete&action=descripcion&idc="+val[1];
						$('#dialog-anularFalta :input:eq(0)').val(dataView.rows[idc].id);
						$('#dialog-anularFalta :input:eq(1)').val(dataView.rows[idc].idRegistro);
						var curso=dataView.rows[idc].curso.split("-");
						$('#dialog-anularFalta #datos').html('<p><b>Cadete: </b>'+dataView.rows[idc].name+'</p><p><b>Curso: </b>'+curso[1]+'</p><p><b>Falta: </b>'+dataView.rows[idc].falta+'</p><p><b>Clase: </b>'+dataView.rows[idc].clase);
						$('#dialog-anularFalta').dialog('open');
						}
						else
						{
						$('#dialog-message').dialog('open');
						}
				}
});
		});

		</script>
<div id="selec">
<button id="link">Reintegrarse</button>



</div> 
<div id="dialog-message" title="Mensaje de error">
	<p>
		<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 50px 0;"></span>
Por favor seleccione un cadete, para poder realizar la acción.
	</p>
</div> 
<!-- fijar castigo al cadete -->
<div id="dialog-fijarCastigo">
	<form action="main.php?controller=cadete&action=fijarCastigo" method="post">
	    <input type="hidden" value="<?php echo $idc;?>" id="idc" name="idc">		
        <input type="hidden" value="" id="idf" name="idf">
        <p>
        <label for="fecha">Nombre del Cadete:</label><input type="text" size="40" name="nombre" id="nombre" class="text ui-widget-content ui-corner-all">
        </p>
		<p>
        <label for="fecha">Fecha:</label><input type="text" name="fecha" id="fecha" class="text ui-widget-content ui-corner-all">
        </p>
        <p>
        <label for="parte">Numero de parte:</label>
		<input type="text" name="parte" id="parte" value="" class="text ui-widget-content ui-corner-all" />
        </p>
        <div class="ui-widget">
		<label for="tags">Sancionado por: </label>
		<input id="tags" name="tags" class="text ui-widget-content ui-corner-all" size="60"  />
		</div>
        <p>
        <label for="falta">Falta: </label>
		<input type="text" name="falta" id="falta" style="width:450px;" class="text ui-widget-content ui-corner-all" disabled="disabled" />
        </p>
         <p>
        <label for="reincidencias">Reincidencia(R):</label>
		<input type="text" name="reincidencias" id="reincidencias" size="6" class="text ui-widget-content ui-corner-all"  /> Clase:<input type="text" name="clase" id="clase" size="6" class="text ui-widget-content ui-corner-all" disabled />
        </p>
        <table>
        <tr>
        <td>
        <p>
        <label for="puntosD">Puntos Demerito:</label>
        <input type="text" name="puntosD" id="puntosD" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Simple (LI):</label>
        <input type="text" name="asli" id="asli" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  <p>
        <label for="puntosD">Trabajos Tiempo Extra:</label>
        <input type="text" name="tte" id="tte" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Simple (ED):</label>
        <input type="text" name="ased" id="ased" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  <p>
        <label for="puntosD">Turnos sin Salida:</label>
        <input type="text" name="tss" id="tss" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (CS):</label>
        <input type="text" name="ascs" id="ascs" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        <tr><td>
  <p>
        <label for="puntosD">Perdida de Vacación:</label>
        <input type="text" name="pvac" id="pvac" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td><td>
        <p>
        <label for="puntosD">Arresto Severo (SD):</label>
        <input type="text" name="assd" id="assd" size="6" class="text ui-widget-content ui-corner-all"  />
        </p>
        </td></tr>
        </table>        
	</form>
</div>
<div id="dialog-darBaja" title="BAJA DISCIPLINARIA">
<form action="main.php?controller=cadete&action=darBaja" method="post" id="formDarBaja">
		<input type="hidden" id="idconsejo" name="idconsejo">
		<input type="hidden" id="idregistro" name="idregistro">
		<div id="data">
		</div>
		<p>
        OBSERVACIONES:<textarea  name="obs" id="obs" cols="30"  rows="1" class="text ui-widget-content ui-corner-all"></textarea>     
        </p><hr/>
        <p>RECUERDE QUE EL CADETE NO PUEDE SER REINCORPORADO POR NINGUN MOTIVO A LA INSTITUCION.</p>  
</form>
</div>        
<div id="dialog-anularFalta" title="ANULAR LA FALTA COMETIDA">
<form action="main.php?controller=cadete&action=anularFalta" method="post" id="formAnularFalta">
		<input type="hidden" id="idConsejo" name="idConsejo">
		<input type="hidden" id="idRegistro" name="idRegistro">
		<div id="datos"></div><hr/>
		<p>EL CABALLERO CADETE VOLVERA A ESTAR EN LA LISTA.</p>
</form>
</div>
</body>
</html>
