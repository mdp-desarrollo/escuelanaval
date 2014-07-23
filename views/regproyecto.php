<table width="661" border="0">
  <tr>
    <td width="65">ID</td>
    <td width="65">Codigo</td>
    <td width="66">Entidad</td>
    <td width="171">Nombre del Proyecto</td>
    <td width="90">Financiamiento</td>
    <td width="130">Tipo de Cambio</td>
    <td width="99">Meta</td>
  </tr>
  <?php
	while($item = $listado->fetch())
	{
	?>
  <tr>
    <td><?php echo $item['id_proyecto']?></td>
    <td><?php echo $item['proyCodigo']?></td>
    <td><?php echo $item['entID']?></td>
    <td><?php echo $item['proyNombre']?></td>
    <td><?php echo $item['proyFinanciamiento']?></td>
    <td><?php echo $item['proyTipoCambio']?></td>
    <td><?php echo $item['proyMeta']?></td>
  </tr>
  <?php
	}
	?>
</table>



<form id="form1" name="form1" method="post" action="index.php?controlador=regproyecto&accion=ingresarItem">

    <p>&nbsp;</p>
    <table>
    <tr>
    <td colspan="2" align="center">DATOS DEL PROYECTO</td>
    </tr>
    
    <tr>
    <td>Codigo:</td>
    <td><select name="select6">
    </select>
      <select name="">
      </select>
        <select name="select4" id="select4">
        </select>
     
          <select name="select5" id="select5">
          </select>
       
          <select name="select" id="select">
          </select>
       
          <select name="select2" id="select2">
          </select>
        
          <select name="select3" id="select3">
          </select>
          </td>
    </tr>
    <tr>
      <td>Codigo:</td>
      <td><label>
        <input type="text" name="txtproyCodigo" id="txtproyCodigo" />
      </label></td>
    </tr>
    <tr>
    <td>Entidad:</td>
    <td>

      <select name="cbentID" id="cbentID">
      <?php
      while($itemEnt = $listadoEntidad->fetch())
      {
      ?>
      <option value="<?php echo $itemEnt['entID']?>"> <?php echo $itemEnt['entNombre']?> </option>
    
      <?php
      }
       ?>
      </select>
    </label></td>
    </tr>
    <tr>
    <td>Nombre del Proyecto:</td>
    <td><input type="text" id="txtproyNombre" name="txtproyNombre" ></td>
    </tr>
    
    <tr>
    <td>Financiamiento:</td>
    <td><input type="text" id="txtproyFinanciamiento" name="txtproyFinanciamiento"></td>
    </tr>
    
    <tr>
    <td>Tipo de Cambio:</td>
    <td><input type="text" id="txtproyTipoCambio" name="txtproyTipoCambio"></td>
    </tr>
    
    <tr>
    <td>Meta:</td>
    <td><input type="text" id="txtproyMeta" name="txtproyMeta" ></td>
    </tr>
    
    <tr>
      
      <td colspan="2" align="center">
        <input type="reset" value="Limpiar" >
        <input type="submit" id="sendpro" value="Aceptar" >
        <input type="button" value="Cancelar" id="cancelpro" ></td>
    </tr>
    </table>
</form>


