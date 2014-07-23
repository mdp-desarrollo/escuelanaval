<div class="ui-widget">
<div class="ui-widget-header ui-corner-top"> Registro disciplinario</div>
<div class="ui-widget-content ui-corner-bottom"> 
<form action="main.php?controller=disciplina&action=guardardatos" method="post" id="config">
<p>
<label>Apellido Paterno:</label><input type="text" name="paterno" class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]['paterno']; ?>" ></input>
</p>
<p>
<label>Apellido Materno:</label><input type="text" name="materno"  class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]['materno']; ?>" ></input>
</p>
<p>
<label>Nombres:</label><input type="text" name="nombre" class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]["nombres"];?>"></input></p>
<p>
<label>Aparencia :</label><input type="text" name="nombre" class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]["nombres"];?>"></input></p>
<p>
<label>Nombres:</label><input type="text" name="nombre" class="text ui-widget-content ui-corner-all" value="<?php echo $c[0]["nombres"];?>"></input></p>


</form>
</div>
</div>